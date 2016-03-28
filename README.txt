======================================== Folder Structure =========================================
sha256.hw.accelerator (root)
- vivado.projects
- vivado.exported.hardwares
- sdk.workspace
- sdk.shared_src

======================================= Folder Description ========================================
1. sha256.hw.accelerator
This is the root folder for our project. Every files related to the project will be placed here.
Please up date this file if you have added additional folders to the project.

2. vivado.projects
As the name suggested, this is where we put our Vivado projects.
Every new hardware platform projects created with Vivado will ONLY be created inside this folder.
NOTE THAT IT IS IMPORTANT TO NAME YOUR BLOCK DIAGRAM THE SAME NAME AS YOUR PROJECT NAME INSTEAD of "system"
SO THAT WE CAN DISTINGHISH IT EASILY IN SDK.

3. vivado.exported.hardwares
When you have finished your hardware design and you wanted to export our hardware, this is the place.
Upon exporting the hardware, PLEASE CHANGE THE EXPORT FOLDER TO THIS FOLDER. The exported hardware 
should also include the BITSTREAM FILE. The final product of exporting hardware should be plain .hdf file.

4. sdk.workspace
The SDK is essentially just a disguise version of Eclipse.  When you finished exporting the hardware, 
NEVER launch the SDK from Vivado. You will have to launch it yourself and select this folder as your workspace.
Do not worry if you do not see your newly exported hardware from (3). To make your hardware appear 
on the SDK Project explorer, simply hit "File->New->Project...->Xilinx->Hardware Platform Specification->Browse->(Head to your new .hdf file)".
The project name should display automatically as "<your harware design wrapper>_hw_platform_0", click finish and you will be good to go.

5. sdk.shared_src
This is where we put the shared source code for the SDK. By shared source code, it means that 
inside the SDK workspace there will be many Application Projects that shared the same codes. 
We will put them here and do import them later as a link using the special import 
functions so that when the files are imported it will be "linked" instead of copied.

====================================== Other Setup Guides =======================================
1. Programming Specific Hardware
When we have many hardware platform imported in SDK and we wanted a specific on to be programmed on the board.
Click on "Program FPGA->Select your Hardware Platform you wanted to be uploaded onto the board(if you exported 
hardware that comes with bitstream you should see the change in Bitstream filename)" and click Program.

2. Importing Linked Source Code
When you have newly created your source code in "sdk.shared_src" folder and you wanted to import it to tour application project,
expand your applicafion project folder->right click on src fodler->click Import...->expand General->click File System->click Next-> 
click Browse... then browse to our "sdk.shared_src"->check source files you wanted to import->click Advanced > > ->check everyboxes in the advanced section.
And you are good to go. Now every changes you made will be saved to the actual file in the "sdk.shared_src" folder and not the application project src folder.

3. Running the application
When you wanted to run your application. It is important that you follow the step correctly.
1. Program the FPGA with the right hardware platform
2. Connect the Tera Term to the board
3. Run the application
If you changed bits it your source code and you wanted to run your application again, simply skip step 1 and 2.
You only have to do step 3. Step 1 is only needed when you wanted to run on the another hardware platform.
Step 2 is needed once the board is powered. Step 1 and 2 can be done interchangeably.