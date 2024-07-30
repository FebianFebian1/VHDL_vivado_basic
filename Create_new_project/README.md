# Creating New Project

Given that you have installed Vivado, this section will run through the initial set up to your project and some essential explaination on what's important.

### **1. Interface**

When you open Vivado applications, you should be able to see something similar to the image below. To create a project simply click on the **"Create Project"** option under the quick start box. On the right hand side, there is a box listing all the recent projects that you have worked with. 

If you already has a project shared to you, you can select the **"open project"** option to navigate to where the Project_name.xpr file is located. an .xpr file might also be listed as "Vivado Project File" in windows file explorer. If you select to open project, please ignore the next steps. 

![1](https://github.com/user-attachments/assets/d5eb4f46-e2a4-4c0b-a68b-5a2018c904a5)

### **2. New Project Setup**

Once you select "Create Project" you will be prompted with a window that nicely welcome you to making a new project. Simply click next, and you will be prompted with the window as shown in the figure below. In this step, you can indicate the **name of the project and specify the directory of your project workspace**. 

![2](https://github.com/user-attachments/assets/d6365b69-c627-4aff-a204-8753e551546d)

After that, you will be able to select the project type which in this case we are going to select **"RTL project"**. RTL project allows for full stack development from coding in either verilog or VHDL to transferring the logic to the FPGA. The window looks like below

![3](https://github.com/user-attachments/assets/e3da712a-2cb6-427a-a025-e69346fe59b7)

Next, the window will be showing **"add sources" and "add constraints"**, in the meantime we are going to skip these parts and moving on to the **"Default Part"** window by simply clicking next. In this window you need to select the FPGA board that you are going to use. if you are using an integrated FPGA boards, please select the **"boards"** option next to "Parts". Then, you can search the board that you are using in the search bar. If the boards does not shows up, Select on the top right **"Install/Update Boards"** option to add more boards. The windows should looks like the following.

![4](https://github.com/user-attachments/assets/c69fdb9f-4dcc-4e73-839c-4ea8cdbe6367)

Once you have selected the boards and click next, you will be shown the **new project summary**. There will be warning sign as there are no sources and constraints file provided and that's fine as we could add them once we are inside the project. If you are happy, click finish and you are about to start your journey in your new project. 

### **3. initial setup**

Once finish, you should be able to see the workspace interface looks like the image below. (The details in the project summary window and the console box will be slightly different as the screenshot is taken from the finish project example).

![5](https://github.com/user-attachments/assets/9aefef47-d1e6-4243-ade2-d31ea181e645)

Next, find the source window which consists of 4 folders including **"Design sources" and "Constraint"** the 2 folder we will be focusing on. Then on top of that window, click the plus sign to add source and you will be prompted with 3 different selections namely add or create **constraints, design sources, and simulations** as shown below.

![6](https://github.com/user-attachments/assets/66aaf16a-5864-4f47-9c09-7739fdedd88f)

In this case, we would like to **add the design sources**, which essentially where all the VHDL/verilog code is written before deploying to FPGA board. If you click create file, you will be prompted with a window shown below. You will be able to specified the language of it which decides the extension of the file either to be .v or .vhd. The defaulted location of the file will be in design sources folder if **"local to project"** option is selected. The name of the file will be the entity name so please be considerate in naming the file for manageable purposes. 

![7](https://github.com/user-attachments/assets/77ea0b1d-6385-4297-9e59-31a14cfd2660)

After adding the file you can either add more files or click finish. Once you click finish, there will be a prompted window for you to define the **Input or Outputs** port as shown in the image below. This of course can be skipped as you will be able to add them manually in the source file. However, adding them here would save some time as it will be defined directly in your source code once you finish by clicking the OK button. 

![8](https://github.com/user-attachments/assets/0c10d304-aefc-4daf-b67f-1a88fbe92353)


