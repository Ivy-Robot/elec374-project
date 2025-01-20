module Bus(
	//busmux
	input [31:0]busMuxIn-R0, [31:0]busMuxIn-R1, [31:0]busMuxIn-R2, [31:0]busMuxIn-R3, [31:0]busMuxIn-R4, [31:0]busMuxIn-R5, [31:0]busMuxIn-R6, [31:0]busMuxIn-R7, [31:0]busMuxIn-R8, [31:0]busMuxIn-R9, [31:0]busMuxIn-R10, [31:0]busMuxIn-R11, [31:0]busMuxIn-R12, [31:0]busMuxIn-R13, [31:0]busMuxIn-R14, [31:0]busMuxIn-R15, [31:0]BuxMuxIn-LO, [31:0]BuxMuxIn-HI, [31:0]BuxMuxIn-Zhigh, [31:0]BuxMuxIn-Zlow, [31:0]BuxMuxIn-PC, [31:0]BuxMuxIn-MDR, [31:0]BuxMuxIn_In.Port, [31:0]C_sign_extended,
	//encoder
	input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out, HIout, LOut, Zhighout, Zlowout, PCout, MDRout, In.Portout, Cout,
	output wire [31:0]BusMuxOut
);

reg [7:0]q;

always @ (*) begin
	if(R0out) q = BusMuxIn-R0;
	if(R1out) q = BusMuxIn-R1;
	if(R2out) q = BusMuxIn-R2;
	if(R3out) q = BusMuxIn-R3;
	if(R4out) q = BusMuxIn-R4;
	if(R5out) q = BusMuxIn-R5;
	if(R6out) q = BusMuxIn-R6;
	if(R7out) q = BusMuxIn-R7;
	if(R8out) q = BusMuxIn-R8;
	if(R9out) q = BusMuxIn-R9;
	if(R10out) q = BusMuxIn-R10;
	if(R11out) q = BusMuxIn-R11;
	if(R12out) q = BusMuxIn-R12;
	if(R13out) q = BusMuxIn-R13;
	if(R14out) q = BusMuxIn-R14;
	if(R15out) q = BusMuxIn-R15;
	if(HIout) q = BusMuxIn-HI;
	if(LOout) q = BusMuxIn-LO;
	if(Zhighout) q = BusMuxIn-Zhigh;
	if(Zlowout) q = BusMuxIn-Zlow;
	if(PCout) q = BusMuxIn-PC;
	if(MDRout) q = BusMuxIn-MDR;
	if(In.Portout) q = BusMuxIn_In.Port;
	if(Cout) q = BusMuxIn-C_sign_extended;
end
assign BusMuxOut = q;
endmodule
	