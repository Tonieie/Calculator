library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Bcd2bin is
    port (
        BCD3 : in std_logic_vector(3 downto 0); 
        BCD2 : in std_logic_vector(3 downto 0); 
        BCD1 : in std_logic_vector(3 downto 0); 
        BCD0 : in std_logic_vector(3 downto 0); 
        BinaryOut : out std_logic_vector(15 downto 0)
        
    );
end entity Bcd2bin;

architecture Behavioral of Bcd2bin is
begin

    BinaryOut <= "00" & ((BCD3 * "1111101000") + (BCD2 * "1100100") + (BCD1 * "1010") + BCD0);

end Behavioral ; -- Behavioral