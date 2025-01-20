module register #(parameter INIT = 32'h0)(
	input clr, clk, enable,
	input [31:0]BusMuxOut,
	output wire [31:0]BusMuxIn
);
reg [31:0]q;
initial q = INIT
always @ (posedge clock)
		begin
			if (clr) begin
				q <= {32{1b'0}};
			end
			else if (enable) begin
				q <= BusMuxOut;
			end
		end

	assign BusMuxIn = q[31:0];

endmodule
