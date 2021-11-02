`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:18 05/22/2019 
// Design Name: 
// Module Name:    clkg 
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
//////////////////////////////////////////////////////////////////////////////////
module clkg(clko,reset,clk);
    output clko;
    input reset,clk;
    reg [5:0] count;
	 reg clko;
	 

    always @(posedge clk)
        begin
            if (!reset) 
				   begin
                count<=0; //同步复位
					 clko<=1;
				   end
            else
                {clko,count}<=count+1; //计数
					 
        end
		  



endmodule
