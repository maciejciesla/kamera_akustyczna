--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
--Date        : Sat Nov  4 19:35:29 2017
--Host        : DESKTOP-QHJIUEA running 64-bit major release  (build 9200)
--Command     : generate_target kolejka.bd
--Design      : kolejka
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kolejka is
  port (
    led_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of kolejka : entity is "kolejka,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=kolejka,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of kolejka : entity is "kolejka.hwdef";
end kolejka;

architecture STRUCTURE of kolejka is
  component kolejka_sim_clk_gen_0_1 is
  port (
    clk : out STD_LOGIC;
    sync_rst : out STD_LOGIC
  );
  end component kolejka_sim_clk_gen_0_1;
  component kolejka_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component kolejka_axis_data_fifo_0_0;
  component kolejka_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component kolejka_blk_mem_gen_0_0;
  component kolejka_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component kolejka_xlconstant_0_0;
  component kolejka_zad1_0_6 is
  port (
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK100MHZ : in STD_LOGIC
  );
  end component kolejka_zad1_0_6;
  component kolejka_xlconstant_0_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component kolejka_xlconstant_0_2;
  signal axis_data_fifo_0_m_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sim_clk_gen_0_clk : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal zad1_0_LED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_axis_data_fifo_0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_blk_mem_gen_0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_sim_clk_gen_0_sync_rst_UNCONNECTED : STD_LOGIC;
begin
  led_o(15 downto 0) <= zad1_0_LED(15 downto 0);
axis_data_fifo_0: component kolejka_axis_data_fifo_0_0
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_tdata(15 downto 0) => axis_data_fifo_0_m_axis_tdata(15 downto 0),
      m_axis_tlast => NLW_axis_data_fifo_0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => xlconstant_0_dout(0),
      m_axis_tvalid => NLW_axis_data_fifo_0_m_axis_tvalid_UNCONNECTED,
      s_axis_aclk => sim_clk_gen_0_clk,
      s_axis_aresetn => '0',
      s_axis_tdata(15 downto 0) => zad1_0_LED(15 downto 0),
      s_axis_tlast => '0',
      s_axis_tready => NLW_axis_data_fifo_0_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => xlconstant_0_dout(0)
    );
blk_mem_gen_0: component kolejka_blk_mem_gen_0_0
     port map (
      addra(10 downto 0) => xlconstant_2_dout(10 downto 0),
      clka => sim_clk_gen_0_clk,
      dina(15 downto 0) => axis_data_fifo_0_m_axis_tdata(15 downto 0),
      douta(15 downto 0) => NLW_blk_mem_gen_0_douta_UNCONNECTED(15 downto 0),
      ena => xlconstant_0_dout(0),
      wea(0) => xlconstant_0_dout(0)
    );
sim_clk_gen_0: component kolejka_sim_clk_gen_0_1
     port map (
      clk => sim_clk_gen_0_clk,
      sync_rst => NLW_sim_clk_gen_0_sync_rst_UNCONNECTED
    );
xlconstant_0: component kolejka_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_2: component kolejka_xlconstant_0_2
     port map (
      dout(10 downto 0) => xlconstant_2_dout(10 downto 0)
    );
zad1_0: component kolejka_zad1_0_6
     port map (
      CLK100MHZ => sim_clk_gen_0_clk,
      LED(15 downto 0) => zad1_0_LED(15 downto 0)
    );
end STRUCTURE;
