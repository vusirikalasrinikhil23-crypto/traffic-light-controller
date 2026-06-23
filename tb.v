`timescale 1ns/1ps

module tb;

reg clk;
reg rst;

wire [1:0] TL1;
wire [1:0] TL2;

traffic_light_4state DUT(
    .clk(clk),
    .rst(rst),
    .TL1(TL1),
    .TL2(TL2)
);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin
    rst = 1;
    #10 rst = 0;

    #100;
    $finish;
end

endmodule
