library ieee;
use ieee.std_logic_1164.all;

entity Mem16x1 is
    port (
        clk : in std_logic;
        load : in std_logic;
        clear : in std_logic;
        D : in std_logic_vector(15 downto 0);
        Q : out std_logic_vector(15 downto 0)
        
    );
end entity Mem16x1;

architecture Behavioral of Mem16x1 is
begin
    main : process( clk )
    begin
        if rising_edge(clk) then

            if clear = '1' then
                Q <= (others => '0');
            elsif load = '1' then
                Q <= D;
            end if ;
            
        end if ;
        
    end process ; -- main

end Behavioral ; -- Behavioral