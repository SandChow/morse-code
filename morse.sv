/* 
A   .-      M   --      Y   -.--
B   -...    N   -.      Z   --..
C   -.-.    O   ---     0   -----
D   -..     P   .--.    1   .----
E   .       Q   --.-    2   ..---
F   ..-.    R   .-.     3   ...--
G   --.     S   ...     4   ....-
H   ....    T   -       5   .....
I   ..      U   ..-     6   -....
J   .---    V   ...-    7   --...
K   -.-     W   .--     8   ---..
L   .-..    X   -..-    9   ----.
*/

module morse(Clock, Reset, dot, dash, out);

    enum {A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,
          zero,one,two,three,four,five,six,seven,eight,nine,decoding} ps, ns;

    always_comb
        case (ps)
            decoding:
            A:
            B:
            C:
            D:
            E:
            F:
            G:
            H:
            J:
            K:
            L:
            M:
            N:
            O:
            P:
            Q:
            R:
            S:
            T:
            U:
            V:
            W:
            X:
            Y:
            Z:
            zero:
            one:
            two:
            three:
            four:
            five:
            six:
            seven:
            eight:
            nine:


    always_ff @(posedge Clock)
        if (Reset)
            ps <= decoding;
        else
            ps <= ns;
endmodule