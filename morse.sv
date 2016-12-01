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

    enum {A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,
          zero,one,two,three,four,five,six,seven,eight,nine,
          decoding, beforeTwo, beforeEight, zeroORnine} ps, ns;

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

    always_ff @(posedge Clock)
        if (Reset)
            ps <= decoding;
        else
            ps <= ns;
endmodule