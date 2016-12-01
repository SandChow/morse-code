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
                end
            A:
                begin
                    if (dot & ~dash)
                        ns = R;
                    else if (~dot & dash)
                        ns = W;
                end
            B:
                begin
                    if (dot & ~dash)
                        ns = six;
                end
            C:
                begin
                    if (~dot & ~dash)
                        ns = C;
                end
            D:
                begin
                    if (dot & ~dash)
                        ns = B;
                    else if (~dot & dash)
                        ns = X;
                end
            E:
                begin
                    if (dot & ~dash)
                        ns = I;
                    else if (~dot & dash)
                        ns = A;
                end
            G:
                begin
                    if (dot & ~dash)
                        ns = Z;
                    else if (~dot & dash)
                        ns = Q;
                end
            H:
                begin
                    if (dot & ~dash)
                        ns = five;
                    else if (~dot & dash)
                        ns = four;
                end
            J:
                begin
                    if (~dot & dash)
                        ns = one;
                end
            K:
                begin
                    if (dot & ~dash)
                        ns = C;
                    else if (~dot & dash)
                        ns = Y;
                end
            M:
                begin
                    if (dot & ~dash)
                        ns = G;
                    else if (~dot & dash)
                        ns = O;
                end
            N:
                begin
                    if (dot & ~dash)
                        ns = D;
                    else if (~dot & dash)
                        ns = K;
                end
            O:
                begin
                    if (dot & ~dash)
                        ns = beforeEight;
                    else if (~dot & dash)
                        ns = zeroORnine;
                end
            R:
                begin
                    if (dot & ~dash)
                        ns = L;
                end
            S:
                begin
                    if (dot & ~dash)
                        ns = H;
                    else if (~dot & dash)
                        ns = V;
                end
            T:
                begin
                    if (dot & ~dash)
                        ns = N;
                    else if (~dot & dash)
                        ns = M;
                end
            U:
                begin
                    if (dot & ~dash)
                        ns = F;
                    else if (~dot & dash)
                        ns = beforeTwo;
                end
            V:
                begin
                    if (~dot & dash)
                        ns = three;
                end
            W:
                begin
                    if (dot & ~dash)
                        ns = P;
                    else if (~dot & dash)
                        ns = J;
                end
            Z:
                begin
                    if (dot & ~dash)
                        ns = seven;
                end
            beforeTwo:
                begin
                    if (~dot & dash)
                        ns = two;
                end
            beforeEight:
                begin
                    if (dot & ~dash)
                        ns = eight;
                end
            zeroORnine:
                begin
                    if (~dot & dash)
                        ns = zero;
                    else if (dot & ~dash)
                        ns = nine;
                end
            default: 
                begin
                    if (~dot & ~dash)
                        ns = ps;
                    else
                        ns = decoding;
                end
        endcase
    end

    assign out = ps;

    always_ff @(posedge Clock)
        if (Reset)
            ps <= decoding;
        else
            ps <= ns;
endmodule