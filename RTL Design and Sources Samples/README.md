# Design Sources and Constraints

In this section we will be looking at some source examples on how to implement basic logic gates, flip flops and clock using VHDL language. We will also look at how to assign pin to the FPGA using constraints file (.xdc file).

### 1. Design Sources

The **"design sources"** folder contains the VHDL code used in the project to be synthesis and impelemented to the FPGA board. The image below shows a very easy high level example implementing 2 buttons as an input and LED as an output. The vhd file can be find above. if you put it in your project design sources folder directory it will works the same way. 

**Notes**: if your entity name is not the same as your source filename, the generation of bitstream will follow the name of your entity. (It always a good practice to make the entity name the same as the filename) 

![9](https://github.com/user-attachments/assets/506037e2-86b6-4280-be13-3ae64799aae1)

### 2. Constraints

In this part is where the connection between the logic that have been coded in design sources is connected to a specific pins on the FPGA board. The Xdc file can be found above or in the useful links section if you are using a xilinx digilent board that is not nexys video. 

In the xdc file, all the components in the FPGA has been listed and all we have to do is to select the one we would like to utilise and edit the line to match the name of the port in our entity. This will be connected and rendered automatically during **implementation** process. You can also decided to copy paste the line into a new .xdc file as can be found in the file above. 
