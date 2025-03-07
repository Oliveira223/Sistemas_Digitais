library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity mux_tb is
end mux_tb;

architecture mux_tb_x of mux_tb is
    
 
    signal a: std_logic := '0';
    signal b: std_logic := '0';
    signal sel: std_logic;
    signal o: std_logic;
    begin 

    dut: entity work.mux port map(
        a => a, 
        b => b,
        sel => sel,
        o => o
    );

    teste: process
    begin
        wait for 100ns;
        a<='1';
        b<='1';
        sel <= '0';
        wait for 10ns;
        assert sel ='0' and o = '1' 
            report "1 + 1 não é 2!" severity error;
 end process;
end architecture;