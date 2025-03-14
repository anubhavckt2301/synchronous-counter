`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 12:12:27
// Design Name: 
// Module Name: counter_sync
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


module counter_sync(data,load,reset,clk,updown,count);

    input [3:0] data;
    input wire load,reset,clk,updown;
    output reg [3:0] count;
    
    always @(posedge clk)
        begin
            if(reset) 
                count <= 4'b0000;
            else if(load)
                count <= data;
            else if(updown)//upcount
                count<=count+1;
            else 
                count<=count-1;
        end 
                
    
endmodule
