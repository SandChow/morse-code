/* 
0   -----   A   .-      K   -.-     U   ..-  
1   .----   B   -...    L   .-..    V   ...-  
2   ..---   C   -.-.    M   --      W   .--  
3   ...--   D   -..     N   -.      X   -..- 
4   ....-   E   .       O   ---     Y   -.--
5   .....   F   ..-.    P   .--.    Z   --..
6   -....   G   --.     Q   --.-    
7   --...   H   ....    R   .-.      
8   ---..   I   ..      S   ...    
9   ----.   J   .---    T   -                   
*/

/*
If ~(dot ^ dash) == 1: next state will always be present state.
If (dot & ~dash) or (~dot & dash) is/are invalid: next state will always go back to decoding.
*/

module morse(Clock, Reset, dot, dash, out);
    input logic Clock, Reset, dot, dash;
    logic [5:0] ps, ns;
    output logic [5:0] out;
    // numbers
    parameter [5:0]  zero = 6'b000000,  one = 6'b000001, two = 6'b000010, three = 6'b000011,
                     four = 6'b000100, five = 6'b000101, six = 6'b000110, seven = 6'b000111,
                    eight = 6'b001000, nine = 6'b001001;
    // alphabets
    parameter [5:0] A = 6'b001010, B = 6'b001011, C = 6'b001100, D = 6'b001101,
                    E = 6'b001110, F = 6'b001111, G = 6'b010000, H = 6'b010001,
                    I = 6'b010010, J = 6'b010011, K = 6'b010100, L = 6'b010101,
                    M = 6'b010110, N = 6'b010111, O = 6'b011000, P = 6'b011001,
                    Q = 6'b011010, R = 6'b011011, S = 6'b011100, T = 6'b011101,
                    U = 6'b011110, V = 6'b011111, W = 6'b100000, X = 6'b100001,
                    Y = 6'b100010, Z = 6'b100011;    
    // special states
    parameter [5:0] decoding = 6'b100100, beforeTwo = 6'b100101, beforeEight = 6'b100110, zeroORnine = 6'b100111;

    always_comb begin
        case (ps)
            decoding:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                    else
                        ns = ps;
                end
            A:
                begin
                    if (dot & ~dash)
                        ns = R;
                    else if (~dot & dash)
                        ns = W;
                    else
                        ns = ps;
                end
            B:
                begin
                    if (dot & ~dash)
                        ns = six;
                    else if (~dot & dash)
                        ns = decoding;
                    else
                        ns = ps;
                end
            C:
                begin
                    if (dot ^ dash)
                        ns = decoding;
                    else
                        ns = ps;
                end
            D:
                begin
                    if (dot & ~dash)
                        ns = B;
                    else if (~dot & dash)
                        ns = X;
                    else
                        ns = ps;
                end
            E:
                begin
                    if (dot & ~dash)
                        ns = I;
                    else if (~dot & dash)
                        ns = A;
                    else
                        ns = ps;
                end
            F:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            G:
                begin
                    if (dot & ~dash)
                        ns = Z;
                    else if (~dot & dash)
                        ns = Q;
                    else
                        ns = ps;
                end
            H:
                begin
                    if (dot & ~dash)
                        ns = five;
                    else if (~dot & dash)
                        ns = four;
                    else
                        ns = ps;
                end
            I: 
                begin
                    if (dot & ~dash)
                        ns = S;
                    else if (~dot & dash)
                        ns = U;
                    else
                    ns = ps;
                end
            J:
                begin
                    if (~dot & dash)
                        ns = one;
                    else if (dot & ~dash)
                        ns = decoding;
                    else
                        ns = ps;
                end
            K:
                begin
                    if (dot & ~dash)
                        ns = C;
                    else if (~dot & dash)
                        ns = Y;
                    else
                        ns = ps;
                end
            L:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            M:
                begin
                    if (dot & ~dash)
                        ns = G;
                    else if (~dot & dash)
                        ns = O;
                    else
                        ns = ps;
                end
            N:
                begin
                    if (dot & ~dash)
                        ns = D;
                    else if (~dot & dash)
                        ns = K;
                    else
                        ns = ps;
                end
            O:
                begin
                    if (dot & ~dash)
                        ns = beforeEight;
                    else if (~dot & dash)
                        ns = zeroORnine;
                    else
                        ns = ps;
                end
            P:
                if (~(dot ^ dash))
                    ns = ps;
                else
                    ns = decoding;
            Q:
                if (~(dot ^ dash))
                    ns = ps;
                else
                    ns = decoding;
            R:
                begin
                    if (dot & ~dash)
                        ns = L;
                    if (~dot & dash)
                        ns = decoding;
                    else
                        ns = ps;
                end
            S:
                begin
                    if (dot & ~dash)
                        ns = H;
                    else if (~dot & dash)
                        ns = V;
                    else
                        ns = ps;
                end
            T:
                begin
                    if (dot & ~dash)
                        ns = N;
                    else if (~dot & dash)
                        ns = M;
                    else
                        ns = ps;
                end
            U:
                begin
                    if (dot & ~dash)
                        ns = F;
                    else if (~dot & dash)
                        ns = beforeTwo;
                    else
                        ns = ps;
                end
            V:
                begin
                    if (~dot & dash)
                        ns = three;
                    else if (dot & ~dash)
                        ns = decoding;
                    else
                        ns = ps;
                end
            W:
                begin
                    if (dot & ~dash)
                        ns = P;
                    else if (~dot & dash)
                        ns = J;
                    else
                    ns = ps;
                end
            X:
                if (~(dot ^ dash))
                    ns = ps;
                else
                    ns = decoding;
            Y:
                if (~(dot ^ dash))
                    ns = ps;
                else
                    ns = decoding;
            Z:
                begin
                    if (dot & ~dash)
                        ns = seven;
                    else if (~dot & dash)
                        ns = decoding;
                    else
                        ns = ps;
                end
            beforeTwo:
                begin
                    if (~dot & dash)
                        ns = two;
                    else if (dot & ~dash)
                        ns = decoding;
                    else
                        ns = ps;
                end
            beforeEight:
                begin
                    if (dot & ~dash)
                        ns = eight;
                    else if (~dot & dash)
                        ns = decoding;
                    else
                        ns = ps;
                end
            zeroORnine:
                begin
                    if (~dot & dash)
                        ns = zero;
                    else if (dot & ~dash)
                        ns = nine;
                    else
                        ns = ps;
                end
            zero:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            one:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end            
            two:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            three:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            four:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            five:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            six:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            seven:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            eight:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            nine:
                begin
                    if (~(dot ^ dash))
                        ns = ps;
                    else
                        ns = decoding;
                end
            default: 
                ns = decoding;                
        endcase
    end

    assign out = ps;

    always_ff @(posedge Clock)
        if (Reset)
            ps <= decoding;
        else
            ps <= ns;
endmodule

module morse_testbench();
    logic clk, reset, dot, dash;
	logic [5:0] out;

    morse dut (clk, reset, dot, dash, out);

    // Set up the clock.
    parameter CLOCK_PERIOD=100;
    initial begin
        clk <= 0;
        forever #(CLOCK_PERIOD/2) clk <= ~clk;
    end

    // Set up the inputs to the design. Each line is a clock cycle.
    initial begin
        reset <= 1;                                     @(posedge clk);
        reset <= 0; dot <= 1;                           @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
        dot <= 0; dash <= 1;                            @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
        dot <= 1;                                       @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
        $stop;
    end
endmodule