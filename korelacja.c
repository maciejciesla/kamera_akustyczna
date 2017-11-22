#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>

#define NUMBER_OF_SAMPLES 8192

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
    int64_t wspolczynniki[2*NUMBER_OF_SAMPLES - 1] = { 0 };


    uint16_t index;
    uint16_t tau;

    // ujemne przsunięcia
    for( tau = 0; tau < NUMBER_OF_SAMPLES ; tau ++)
        for ( index =0 ; index < tau +1 ; index++)
            wspolczynniki[tau] += signal_a[index] * signal_b[NUMBER_OF_SAMPLES - tau - 1 + index];

    //dodatnie przesunięcia
    for( tau = 1; tau < NUMBER_OF_SAMPLES ; tau ++)
        for ( index =0 ; index < NUMBER_OF_SAMPLES - tau ; index++)
            wspolczynniki[NUMBER_OF_SAMPLES + tau - 1] += signal_b[index] * signal_a[ tau + index];

    int16_t pozycja =0;
    for(index = 0; index < NUMBER_OF_SAMPLES*2-1; index++)
        if( wspolczynniki[pozycja] < wspolczynniki[index])
            pozycja = index;

    return pozycja - NUMBER_OF_SAMPLES + 1;
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
	
	for(uint16_t i=0;i<8192 ;i++)
	{
		channel_1[i] = pamiec[i]&0x0000FFFF;
		channel_2[i] = (pamiec[i]& 0xFFFF0000) >>16;
	}
	
	usun_skladowa_stala(channel_1);
	usun_skladowa_stala(channel_2);
	
	int16_t przesuniecie = korelacja( channel_1, channel_2 );
	printf("Przesuniecie = %d [probek] \n", przesuniecie );

	munmap(pamiec,8* sysconf(_SC_PAGESIZE));
	
	return 0;
}
