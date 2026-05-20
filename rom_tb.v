`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 

module rom_tb(
    );
    reg [3:0] addr;
    wire [7:0] data_out;
    rom dut(addr,data_out);
    initial
    begin
    addr=0;
    end
    initial
    begin
    $monitor("Address = %d  Data = %h",
              addr, data_out);
    addr = 4'd0;
    #10;
    addr = 4'd1;
    #10;
    addr = 4'd2;
    #10;
    addr= 4'd3;
    #10;
    addr = 4'd4;
    #10;
    addr = 4'd5;
    #10;
    addr = 4'd10;
    #10;
    addr = 4'd15;
    #10;
    $finish;
end
endmodule
