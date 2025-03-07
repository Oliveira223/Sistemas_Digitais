library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture mux_tb_x of mux_tb is
    
    component somador
    port(
        a: in std_logic;
        b: in std_logic;
        sel: in std_logic;
        o: out std_logic
    );

    end component;

    signal a: std_logic := '0';
    signal b: std_logic := '0';
    signal sel: std_logic := '0';

    begin 

    dut: mux_2_1_1 port map(
        a => a, 
        b => b,
        sel => sel
    );

    teste: process
    begin
        wait for 100ns
        a<='1';
        b<='1';
        wait for 10ns;
    end process;


end architecture;