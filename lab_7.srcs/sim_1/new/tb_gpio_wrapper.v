`timescale 1ns / 1ps
module tb_gpio_wrapper(
    );
    reg clk, reset, we;
    reg [1:0]   address;
    reg [31:0]  gpi1, gpi2, data_in;
    wire [31:0] data_out, gpo1_out, gpo2_out;
    integer error_count, data_input;
    
    gpio_wrapper
        DUT(
            .clk(clk), .reset(reset), .we(we),
            .address(address), .gpi1(gpi1),
            .gpi2(gpi2), .data_in(data_in),
            .data_out(data_out), .gpo1_out(gpo1_out),
            .gpo2_out(gpo2_out)
        );
        
    initial begin
        
    end
endmodule
