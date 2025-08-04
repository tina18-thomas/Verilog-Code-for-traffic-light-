`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 11:40:02
// Design Name: 
// Module Name: tb_traffic_light_controller
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


module tb_traffic_light_controller();
    reg clk,reset, Sa,Sb;
    wire Ra,Ya,Ga;
    wire Rb,Yb,Gb;
    
    traffic_light_controller CTRL0(
        .clk(clk),
        .reset(reset),
        .Sa(Sa),
        .Sb(Sb),
        .Ra(Ra),
        .Ya(Ya),
        .Ga(Ga),
        .Rb(Rb),
        .Yb(Yb),
        .Gb(Gb));
        
        wire [1:0] light_A, light_B;
        
        localparam R = 0;
        localparam Y = 1;
        localparam G = 2;
        
        assign light_A = Ra? R: Ya? Y : Ga? G: light_A;
        assign light_B = Rb? R: Yb? Y : Gb? G: light_B;
        
        
        localparam T = 10;
        always 
        begin
            clk = 1'b0;
            #(T / 2);
            clk = 1'b1;
            #(T / 2);
            end
            
            initial
            begin
            
            reset = 1'b0;
            #2
            reset=1'b1;
            
            Sa =0;
            Sb =0;
            
            #80;
            
            Sa = 0;
             Sb = 1;
        #100
        
        // Cars at both streets
        Sa = 1;
        Sb = 1;
        #300;
        
        // Car appears at B, then no cars at either streets
        Sa = 0;
        Sb = 1;     
        #20;
        Sb = 0;
        Sa = 0;
       
        #300 $stop;
     end
        
endmodule
