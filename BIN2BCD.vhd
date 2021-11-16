library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity BIN2BCD is
    port (
        BIN : in std_logic_vector(15 downto 0);
        BCD4 : out std_logic_vector(3 downto 0);
        BCD3 : out std_logic_vector(3 downto 0);
        BCD2 : out std_logic_vector(3 downto 0);
        BCD1 : out std_logic_vector(3 downto 0);
        BCD0 : out std_logic_vector(3 downto 0);
        NSIGN : out std_logic
    );
end entity BIN2BCD;

architecture Behavioral of BIN2BCD is

    signal int_bcd4 : integer range 0 to 9;
    signal int_bcd3 : integer range 0 to 9;
    signal int_bcd2 : integer range 0 to 9;
    signal int_bcd1 : integer range 0 to 9;
    signal int_bcd0 : integer range 0 to 9;
    signal int_in : integer range 0 to 65535; --16 bits 

begin
    main : process( BIN )
    begin

        if BIN(15) = '1' then
            NSIGN <= '1';
            int_in <= to_integer(unsigned(not BIN)) + 1;
        else
            NSIGN <= '0';
            int_in <= to_integer(unsigned(BIN));
        end if ;
        
        int_bcd0 <= int_in mod 10;
        int_bcd1 <= (int_in mod 100) / 10;
        int_bcd2 <= (int_in mod 1000) / 100;
        int_bcd3 <= (int_in mod 10000) / 1000;
        int_bcd4 <= int_in / 10000;

    end process ; --main 

    BCD4 <= std_logic_vector(to_unsigned(int_bcd4,BCD4'length));
    BCD3 <= std_logic_vector(to_unsigned(int_bcd3,BCD3'length));
    BCD2 <= std_logic_vector(to_unsigned(int_bcd2,BCD2'length));
    BCD1 <= std_logic_vector(to_unsigned(int_bcd1,BCD1'length));
    BCD0 <= std_logic_vector(to_unsigned(int_bcd0,BCD0'length));

end Behavioral ; -- Behavioral