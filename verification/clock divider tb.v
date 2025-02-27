`timescale 1us / 1ps  // Using microseconds for easier long delays

module clock_divider_tb;

    // Declare testbench signals
    reg i_clk;
    reg reset;
    wire clk_1hz;

    // Instantiate the DUT (Device Under Test)
    clock_divider uut (
        .i_clk(i_clk),
        .reset(reset),
        .clk_1hz(clk_1hz)
    );

    // Generate a 100 MHz clock (10 ns period)
    always #0.005 i_clk = ~i_clk;  // Toggle every 0.005us (5ns) -> 100 MHz

    // Simulation process
    initial begin
        $dumpfile("waveform_clock_divider.vcd");
        $dumpvars(0, clock_divider_tb);

        // Initialize signals
        i_clk = 0;
        reset = 1;
        #50 reset = 0;  // Release reset after 50us

        // Print Debug Message
        $display("Simulation Started - Waiting for 1.5 seconds...");

        // Run simulation for 1.5 seconds (1,500,000 microseconds)
        #1500000;  

        $display("Simulation Complete!");
        $finish;
    end
endmodule

