# FPGA Implementation

### 1. Synthesis and Implementation

Once you are done designing the source file, we can **run synthesis** from the option in the **Flow Navigatior** to see the block diagram of what we are designing. For example as shown in the image below, we designed an and gate and its shown as a block diagram after the program finish synthesising. 

Then, If we **run implementation**, in this part we will see how does the logic gate is implemented in the FPGA virtually. At this point, the FPGA is still not functioning as expected.

![10](https://github.com/user-attachments/assets/9070dc0a-96f4-4795-bc20-91899a616627)

### 2. Generate Bitstream

After synthesis and implementation has been run successfully, we can start generating bitstream file (the .bit file that does the programming inside the FPGA board). If the synthesis or implementation is "out of date" (due to any changes in sources, constraints or simulation), clicking the **generate bitstream** option will automatically goes through the process of synthesis or implementation. 

Next, the FPGA can be connected to the PC (don't forget to connect the FPGA to the power supply and turn it on to begin with :D). In flow navigator menu on the program and debug, under the generate bitstream option, you can start open hardware manager and click **"Open Target" then "Auto Connect**. If there is nothing detected, The Hardware manager will indicate unconnected as shown in the image below. (if it doesn't detect, please check the cable connection is connected to "prog" on the FPGA board)

![11](https://github.com/user-attachments/assets/ebd8e08b-4878-4baa-9742-a9d48fc9edbc)

If the process run successful, you will be prompted with a window indicating "Bitstream Generation Successfully completed", or you can also check the status on the top right, written "write_bitstream complete". To implement this to the FPGA simply, select the **"Program Device"** option under the flow navigator. You should see some indicator on your FPGA (normally blinking LED or change in LED) indicating that it has been program successfuly. At last, it's time to check whether the FPGA behaves as you program and expected. :D
