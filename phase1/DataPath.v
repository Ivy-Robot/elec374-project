module DataPath(
	input wire clock, clear,
	input wire HIin, LOin, CONin, PCin, IRin, Yin, Zin, MARin, MDRin, Out.Portin, Cout, BAout,
	input wire PCout, Zhighout, Zlowout, HIout, LOout, MDRout,
	input Rin, Rout, Gra, Grb, Grc,
	input wire ADD, SUB, MUL, DIV, SHL, SHR, SHRA, ROL, ROR, NEG, NOT,
	
	
	wire [31:0] MAR, 
	);
	
	//Global Variable
	genvar i;
	
	
	//Reg
	wire [31:0] Regs [15:0];
	wire [15:0] Rins;
	wire [15:0] Routs;
	wire [31:0] R0_out;
	
	
	//Register
	//For R0
	register Reg0(clear, clock, R0in, BusMuxOut, R0_out);
	//Rest of register
	generate
		for (i = 1; i < 16; i = i + 1)
		begin : regs
			register R(clear, clock, Rins[i], BusMuxOut, Regs[i]);
		end
	endgenerate
	
	