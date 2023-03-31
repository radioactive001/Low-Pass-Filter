library ieee;  
use ieee.std_logic_signed.all;   
use ieee.std_logic_1164.all;   

entity Low_Pass_Filter is generic(input_w         : integer       :=8;
											output_w     	  : integer     	:=16;
											guard            : integer     	:=0;
											tap              : integer     	:=11;
											coefficient_w    : integer     	:=8);
								port	  (input            : in  std_logic_vector(input_w-1 downto 0);
											clock            : in  std_logic;
											reset     		  : in  std_logic;
											output           : out std_logic_vector(output_w-1 downto 0));
end Low_Pass_Filter;

  
architecture behaivioral of Low_Pass_Filter is  
component N_Bit_Register is generic (input_w          : integer     :=8);  
									 port	   (input 					   : in  std_logic_vector(input_w-1 downto 0);     
				                         clock 					   : in 	std_logic;    
				                         reset 					   : in 	std_logic;   
				                         output 					   : out std_logic_vector(input_w-1 downto 0));  
end component;

type Coeficient_type is array (1 to tap) of std_logic_vector(coefficient_w-1 downto 0);  
  
constant coeficient: coeficient_type :=(X"05",
												X"F7",
												X"F5",
												X"03",
												X"1E",
												X"2C",
												X"1E",
												X"03",
												X"F5",
												X"F7",
												X"05");                                                                          
type shift_register_type is array (0 to tap-1) of std_logic_vector(input_w-1 downto 0);  
signal shift_register : shift_register_type;  
type multiplied_type is array (0 to tap-1) of std_logic_vector(input_w+coefficient_w-1 downto 0);  
signal multiplied_value : multiplied_type;  
type added_type is array (0 to tap-1) of std_logic_vector(input_w+coefficient_w-1 downto 0);  
signal added_value: added_type;

  
begin  
	shift_register(0) <= input;
	multiplied_value(0) <= input*coeficient(1);  
	added_value(0) <= input*coeficient(1);  
	Lowpass: for i in 0 to tap-2 generate  
	begin  
		  -- N-bit register unit  
		  N_Bit_Register_unit : N_Bit_Register generic map (input_w => 8)   
															   port map (input => shift_register(i),
																			 clock => clock,   
																			 reset => reset,  
																			 output => shift_register(i+1));       
		 -- filter multiplication  
		 multiplied_value(i+1)<= shift_register(i+1)*coeficient(i+2);  
		 -- filter conbinational addition  
		 added_value(i+1)<=added_value(i)+multiplied_value(i+1);  
	end generate Lowpass;  
	output <= added_value(tap-1);  
end Architecture;  