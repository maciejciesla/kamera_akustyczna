-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Sat Nov  4 19:36:41 2017
-- Host        : DESKTOP-QHJIUEA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/makiv2/kamera_akustyczna_v0.1/kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ip/kolejka_zad1_0_6/kolejka_zad1_0_6_sim_netlist.vhdl
-- Design      : kolejka_zad1_0_6
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kolejka_zad1_0_6_zad1 is
  port (
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK100MHZ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kolejka_zad1_0_6_zad1 : entity is "zad1";
end kolejka_zad1_0_6_zad1;

architecture STRUCTURE of kolejka_zad1_0_6_zad1 is
  signal \BINAR[0]_i_2_n_0\ : STD_LOGIC;
  signal BINAR_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \BINAR_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \BINAR_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \BINAR_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \BINAR_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \BINAR_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \BINAR_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \BINAR_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \BINAR_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \BINAR_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \BINAR_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \BINAR_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \BINAR_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \BINAR_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \BINAR_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \BINAR_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \BINAR_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \BINAR_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \BINAR_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \BINAR_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \BINAR_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \BINAR_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \BINAR_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \BINAR_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \BINAR_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \BINAR_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \BINAR_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \BINAR_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \BINAR_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \BINAR_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \BINAR_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \BINAR_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_BINAR_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\BINAR[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BINAR_reg(0),
      O => \BINAR[0]_i_2_n_0\
    );
\BINAR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[0]_i_1_n_7\,
      Q => BINAR_reg(0),
      R => '0'
    );
\BINAR_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \BINAR_reg[0]_i_1_n_0\,
      CO(2) => \BINAR_reg[0]_i_1_n_1\,
      CO(1) => \BINAR_reg[0]_i_1_n_2\,
      CO(0) => \BINAR_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \BINAR_reg[0]_i_1_n_4\,
      O(2) => \BINAR_reg[0]_i_1_n_5\,
      O(1) => \BINAR_reg[0]_i_1_n_6\,
      O(0) => \BINAR_reg[0]_i_1_n_7\,
      S(3 downto 1) => BINAR_reg(3 downto 1),
      S(0) => \BINAR[0]_i_2_n_0\
    );
\BINAR_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[8]_i_1_n_5\,
      Q => BINAR_reg(10),
      R => '0'
    );
\BINAR_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[8]_i_1_n_4\,
      Q => BINAR_reg(11),
      R => '0'
    );
\BINAR_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[12]_i_1_n_7\,
      Q => BINAR_reg(12),
      R => '0'
    );
\BINAR_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BINAR_reg[8]_i_1_n_0\,
      CO(3) => \NLW_BINAR_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \BINAR_reg[12]_i_1_n_1\,
      CO(1) => \BINAR_reg[12]_i_1_n_2\,
      CO(0) => \BINAR_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BINAR_reg[12]_i_1_n_4\,
      O(2) => \BINAR_reg[12]_i_1_n_5\,
      O(1) => \BINAR_reg[12]_i_1_n_6\,
      O(0) => \BINAR_reg[12]_i_1_n_7\,
      S(3 downto 0) => BINAR_reg(15 downto 12)
    );
\BINAR_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[12]_i_1_n_6\,
      Q => BINAR_reg(13),
      R => '0'
    );
\BINAR_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[12]_i_1_n_5\,
      Q => BINAR_reg(14),
      R => '0'
    );
\BINAR_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[12]_i_1_n_4\,
      Q => BINAR_reg(15),
      R => '0'
    );
\BINAR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[0]_i_1_n_6\,
      Q => BINAR_reg(1),
      R => '0'
    );
\BINAR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[0]_i_1_n_5\,
      Q => BINAR_reg(2),
      R => '0'
    );
\BINAR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[0]_i_1_n_4\,
      Q => BINAR_reg(3),
      R => '0'
    );
\BINAR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[4]_i_1_n_7\,
      Q => BINAR_reg(4),
      R => '0'
    );
\BINAR_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BINAR_reg[0]_i_1_n_0\,
      CO(3) => \BINAR_reg[4]_i_1_n_0\,
      CO(2) => \BINAR_reg[4]_i_1_n_1\,
      CO(1) => \BINAR_reg[4]_i_1_n_2\,
      CO(0) => \BINAR_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BINAR_reg[4]_i_1_n_4\,
      O(2) => \BINAR_reg[4]_i_1_n_5\,
      O(1) => \BINAR_reg[4]_i_1_n_6\,
      O(0) => \BINAR_reg[4]_i_1_n_7\,
      S(3 downto 0) => BINAR_reg(7 downto 4)
    );
\BINAR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[4]_i_1_n_6\,
      Q => BINAR_reg(5),
      R => '0'
    );
\BINAR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[4]_i_1_n_5\,
      Q => BINAR_reg(6),
      R => '0'
    );
\BINAR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[4]_i_1_n_4\,
      Q => BINAR_reg(7),
      R => '0'
    );
\BINAR_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[8]_i_1_n_7\,
      Q => BINAR_reg(8),
      R => '0'
    );
\BINAR_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BINAR_reg[4]_i_1_n_0\,
      CO(3) => \BINAR_reg[8]_i_1_n_0\,
      CO(2) => \BINAR_reg[8]_i_1_n_1\,
      CO(1) => \BINAR_reg[8]_i_1_n_2\,
      CO(0) => \BINAR_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BINAR_reg[8]_i_1_n_4\,
      O(2) => \BINAR_reg[8]_i_1_n_5\,
      O(1) => \BINAR_reg[8]_i_1_n_6\,
      O(0) => \BINAR_reg[8]_i_1_n_7\,
      S(3 downto 0) => BINAR_reg(11 downto 8)
    );
\BINAR_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => \BINAR_reg[8]_i_1_n_6\,
      Q => BINAR_reg(9),
      R => '0'
    );
\LED_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(0),
      Q => LED(0),
      R => '0'
    );
\LED_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(10),
      Q => LED(10),
      R => '0'
    );
\LED_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(11),
      Q => LED(11),
      R => '0'
    );
\LED_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(12),
      Q => LED(12),
      R => '0'
    );
\LED_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(13),
      Q => LED(13),
      R => '0'
    );
\LED_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(14),
      Q => LED(14),
      R => '0'
    );
\LED_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(15),
      Q => LED(15),
      R => '0'
    );
\LED_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(1),
      Q => LED(1),
      R => '0'
    );
\LED_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(2),
      Q => LED(2),
      R => '0'
    );
\LED_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(3),
      Q => LED(3),
      R => '0'
    );
\LED_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(4),
      Q => LED(4),
      R => '0'
    );
\LED_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(5),
      Q => LED(5),
      R => '0'
    );
\LED_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(6),
      Q => LED(6),
      R => '0'
    );
\LED_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(7),
      Q => LED(7),
      R => '0'
    );
\LED_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(8),
      Q => LED(8),
      R => '0'
    );
\LED_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHZ,
      CE => '1',
      D => BINAR_reg(9),
      Q => LED(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kolejka_zad1_0_6 is
  port (
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK100MHZ : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of kolejka_zad1_0_6 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of kolejka_zad1_0_6 : entity is "kolejka_zad1_0_6,zad1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of kolejka_zad1_0_6 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of kolejka_zad1_0_6 : entity is "zad1,Vivado 2017.3";
end kolejka_zad1_0_6;

architecture STRUCTURE of kolejka_zad1_0_6 is
begin
U0: entity work.kolejka_zad1_0_6_zad1
     port map (
      CLK100MHZ => CLK100MHZ,
      LED(15 downto 0) => LED(15 downto 0)
    );
end STRUCTURE;
