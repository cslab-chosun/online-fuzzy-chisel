-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\robot_fis\MinMax_Running_Resettable19.vhd
-- Created: 2023-10-16 00:56:55
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: MinMax_Running_Resettable19
-- Source Path: robot_fis/MinMax Running Resettable19
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY MinMax_Running_Resettable19 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        u                                 :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        R                                 :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        y                                 :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END MinMax_Running_Resettable19;


ARCHITECTURE rtl OF MinMax_Running_Resettable19 IS

  -- Component Declarations
  COMPONENT Subsystem_block10
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          u1                              :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          R1                              :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          y1                              :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          x                               :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Subsystem_block10
    USE ENTITY work.Subsystem_block10(rtl);

  -- Signals
  SIGNAL u_unsigned                       : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Subsystem_out2                   : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Subsystem_out2_unsigned          : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL MinMax_stage1_val                : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Subsystem_out1                   : std_logic_vector(7 DOWNTO 0);  -- ufix8

BEGIN
  -- Reset

  u_Subsystem : Subsystem_block10
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              u1 => std_logic_vector(MinMax_stage1_val),  -- uint8
              R1 => R,  -- uint8
              y1 => Subsystem_out1,  -- uint8
              x => Subsystem_out2  -- uint8
              );

  u_unsigned <= unsigned(u);

  Subsystem_out2_unsigned <= unsigned(Subsystem_out2);

  ---- Tree min implementation ----
  
  MinMax_stage1_val <= u_unsigned WHEN u_unsigned <= Subsystem_out2_unsigned ELSE
      Subsystem_out2_unsigned;

  y <= Subsystem_out1;

END rtl;

