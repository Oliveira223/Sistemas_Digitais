library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1_1 is port
    a: in std_logic;
    b: in std_logic;
    sel: in std_logic;
    o: out std_logic
end entity;

architecture mux of mux_2_1_1
    begin
        o <= b when '1' else a;
    


    end architecture;























