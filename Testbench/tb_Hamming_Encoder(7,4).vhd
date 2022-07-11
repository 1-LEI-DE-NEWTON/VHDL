library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end entity;

architecture d of testbench is

component HAMMING_7_4_ENCODER is

Port ( ENTRADA : in std_logic_vector ( 4 downto 1 );
      SAIDA : out std_logic_vector ( 7 downto 1 ));

end component;

signal ENTRADA : std_logic_vector( 4 downto 1);
signal SAIDA :  std_logic_vector( 7 downto 1);

begin

dut: HAMMING_7_4_ENCODER port map (ENTRADA,SAIDA);


process

begin

ENTRADA<="0110";
wait for 10 ns;

assert (SAIDA="0110011") report "erro" severity warning;

wait;

end process;

end d;
