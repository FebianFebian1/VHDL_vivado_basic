## Copy this file to constraints when implementing src-and and src-nor vhdl sources

## LEDs
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS25} [get_ports {led1}]

## Buttons (Vadj)
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS25} [get_ports button1]
set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS25} [get_ports button2]
