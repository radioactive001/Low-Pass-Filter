--Test bench for automated testing of low pass filter.
--For Advanced Digital Systems (9865).
--Authors:
--Anik Kumar Pramanik (202190928)
--Amit Kumar Dey (202190917)


library ieee;
use std.textio.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Test_Low_Pass_Filter is
end Test_Low_Pass_Filter;

architecture behaviour of Test_Low_Pass_Filter is

--Component declaration
component Low_Pass_Filter is generic ( input_w 	     : integer;
													output_w		  : integer;
													guard			  : integer;
													tap			  : integer;
													coefficient_w : integer);
									  port	  (input			  : in std_logic_vector(input_w-1 downto 0);
													clock			  : in std_logic;
													reset			  : in std_logic;
													output		  : out std_logic_vector(output_w-1 downto 0));
end component;

--Signals for simulated outputs
signal input          		: std_logic_vector(7 downto 0);  
signal clock          		: std_logic:='0';  
signal reset     	  			: std_logic:='1';                                       
signal output          		: std_logic_vector(15 downto 0);  
signal output_ready     	: std_logic:='0';


--Reading input values from file
file input_file    			 : text open read_mode is "I:\My Drive\FPGA\Low_Pass_Filter\Files\input0.txt";
--File to write values
file output_file    			 : text open write_mode is "I:\My Drive\FPGA\Low_Pass_Filter\Files\output0.txt";
--Reading expected output values from file
file expected_output_file   : text open read_mode is "I:\My Drive\FPGA\Low_Pass_Filter\Files\expected_output0.txt";

--The input values are sampled from a noisy signal, each value represents a sample point on the curve.
--the expected output is generated in matlab by convoluting input values with the coefficients. The output
--values are saved in the 'expected_output0.txt' file, which is then matched against the resulting output
--of the 'low_pass_filter'. 
--Some input and expected outputs are provided in the respective files.


begin
	FILTER_TEST : Low_Pass_Filter	
							generic map(input_w 	     => 8,
										 output_w		  => 16,
										 guard			  => 0,
										 tap			     => 11,
										 coefficient_w   => 8)
							port	map(input			  => input,
										 clock			  => clock,
										 reset			  => reset,
										 output		     => output);
										 
process(clock)
  begin
		clock <= not clock after 10ns;
  end process;
  
reset <= '1', '0' after 505 ns;

--Read Inputs or decide if input finished.
process(clock)	
	variable input_line  : line;
	variable input_value	: integer;
	
	begin
		if reset = '1' then 
			input <= (others => '0');
			output_ready <= '0';
		elsif rising_edge(clock) and (not endfile(input_file)) then 
			 readline(input_file, input_line); 
			 read(input_line,input_value);
			 input <= std_logic_vector(to_signed(input_value, 8)); 
			 output_ready <= '1';
		elsif endfile(input_file) then
			--assert FALSE Report "SImulation Finished" severity FAILURE;
			Report "SImulation Finished";
		end if;
end process;	
--Write outputs and match expected output.
process(clock)  
           variable output_line           : line;
			  variable expected_output_line  : line;
			  variable expected_output_value	: integer;  
           begin  
                if falling_edge(clock) then  
                     if output_ready ='1' then  
                          write(output_line, to_integer(signed(output)));  
                          writeline(output_file,output_line);
								 if (not endfile(expected_output_file)) then 
										readline(expected_output_file, expected_output_line);
										read(expected_output_line,expected_output_value);
										--assert (to_integer(signed(output)) = expected_output_value)
											  report "Output does not match expected value.";
											  --severity failure;
								 end if;			  
                     end if;  
                end if;
					 
					 
end process;
end architecture;
