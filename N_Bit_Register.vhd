 library ieee;  
 use ieee.Std_logic_1164.all;  
 
 entity N_Bit_Register is generic (input_w          : integer     :=8);  
								  port    (SW 						 : in  std_logic_vector(input_w-1 downto 0);    
											  CLOCK_50 						 : in  std_logic;    
											  KEY0 						 : in  std_logic;  
					 						  LEDR  					 : out  std_logic_vector(input_w-1 downto 0));  
 end N_Bit_Register;  
  
 architecture behavioral of N_Bit_Register is   
 begin   
      process(CLOCK_50,KEY0)  
      begin   
           if (KEY0 = '1') then  
                LEDR <= (others => '0');  
        elsif ( rising_edge(CLOCK_50) ) then  
                LEDR <= SW;   
       end if;      
      end process;   
 end Behavioral;