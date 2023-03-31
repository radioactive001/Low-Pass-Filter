 library ieee;  
 use ieee.Std_logic_1164.all;  
 
 entity N_Bit_Register is generic (input_w          : integer     :=8);  
								  port    (input 						 : in  std_logic_vector(input_w-1 downto 0);    
											  clock 						 : in  std_logic;    
											  reset 						 : in  std_logic;  
					 						  output  					 : out  std_logic_vector(input_w-1 downto 0));  
 end N_Bit_Register;  
  
 architecture behavioral of N_Bit_Register is   
 begin   
      process(clock,reset)  
      begin   
           if (reset = '1') then  
                output <= (others => '0');  
        elsif ( rising_edge(clock) ) then  
                output <= input;   
       end if;      
      end process;   
 end Behavioral;