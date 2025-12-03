## ECE 128 Lab 11 README File


## Project Description
This project was an introduction to Vivado IP and how it is implemented and utilized in Verilog programming. Vivado IP are premade modules that can be used as building blocks for larger and more complex projects. With there being many kinds of IP blocks, such as adders, subtractors, multipliers, and clocks, it makes developing HDL programs much simpler and efficient. The project also introduces the idea of custom-made IP, which is done with a ripple carry adder. 

## How to simulate the program and implement it on the FPGA 
To simulate the program, ensure that each model file is located in the design sources, the constraints files are in the constraints directory, and the testbench file is in the simulation sources directory. Make sure the modules you want to simulate are set to the top in Vivado. To run the simulation, go to the navigator on the left side of Vivado and click run simulation, then run behavioral simulation to output the waveforms of the testbench. 

To program the FPGA with the top_module, make sure the proper module, testbench, and constraint file are selected. Then run the synthesis, implementation, and generate the bitstream. Once the bitstream is generated, open the hardware manager and program the board using the .bit file. 
