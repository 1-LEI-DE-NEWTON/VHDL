library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end entity;

architecture d of testbench is

component HAMMING_12_8_ENCODER is

PORT (ENTRADA : IN STD_LOGIC_VECTOR(8 DOWNTO 1);
SAIDA : OUT STD_LOGIC_VECTOR(12 DOWNTO 1) );

end component;

signal ENTRADA : STD_LOGIC_VECTOR( 8 downto 1);
signal SAIDA :  STD_LOGIC_VECTOR( 12 downto 1);

begin

dut: HAMMING_12_8_ENCODER port map (ENTRADA,SAIDA);


process

begin

ENTRADA<="00000000";
wait for 10 ns;

assert (SAIDA="000000000000") report "erro" severity warning;

ENTRADA<="00001110";
wait for 10 ns;

assert (SAIDA="000001111000") report "erro" severity warning;

ENTRADA<="01010111";
wait for 10 ns;

assert (SAIDA="010100110110") report "erro" severity warning;

wait;
end process;

end d;
