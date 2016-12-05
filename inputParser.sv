/*
According to the International Morse Code, a dot is 1 unit and a dash is 3 units.
*/
module inputParser(Clock, Reset, unparsed, dot, dash);
    input logic Clock, Reset, unparsed;
    logic tmp, parsed;

    Dflipflop first (.Clock, .Reset, .d(unparsed), .q(tmp));
    Dflipflop second (.Clock, .Reset, .d(tmp), .q(parsed);

    logic ps, ns;
    logic [9:0] counter;
    output logic dot, dash;

    always_comb begin
        if (~parsed & counter > 10'b0000000000 & counter < 10'b0000000003)
            begin
                dot = 1;
                dash = 0;
            end
        else if (~parsed & counter > 10'b0000000003)
            begin
                dot = 0;
                dash = 1;
            end
        else
            begin
                dot = 0;
                dash = 0;
            end  
    end

    always_ff @(posedge Clock)
        if (parsed & ~reset)
            counter <= counter + 10'b0000000001;
        else
            count <= 10'b0;
endmodule

module inputParser_testbench();
    logic clk, reset, unparsed, dot, dash;

    inputParser dut (clk, reset, unparsed, dot, dash);

    // Set up the clock.
    parameter CLOCK_PERIOD=100;
    initial begin
        clk <= 0;
        forever #(CLOCK_PERIOD/2) clk <= ~clk;
    end

    // Set up the inputs to the design. Each line is a clock cycle.
    initial begin
        reset <= 1;                                     @(posedge clk);
        reset <= 0; unparsed <= 1;                      @(posedge clk);
                                                        @(posedge clk);
        unparsed <= 0;                                  @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
        unparsed <= 1;                                  @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
        unparsed <= 0;                                  @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
        $stop;
    end
endmodule