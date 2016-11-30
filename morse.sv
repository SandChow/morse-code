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
          decoding} ps, ns;

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
                    else if (~dot & ~dash)
                        ns = B
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
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            F:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            G:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            H:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            J:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            K:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            L:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            M:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            N:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            O:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            P:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            Q:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            R:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            S:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            T:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            U:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            V:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            W:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            X:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            Y:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            Z:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            zero:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            one:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            two:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            three:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            four:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            five:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            six:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            seven:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            eight:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            nine:
                begin
                    if (dot & ~dash)
                        ns = E;
                    else if (~dot & dash)
                        ns = T;
                end
            default: 
                begin
                    if (~dot & ~dash)
                        ns = ps;
                    else
                    ns = decoding;
                    out = 6'b111111;
                end
        endcase
    end


    always_ff @(posedge Clock)
        if (Reset)
            ps <= decoding;
        else
            ps <= ns;
endmodule