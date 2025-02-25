module top (
    input wire clk_100mhz,  // 100 MHz input clock
    input wire reset,       // Reset signal
    output wire led         // LED output
);

    wire clk_generated;  // The processed clock output from Clocking Wizard
    wire locked_signal;  // Indicates when the generated clock is stable

    // Instantiate the Clocking Wizard-generated module
    clk_wiz_0 clk_wiz_inst (
        .clk_in1(clk_100mhz),      // Connect 100 MHz input clock
        .reset(reset),             // Reset signal
        .locked(locked_signal),    // Locked signal output
        .clk_out1(clk_generated)   // Generated clock output (100 MHz in this case)
    );

    wire clk_1hz;

    // Instantiate the clock divider (divides clk_generated to 1 Hz)
    clock_divider clk_div (
        .i_clk(clk_generated), // Use generated clock as input
        .reset(reset),         // Reset signal
        .clk_1hz(clk_1hz)      // Output 1 Hz clock
    );

    // LED toggles at 1 Hz
    assign led = clk_1hz;

endmodule


