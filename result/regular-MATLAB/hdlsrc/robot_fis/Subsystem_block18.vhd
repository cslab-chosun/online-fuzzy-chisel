-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\robot_fis\Subsystem_block18.vhd
-- Created: 2023-10-16 00:56:55
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Subsystem_block18
-- Source Path: robot_fis/MinMax Running Resettable4/Subsystem
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Subsystem_block18 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        u1                                :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        R1                                :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        y1                                :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        x                                 :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END Subsystem_block18;


ARCHITECTURE rtl OF Subsystem_block18 IS

  -- Signals
  SIGNAL R1_unsigned                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL u1_unsigned                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Reset_Value                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Reset_Value_1                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Reset_out1                       : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL stateControl_1                   : std_logic;
  SIGNAL stateControl_2                   : std_logic;
  SIGNAL enb_gated                        : std_logic;
  SIGNAL Memory_out1                      : unsigned(7 DOWNTO 0);  -- uint8

BEGIN
  -- Xold
  -- Xnew
  -- Reset

  R1_unsigned <= unsigned(R1);

  u1_unsigned <= unsigned(u1);

  Reset_Value <= to_unsigned(16#00#, 8);

  delayMatch_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Reset_Value_1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Reset_Value_1 <= Reset_Value;
      END IF;
    END IF;
  END PROCESS delayMatch_process;


  
  Reset_out1 <= u1_unsigned WHEN R1_unsigned = to_unsigned(16#00#, 8) ELSE
      Reset_Value_1;

  y1 <= std_logic_vector(Reset_out1);

  stateControl_1 <= '1';

  delayMatch1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      stateControl_2 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        stateControl_2 <= stateControl_1;
      END IF;
    END IF;
  END PROCESS delayMatch1_process;


  enb_gated <= stateControl_2 AND enb;

  Memory_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Memory_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        Memory_out1 <= Reset_out1;
      END IF;
    END IF;
  END PROCESS Memory_process;


  x <= std_logic_vector(Memory_out1);

END rtl;

