`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////


module rom(
input [3:0] addr,
output reg [7:0] data_out
    );
    reg [7:0] mem [0:15];
    initial
    begin
    mem[0]=8'h54;
    mem[1]=8'h62;
    mem[2]=8'h43;
    mem[3]=8'h13;
    mem[4]=8'h65;
    mem[5]=8'h45;
    mem[6]=8'h53;
    mem[7]=8'h59;
    mem[8]=8'h43;
    mem[9]=8'h24;
    mem[10]=8'h34;
    mem[11]=8'h44;
    mem[12]=8'h8;
    mem[13]=8'h98;
    mem[14]=8'h32;
    mem[15]=8'h55;
    end
    always@(*)
    begin
    data_out<= mem[addr];
    end
    

endmodule
