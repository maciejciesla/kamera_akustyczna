#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>

#define NUMBER_OF_SAMPLES 1024
#define TAU_RANGE  45					// Oblicz korelację tylko dla zakresu od -45 do +45 próbek przesunięcia 

#include <math.h>

#define distance_soundsource_OX				170						// odległość od osi OX głośnika [mm]
#define distance_soundsource_OX_2			distance_soundsource_OX*distance_soundsource_OX

#define distance_microphone_microphone		250						// [mm]
#define distance_microphone_microphone_2 	distance_microphone_microphone*distance_microphone_microphone
#define distance_microphone_microphone_3 	distance_microphone_microphone*distance_microphone_microphone_2
#define predkosc_dzwieku 					340000					// [mm/s]
#define inv_ADC_freq 						2048.0/125000000.0		// [s/probki] 


void usun_skladowa_stala(int16_t * signal)
{
    uint32_t suma=0;
    uint16_t index;

    for(index =0 ; index < NUMBER_OF_SAMPLES ; index++)
        suma += signal[index];

    int16_t mean = (suma + NUMBER_OF_SAMPLES/2 )/ NUMBER_OF_SAMPLES ;

    for(index =0 ; index < NUMBER_OF_SAMPLES ; index++)
        signal[index] -= mean;
}

int16_t korelacja(int16_t* signal_a, int16_t* signal_b)
{
    long int wspolczynniki[2*TAU_RANGE - 1] = { 0 };

    uint16_t index;
    uint16_t tau;

    // ujemne przsunięcia
    for( tau = NUMBER_OF_SAMPLES - TAU_RANGE; tau < NUMBER_OF_SAMPLES ; tau ++)
        for ( index =0 ; index < tau +1 ; index++)
            wspolczynniki[tau-NUMBER_OF_SAMPLES+TAU_RANGE] += signal_a[index] * signal_b[NUMBER_OF_SAMPLES - tau - 1 + index];

    //dodatnie przesunięcia
    for( tau = 1; tau < TAU_RANGE ; tau ++)
        for ( index =0 ; index < NUMBER_OF_SAMPLES - tau ; index++)
            wspolczynniki[TAU_RANGE + tau - 1] += signal_b[index] * signal_a[ tau + index];

    int16_t pozycja =0;
    for(index = 0; index < TAU_RANGE*2-1; index++)
        if( wspolczynniki[pozycja] < wspolczynniki[index])
            pozycja = index;

    return pozycja - TAU_RANGE + 1;
}

void polozenie(int8_t delay_in_probes, int32_t * source)
{
	int32_t roznica_drogi = delay_in_probes*predkosc_dzwieku*inv_ADC_freq; //5.57056;	//[mm]

	int32_t pom2 = roznica_drogi * roznica_drogi;				//[mm^2]
	int64_t pom3 = distance_microphone_microphone_2 - pom2;			//[mm^2]


	source[0] = (distance_microphone_microphone_3-roznica_drogi*sqrt(pom3*(pom3+4*distance_soundsource_OX_2))-distance_microphone_microphone*pom2 + pom3)/(2*pom3);	//[mm]
	source[1] = (distance_microphone_microphone_3+roznica_drogi*sqrt(pom3*(pom3+4*distance_soundsource_OX_2))-distance_microphone_microphone*pom2 +pom3)/(2*pom3);	//[mm]
	
}
 
int main(void)
{
	int fd;
	uint32_t* pamiec;
	char *name = "/dev/mem";
	
	if((fd = open(name, O_RDWR)) < 0) 
	{
		perror("open");
		return 1;
	}
	
	pamiec = ( uint32_t* ) mmap(NULL, 8*sysconf(_SC_PAGESIZE), /* map the memory */
			 PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0x43000000);
		
	int16_t channel_1[NUMBER_OF_SAMPLES],channel_2[NUMBER_OF_SAMPLES];
	
	for(uint16_t i=0; i < NUMBER_OF_SAMPLES ; i++)
	{
		uint32_t value = pamiec[i];
		channel_1[i] = value&0x0000FFFF;
		channel_2[i] = (value& 0xFFFF0000) >> 16;
	}
	
	usun_skladowa_stala(channel_1);
	usun_skladowa_stala(channel_2);
	
	int16_t przesuniecie = korelacja( channel_1, channel_2 );
	printf("Przesuniecie = %d [probek] \n", przesuniecie );
	
	int32_t wspolrzedne_x[2] ;
	polozenie(przesuniecie, wspolrzedne_x);
	printf("Możliwe wspolrzedne x'owe przy y = %d [mm] to: %d [mm]\t lub %d [mm]\n",distance_soundsource_OX, wspolrzedne_x[0], wspolrzedne_x[1]);
	
	munmap(pamiec,8* sysconf(_SC_PAGESIZE));
	
	return 0;
}
