# ECSE222 - VHDL Lab Assignments
Assignments for ECSE 222 - Digital Logic 
> by Antoine Phan & Jakob Rylo

### Programmes used: 
- Recommended for local PC: Quartus Prime Lite Edition (v18.0)
- On Lab's Computer: Quartus Prime 15.1
	- Quartus Prime 15.1
	- ModelSim-Altera 10.4b (for Quartus Prime 15.1)
- On Trottier's 4th/5th floor PCs:
	- Quartus Prime 16.1
	- ModelSim-Altera xx.xx
- Personal Machine (Windows/Linux (Debian-based or Red Hat))
	- Quartus Prime Lite 18.0
	- ModelSim-Altera 10.5b (for Quartus Prime Lite 18.0)
- Personal Machine (ArchLinux)
	- Quartus Prime Lite 21.1.1
	- ModelSim Intel - Starter Edition 2020.2

### Lab's topic:
- LAB 1: Getting Started: Quartus Prime, ModelSim-Altera, Testbench
- LAB 2: CAD tools, Schematic Design, 2-to-1 Multiplexer (MUX)
- LAB 3: 4-bit circular barrel shifter, Ripple-Carry Adder (RCA), One-digit BCD Adder
- LAB 4: Critial Path, BCD 7-segment encoding with FPGA (DE1-SOC)
- LAB 5:
- LAB 6 (demo):

### Workflow suggestion
#### Deisgn circuits || VHDL/Verilog codes
- Use Quartus Prime
- Draw/Design/Write code
- ```Synthesize & Analysis```
- Obtain circuit (Netlist Viewer) & Flow Summary

#### VHDL/Verilog Codes & simulation
- Use a text editor (VSCode, Notepad++, ModelSim)
- Write code (structural & behavioral descriptions)
- Write testbench
- Open ModelSim-Altera
- Create new Project
- "Add existing files" -> Add all files (circuits && its testbench)
- Check Project, find ***work*** directory
- *Double-click* or *Simulate* the testbench file
- ```run -all``` to run all processes in testbench
- ```restart``` if want to restart simulation

#### Working with Quartus Prime
- Set working entity to *top-level entity*
- Set testbench entity to *top-level testbench entity*
- Case is not sensitive in VHDL/Verilog
- Synthesize & Analysis
- Redo all steps for different circuit in the same project
