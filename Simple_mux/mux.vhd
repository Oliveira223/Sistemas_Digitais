-- Não precisa de biblitecas


entity mux is 
    port(
        a, b, sel    : in bit;
        z            : out bit
    );
end entity;

-- Arquitetura (qualquer nome)
architecture main of mux is 
begin 
    --código
    z <= a when sel = '0' else b;
end architecture;