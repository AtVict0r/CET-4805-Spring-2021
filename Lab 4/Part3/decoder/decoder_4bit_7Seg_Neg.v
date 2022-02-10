module decoder_4bit_7Seg_Neg (DIG, Seg7);
	input [3:0] DIG;
	output reg [6:0] Seg7;
	
	always @(DIG) begin
		case (DIG)
		//              gfedcba     
			0: Seg7 = 7'b1000000;  // 0
			1: Seg7 = 7'b1111001;  // 1
			2: Seg7 = 7'b0100100;  // 2
			3: Seg7 = 7'b0110000;  // 3
		   4: Seg7 = 7'b0011001;  // 4
			5: Seg7 = 7'b0010010;  // 5
			6: Seg7 = 7'b0000010;  // 6
			7: Seg7 = 7'b1011000;  // 7
			8: Seg7 = 0;           // 8
			9: Seg7 = 7'b0011000;  // 9
			10: Seg7 = 7'b0001000; // A
			11: Seg7 = 7'b0000011; // b
			12: Seg7 = 7'b1000110; // C
			13: Seg7 = 7'b0100001; // d
			14: Seg7 = 7'b0000110; // E
			15: Seg7 = 7'b0001110; // F
		endcase
	end
endmodule