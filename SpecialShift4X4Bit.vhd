library ieee;
use ieee.std_logic_1164.all;

entity SpecialShift4X4Bit is
    port (
        clock : in std_logic;
        enable : in std_logic;
        clear : in std_logic;
        data_in : in std_logic_vector(3 downto 0);
        data_out3 : out std_logic_vector(3 downto 0);
        data_out2 : out std_logic_vector(3 downto 0);
        data_out1 : out std_logic_vector(3 downto 0);
        data_out0 : out std_logic_vector(3 downto 0)
    );
end entity SpecialShift4X4Bit;

architecture Behavioral of SpecialShift4X4Bit is

    signal data3 : std_logic_vector(3 downto 0) := (others => '0');
    signal data2 : std_logic_vector(3 downto 0) := (others => '0');
    signal data1 : std_logic_vector(3 downto 0) := (others => '0');
    signal data0 : std_logic_vector(3 downto 0) := (others => '0');

begin
    main : process( clock )
    begin
        if rising_edge(clock) then

            if clear = '1' then
                data3 <= (others => '0');
                data2 <= (others => '0');
                data1 <= (others => '0');
                data0 <= (others => '0');
                
            elsif enable = '1' then
                data3 <= data2; 
                data2 <= data1; 
                data1 <= data0; 
                data0 <= data_in;

            end if;
        end if ;
        
    end process ; -- main

    data_out0 <= data0;
    data_out1 <= data1;
    data_out2 <= data2;
    data_out3 <= data3;

end Behavioral ; -- Behavioral