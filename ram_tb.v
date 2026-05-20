`timescale 1ns / 1ps


module ram_tb(
    );
    
 reg clk;
 reg wr_en;
 reg [3:0]addr;
 reg [7:0]data_in;
 wire [7:0]data_out;
 ram dut(clk,wr_en,addr,data_in,data_out);
 initial
 begin
 {clk,wr_en,addr,data_in}=0;
 end
 always
 begin
 #5 clk=~clk;
 end
 initial
 begin
 #10;
    wr_en = 1;
    addr = 4'd0;
    data_in = 8'hAA;

    #10;
    addr = 4'd1;
    data_in = 8'h55;

    #10;
    addr = 4'd2;
    data_in = 8'hF0;

    // STOP WRITING

    #10;
    wr_en = 0;

    // READ DATA

    #10;
    addr = 4'd0;

    #10;
    addr = 4'd1;

    #10;
    addr = 4'd2;

    #10;
    $finish;
end

initial
begin
    $monitor("Time=%0t Wr_en=%b Address=%d Data_In=%h Data_Out=%h",
              $time, wr_en, addr, data_in, data_out);
end


endmodule
