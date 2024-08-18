## LEDs
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS25} [get_ports LED]


## Buttons (Vadj)
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS25} [get_ports button1]
set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS25} [get_ports button2]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS25} [get_ports button3]
