`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    rightshiftregister 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
/////////////////////////////////////      8 BIT RIGHT SHIFT REGISTER     ///////////////////////////////
module rightshiftregister(clock,clear,A,out
    );
input clock, clear;
input A;
output reg [7:0]out;
reg B,C,D,E,F,G,H;
always @(posedge clock or negedge clear)
begin
if (!clear)
begin
B=0;C=0;D=0;E=0;F=0;G=0;H=0;
out={A,B,C,D,E,F,G,H};
end
else
begin
H<=G;
G<=F;
F<=E;
E<=D;
D<=C;
C<=B;
B<=A;
out<={A,B,C,D,E,F,G,H};
end
end
endmodule
