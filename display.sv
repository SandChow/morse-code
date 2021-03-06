module display(state, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
    input logic [5:0] state;
    output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
    always_comb begin
        case (state)
                     // Light: 6543210`
            6'b000000: 
                begin 
                    HEX0 = ~7'b0000000; // 0
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0111111;
                    HEX3 = ~7'b0111111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b000001: 
                begin 
                    HEX0 = ~7'b0000000; // 1
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0000110;
                    HEX3 = ~7'b0111111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b000010: 
                begin 
                    HEX0 = ~7'b0000000; // 2
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1011011;
                    HEX3 = ~7'b0111111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b000011: 
                begin 
                    HEX0 = ~7'b0000000; // 3
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1001111;
                    HEX3 = ~7'b0111111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b000100: 
                begin 
                    HEX0 = ~7'b0000000; // 4
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1100110;
                    HEX3 = ~7'b0111111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b000101: 
                begin 
                    HEX0 = ~7'b0000000; // 5
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1101101;
                    HEX3 = ~7'b0111111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b000110: 
                begin 
                    HEX0 = ~7'b0000000; // 6
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1111101;
                    HEX3 = ~7'b0111111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b000111: 
                begin 
                    HEX0 = ~7'b0000000; // 7
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0000111;
                    HEX3 = ~7'b0111111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b001000: 
                begin 
                    HEX0 = ~7'b0000000; // 8
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1111111;
                    HEX3 = ~7'b0111111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b001001: 
                begin 
                    HEX0 = ~7'b0000000; // 9
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1101111;
                    HEX3 = ~7'b0111111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b001010: 
                begin 
                    HEX0 = ~7'b0000000; // A
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1110111;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b001011: 
                begin 
                    HEX0 = ~7'b0000000; // B
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1111100;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b001100: 
                begin 
                    HEX0 = ~7'b0000000; // C
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0111001;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b001101: 
                begin 
                    HEX0 = ~7'b0000000; // D
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1011110;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b001110: 
                begin 
                    HEX0 = ~7'b0000000; // E
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1111001;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b001111: 
                begin 
                    HEX0 = ~7'b0000000; // F
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1110001;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b010000: 
                begin 
                    HEX0 = ~7'b0000000; // G
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1101111;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b010001: 
                begin 
                    HEX0 = ~7'b0000000; // H
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1110110;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b010010: 
                begin 
                    HEX0 = ~7'b0000000; // I
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0000110;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b010011: 
                begin 
                    HEX0 = ~7'b0000000; // J
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0001110;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b010100: 
                begin 
                    HEX0 = ~7'b0000000; // K
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0110001;
                    HEX3 = ~7'b0001111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b010101: 
                begin 
                    HEX0 = ~7'b0000000; // L
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0111000;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b010110: 
                begin 
                    HEX0 = ~7'b0000000; // M
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0110111;
                    HEX3 = ~7'b0110111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b010111: 
                begin 
                    HEX0 = ~7'b0000000; // N
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0110111;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b011000: 
                begin 
                    HEX0 = ~7'b0000000; // O
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1011100;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b011001: 
                begin 
                    HEX0 = ~7'b0000000; // P
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1110011;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b011010: 
                begin 
                    HEX0 = ~7'b0000000; // Q
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1100111;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b011011: 
                begin 
                    HEX0 = ~7'b0000000; // R
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1010000;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b011100: 
                begin 
                    HEX0 = ~7'b0000000; // S
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1101101;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b011101: 
                begin 
                    HEX0 = ~7'b0000000; // T
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0110001;
                    HEX3 = ~7'b0000001;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b011110: 
                begin 
                    HEX0 = ~7'b0000000; // U
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0111110;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b011111: 
                begin 
                    HEX0 = ~7'b0000000; // V
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0000110;
                    HEX3 = ~7'b0110000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b100000: 
                begin 
                    HEX0 = ~7'b0000000; // W
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0111110;
                    HEX3 = ~7'b0111110;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b100001: 
                begin 
                    HEX0 = ~7'b0000000; // X
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b0111001;
                    HEX3 = ~7'b0001111;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b100010: 
                begin 
                    HEX0 = ~7'b0000000; // Y
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1100110;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
            6'b100011: 
                begin 
                    HEX0 = ~7'b0000000; // Z
                    HEX1 = ~7'b0000000;
                    HEX2 = ~7'b1011011;
                    HEX3 = ~7'b0000000;
                    HEX4 = ~7'b0000000;
                    HEX5 = ~7'b0000000;                    
                end
				6'b100101:
					begin
                    HEX0 = ~7'b1000000; // beforeTwo
                    HEX1 = ~7'b1010000;
                    HEX2 = ~7'b0111111;
                    HEX3 = ~7'b0110001;
                    HEX4 = ~7'b1011101;
                    HEX5 = ~7'b1011110; 					
					end
				6'b100110:
					begin
                    HEX0 = ~7'b1000000; // beforeEight
                    HEX1 = ~7'b1010000;
                    HEX2 = ~7'b0111111;
                    HEX3 = ~7'b0110001;
                    HEX4 = ~7'b1011101;
                    HEX5 = ~7'b1011110; 					
					end
				6'b100111:
					begin
                    HEX0 = ~7'b1000000; // zeroORnine
                    HEX1 = ~7'b1010000;
                    HEX2 = ~7'b0111111;
                    HEX3 = ~7'b0110001;
                    HEX4 = ~7'b1011101;
                    HEX5 = ~7'b1011110; 					
					end
            default: // special or unused states
                begin 
                    HEX0 = ~7'b1111001; // E
                    HEX1 = ~7'b1011110; // D
                    HEX2 = ~7'b1011100; // O
                    HEX3 = ~7'b0111001; // C
                    HEX4 = ~7'b1111001; // E
                    HEX5 = ~7'b1011110; // D
                end 
        endcase
    end
endmodule

module display_testbench();
	logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	logic [5:0] state;
	

	display dut (.state, .HEX0, .HEX1, .HEX2, .HEX3, .HEX4, .HEX5);
	// Try all combinations of inputs.
	integer i;
	initial begin
		for(i = 0; i <64; i++) begin
			state = i; #10;
		end
	end
endmodule
