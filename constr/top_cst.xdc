create_clock -period 20 -name clk_pin_clk [get_ports clk];

set_input_delay -clock clk_pin_clk -max 10 [get_ports bit_in];
set_input_delay -clock clk_pin_clk -min 4 [get_ports bit_in];
set_input_delay -clock clk_pin_clk -max 10 [get_ports later_read];
set_input_delay -clock clk_pin_clk -min 4 [get_ports later_read];
set_output_delay -clock clk_pin_clk -max 10 [get_ports finish];
set_output_delay -clock clk_pin_clk -min 4 [get_ports finish];
set_output_delay -clock clk_pin_clk -max 10 [get_ports outnum];
set_output_delay -clock clk_pin_clk -min 4 [get_ports outnum];

set_property IOSTANDARD LVCMOS18 [get_ports [list {outnum[1]}]];
set_property IOSTANDARD LVCMOS18 [get_ports [list {outnum[1]}]];
set_property IOSTANDARD LVCMOS18 [get_ports [list {outnum[2]}]];
set_property IOSTANDARD LVCMOS18 [get_ports [list {outnum[3]}]];
set_property IOSTANDARD LVCMOS18 [get_ports [list {outnum[4]}]];
set_property IOSTANDARD LVCMOS18 [get_ports [list {outnum[5]}]];
set_property IOSTANDARD LVCMOS18 [get_ports [list {outnum[9]}]];
set_property IOSTANDARD LVCMOS18 [get_ports [list {outnum[8]}]];
set_property IOSTANDARD LVCMOS18 [get_ports [list {outnum[7]}]];
set_property IOSTANDARD LVCMOS18 [get_ports [list {outnum[6]}]];
set_property IOSTANDARD LVCMOS18 [get_ports [list bit_in]];
set_property IOSTANDARD LVCMOS18 [get_ports [list clk]];
set_property IOSTANDARD LVCMOS18 [get_ports [list finish]];
set_property IOSTANDARD LVCMOS18 [get_ports [list later_read]];
set_property IOSTANDARD LVCMOS18 [get_ports [list rst_n]];