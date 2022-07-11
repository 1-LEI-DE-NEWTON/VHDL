
library IEEE;
use IEEE.std_logic_1164.all;

entity HAMMING_7_4_ENCODER is
Port ( ENTRADA : in std_logic_vector ( 4 downto 1 );
      SAIDA : out std_logic_vector ( 7 downto 1 ));
end HAMMING_7_4_ENCODER;

architecture ENCODER of HAMMING_7_4_ENCODER is

begin

	SAIDA(7)<=ENTRADA(4);
	SAIDA(6)<=ENTRADA(3);
	SAIDA(5)<=ENTRADA(2);
	SAIDA(3)<=ENTRADA(1);
	
    SAIDA(4)<=ENTRADA(2) xor ENTRADA(3) xor ENTRADA(4);
	SAIDA(2)<=ENTRADA(1) xor ENTRADA(3) xor ENTRADA(4);
	SAIDA(1)<= ENTRADA(1) xor ENTRADA(2) xor ENTRADA(4);

END ENCODER;
