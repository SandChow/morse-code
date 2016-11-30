/* 
Letter  Morse
A   .-
B   -...
C   -.-.
D   -..
E   .
F   ..-.
G   --.
H   ....
I   ..
J   .---
K   -.-
L   .-..
M   --
N   -.
O   ---
P   .--.
Q   --.-
R   .-.
S   ...
T   -
U   ..-
V   ...-
W   .--
X   -..-
Y   -.--
Z   --..
0   -----
1   .----
2   ..---
3   ...--
4   ....-
5   .....
6   -....
7   --...
8   ---..
9   ----.
*/
module morse(Clock, Reset, HEX0);

    always_ff @(posedge Clock)
        if (Reset)
            ps <= nothing;
        else
            ps <= ns;
endmodule