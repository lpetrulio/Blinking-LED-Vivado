module clock_divider(
    input wire i_clk,       // 100 MHz input clock
    input wire reset,       // Active-high reset
    output reg clk_1hz      // 1 Hz output clock
);

    reg [26:0] counter;

    always @(posedge i_clk) begin
        if (reset == 1'b1) begin 
            counter <= 0; 
            clk_1hz <= 0; 
        end else begin
            if (counter == 49_999_999) begin
                counter <= 0; 
                clk_1hz <= ~clk_1hz;
            end else begin 
                counter <= counter + 1; 
            end 
        end 
    end 

endmodule



