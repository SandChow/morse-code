module Dflipflop(Clock, Reset, d, q);
    input logic Clock, d, Reset;
    output logic q;

    always_ff @(posedge Clock)
        if (Reset)
        q <= 0;
        else
        q <= d;
endmodule

module Dflipflop_testbench();
    logic clk, reset, d, q;

    Dflipflop dut (clk, reset, d, q);

    // Set up the clock.
    parameter CLOCK_PERIOD=100;
    initial begin
        clk <= 0;
        forever #(CLOCK_PERIOD/2) clk <= ~clk;
    end

    // Set up the inputs to the design. Each line is a clock cycle.
    initial begin
                                                        @(posedge clk);
        reset <= 1;                                     @(posedge clk);
        reset <= 0; d <= 1;                             @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
        d <= 0;                                         @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
        d <= 1;                                         @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
        $stop;
    end
endmodule