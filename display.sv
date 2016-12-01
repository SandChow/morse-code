module display(state, HEX0);
    input logic [5:0] state;
    output logic [6:0] HEX0, HEX1;
    always_comb begin
        case (state)
                      // Light: 6543210`
            6'b000000: HEX0 = ~7'b0111111; // 0
            6'b000001: HEX0 = ~7'b0000110; // 1
            6'b000010: HEX0 = ~7'b1011011; // 2
            6'b000011: HEX0 = ~7'b1001111; // 3
            6'b000100: HEX0 = ~7'b1100110; // 4
            6'b000101: HEX0 = ~7'b1101101; // 5
            6'b000110: HEX0 = ~7'b1111101; // 6
            6'b000111: HEX0 = ~7'b0000111; // 7
            6'b001000: HEX0 = ~7'b1111111; // 8
            6'b001001: HEX0 = ~7'b1101111; // 9
            default:   
                begin
                       HEX0 = ~7'b1111111;
                       HEX1 = ~7'b1111111;
                end
        endcase
    end
endmodule