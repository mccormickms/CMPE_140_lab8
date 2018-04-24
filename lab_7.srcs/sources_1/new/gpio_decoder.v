`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2018 07:57:32 PM
// Design Name: 
// Module Name: gpio_decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gpio_decoder(
    input we,
    input [3:2] address,
    output reg we1, we2,
    output reg [1:0] read_sel
    );
    always @(*) begin
        case (address)
            00:
                begin
                    we1 = 1'b0;
                    we2 = 1'b0;
                    read_sel = 2'b00;
                end
            01:
                begin
                    we1 = 1'b0;
                    we2 = 1'b0;
                    read_sel = 2'b01;
                end
            10:
                begin
                    if (we)begin
                        we1 = 1'b0;
                        we2 = 1'b0;
                        read_sel = 2'b10;
                    end
                    else begin
                        we1 = 1'b0;
                        we2 = 1'b0;
                        read_sel = 2'b10;
                    end
                end
            default:
                begin
                    if (we)begin
                        we1 = 1'b0;
                        we2 = 1'b1;
                        read_sel = 2'b11;
                    end
                    else begin
                        we1 = 1'b0;
                        we2 = 1'b0;
                        read_sel = 2'b11;
                    end
                end
        endcase
    end
endmodule
