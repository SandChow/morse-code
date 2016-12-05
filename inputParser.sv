module inputParser(Clock, Reset, unparsed, out);
    input logic Clock, Reset, unparsed;
    logic tmp, parsed, ps, ns;
    output logic dot, dash;

    Dflipflop first (.Clock, .Reset, .d(unparsed), .q(tmp));
    Dflipflop second (.Clock, .Reset, .d(tmp), .q(parsed);