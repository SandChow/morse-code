module DE1_SoC(CLOCK_50, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR, SW);
    input  logic CLOCK_50; // 50MHz clock.
    output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
    output logic [9:0] LEDR;
    input  logic [3:0] KEY; // True when not pressed, False when pressed
    input  logic [9:0] SW;

    // Generate clk off of CLOCK_50, whichClock picks rate.
    logic [31:0] clk;
    parameter whichClock = 25;
    clock_divider cdiv (CLOCK_50, clk); 

    // Hook up FSM inputs and outputs.
    logic Reset, dot, dash;
    assign Reset = SW[9]; // Reset when SW[9] is on.
	 assign HEX0 = 7'b1111111;
    assign HEX1 = 7'b1111111;
    assign HEX2 = 7'b1111111;
    assign HEX3 = 7'b1111111;
    assign HEX4 = 7'b1111111;
	 assign HEX5 = 7'b1111111;
	 
    inputParser dotORdash (.Clock(clk[whichClock]), .Reset, .unparsed(KEY[0]), .dot, .dash);

	 assign LEDR = {clk[whichClock], 1'b0, Reset, 1'b0, dot, dash};

endmodule

module DE1_SoC_testbench();
    logic clk;
    logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
    logic [9:0] LEDR;
    logic [3:0] KEY; // True when not pressed, False when pressed
    logic [9:0] SW;

    DE1_SoC dut (clk, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR, SW);

    // Set up the clock.
    parameter CLOCK_PERIOD=100;
    initial begin
        clk <= 0;
        forever #(CLOCK_PERIOD/2) clk <= ~clk;
    end

    // Set up the inputs to the design. Each line is a clock cycle.
    initial begin
							@(posedge clk);
        SW[9] <= 1;                                     @(posedge clk);
                                                        @(posedge clk);		  
        SW[9] <= 0;KEY[0] <= 0;                         @(posedge clk);
                                                        @(posedge clk);	 
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
                                                        @(posedge clk);
        KEY[0] <= 1;					@(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);
        KEY[0] <= 1;                                    @(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);
        KEY[0] <= 1;                                    @(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);
        KEY[0] <= 1;                                    @(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);
        KEY[0] <= 1;                                    @(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);
        KEY[0] <= 1;                                    @(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);
        KEY[0] <= 1;                                    @(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);
        KEY[0] <= 1;                                    @(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);
        KEY[0] <= 1;                                    @(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);
        KEY[0] <= 1;                                    @(posedge clk);
        KEY[0] <= 0;                                    @(posedge clk);  																	  
        $stop; // End the simulation.
    end
endmodule 
