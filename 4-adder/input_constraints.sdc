create_clock -name clk -period 10 
set_input_delay 2 -clock clk [get_ports "A"] 
set_input_delay 2 -clock clk [get_ports "B"] 
set_input_delay 2 -clock clk [get_ports "CO"] 
set_output_delay 2 -clock clk [get_ports "S"] 
set_output_delay 2 -clock clk [get_ports "C4"] 