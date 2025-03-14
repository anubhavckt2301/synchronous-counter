`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 12:23:30
// Design Name: 
// Module Name: sync_counter_tb
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


module sync_counter_tb;

    reg load,reset,clk,updown;
    reg [3:0] data;
    wire [3:0] count;
    
    counter_sync dut(data,load,reset,clk,updown,count);
    
    initial 
        begin
            clk =1;reset =1;
            #100
            clk =1;reset =0;
            #100;
        end
        always #10 clk = ~clk;
endmodule
