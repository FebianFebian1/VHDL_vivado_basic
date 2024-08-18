# Design Sources and Constraints

In this section we will be looking at some source examples on how to implement basic logic gates, flip flops and clock using VHDL language. We will also look at how to assign pin to the FPGA using constraints file (.xdc file).

### 1. Design Sources

The **"design sources"** folder contains the VHDL code used in the project to be synthesis and impelemented to the FPGA board. The image below shows a very easy high level example implementing 2 buttons as an input and LED as an output. The vhd file can be find above. if you put it in your project design sources folder directory it will works the same way. 

**Notes**: if your entity name is not the same as your source filename, the generation of bitstream will follow the name of your entity. (It always a good practice to make the entity name the same as the filename) 

![9](https://github.com/user-attachments/assets/506037e2-86b6-4280-be13-3ae64799aae1)

### 2. Constraints

In this part is where the connection between the logic that have been coded in design sources is connected to a specific pins on the FPGA board. The Xdc file can be found above or in the useful links section if you are using a xilinx digilent board that is not nexys video. 

In the xdc file, all the components in the FPGA has been listed and all we have to do is to select the one we would like to utilise and edit the line to match the name of the port in our entity. This will be connected and rendered automatically during **implementation** process. You can also decided to copy paste the line into a new .xdc file as can be found in the file above. 

## **List of sources:**
In this section, a brief explaination for each project uploaded in src folder will be provided. When copying the sources file into your project design sources file, please keep the name of the sources as src.vhd and the constraints as nexysv.xdc to avoid any unnecessary complications. 

**1. src-and:**

This project is simply to implement an "and" gate as shown in the above example. Utilizing 2 buttons as its input and an LED as its output, using the built-in and function we can implement this directly. The constraints file use for this one is "nexysv.xdc"

**2. src-nor:**

This project is simply to implement an "nor" gate as shown in the above example. very similarly to the "and" one, utilizing 2 buttons as its input and an LED as its output, using the built-in and function we can implement this directly. The constraints file use for this one is "nexysv.xdc"

**3. src-buttonCounter:**

This project is try to use clk and reset into the process. The idea of this project is if a button is click, the counter signal is added by 1 and if another button is click, the counter signal is substracted by 1. By using the if else logic and utilising 8 LED's as a representative of 8 bits counter, we can implement this quite straightforwardly. The constraints file use for this one is "nexysv-buttonCounter.xdc". 

**4. src-andOr:**

This project is am easy example attempting hierarchial VHDL programming. Essentially by introducing smaller modules into the main VHDL file, the project will be easier to navigate and manageable. In this example, we have 3 inputs from buttons, and 1 LED output. 2 inputs goes into the "and" gate. Then, the output of the "and" gate and the 3rd inpuuts goes to an "or" gate, producing the output indicated by LED. The src-andOR vhd file provided is simply utilises src-and vhd file and you will have to alter it a little bit to create the "or" module. Add them under the Design Sources folder in your project (make sure the name matches), and you can deploy it into your FPGA. 
