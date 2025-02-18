#buttons
set_property PACKAGE_PIN N15 [get_ports {sys_clk_rst}];  # "BTNL"
set_property PACKAGE_PIN P16 [get_ports {reset_counter}];  # "BTNC"
set_property PACKAGE_PIN R18 [get_ports {timer_counter_clr}];  # "BTNR"


#set_property PACKAGE_PIN R16 [get_ports {BTND}];  # "BTND"
#set_property PACKAGE_PIN T18 [get_ports {BTNU}];  # "BTNU"

#switches
set_property PACKAGE_PIN F22 [get_ports {mux_enable[0]}];  # "SW0"
set_property PACKAGE_PIN G22 [get_ports {mux_enable[1]}];  # "SW1"
set_property PACKAGE_PIN H22 [get_ports {puf_enable}];  # "SW2"
#set_property PACKAGE_PIN F21 [get_ports {enable_3}];  # "SW3"
#set_property PACKAGE_PIN H19 [get_ports {enable_4}];  # "SW4"
#set_property PACKAGE_PIN H18 [get_ports {enable_5}];  # "SW5"
#set_property PACKAGE_PIN H17 [get_ports {enable_6}];  # "SW6"
#set_property PACKAGE_PIN M15 [get_ports {enable_7}];  # "SW7"

#LEDs
set_property PACKAGE_PIN T22 [get_ports {random_out}];  # "LD0"
#set_property PACKAGE_PIN T21 [get_ports {out_y}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {timer_out[0]}];  # "LD2"
set_property PACKAGE_PIN U21 [get_ports {timer_out[1]}];  # "LD3"
set_property PACKAGE_PIN V22 [get_ports {timer_out[2]}];  # "LD4"
set_property PACKAGE_PIN W22 [get_ports {timer_out[3]}];  # "LD5"
#set_property PACKAGE_PIN U19 [get_ports {right}];  # "LD6"
set_property PACKAGE_PIN U14 [get_ports {time_stop}];  # "LD7"




#Clock
set_property PACKAGE_PIN Y9 [get_ports {sys_clk}];  # "GCLK"

# Allow for race condition, this is intentional as it is what creates the the PUF
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets  ringPUF_i/fullChain_wrapper_0/inst/fullChain_i/partialChain/invert9_0/inverter_0/inst/x]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets  ringPUF_i/fullChain_wrapper_0/inst/fullChain_i/partialChain1/invert9_0/inverter_0/inst/x]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets  ringPUF_i/fullChain_wrapper_0/inst/fullChain_i/partialChain2/invert9_0/inverter_0/inst/x]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets  ringPUF_i/fullChain_wrapper_0/inst/fullChain_i/partialChain3/invert9_0/inverter_0/inst/x]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets  ringPUF_i/fullChain_wrapper_1/inst/fullChain_i/partialChain/invert9_0/inverter_0/inst/x]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets  ringPUF_i/fullChain_wrapper_1/inst/fullChain_i/partialChain1/invert9_0/inverter_0/inst/x]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets  ringPUF_i/fullChain_wrapper_1/inst/fullChain_i/partialChain2/invert9_0/inverter_0/inst/x]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets  ringPUF_i/fullChain_wrapper_1/inst/fullChain_i/partialChain3/invert9_0/inverter_0/inst/x]