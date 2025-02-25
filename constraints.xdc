## Clock Input (100 MHz)
## Clock Input (100 MHz from onboard oscillator)
set_property PACKAGE_PIN E3 [get_ports clk_100mhz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100mhz]
create_clock -period 10.000 [get_ports clk_100mhz]  # Defines 100 MHz clock (10 ns period)

## LED Output
set_property PACKAGE_PIN T10 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]

set_property PACKAGE_PIN B8 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]




