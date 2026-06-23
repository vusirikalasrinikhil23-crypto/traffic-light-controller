`timescale 1ns/1ps

module Traffic_Light_Time_tb;

reg clk;
reg clr;

wire [5:0] lights;

Traffic_Light_Time uut(
    .clk(clk),
    .clr(clr),
    .lights(lights)
);

initial
begin
    clk = 0;
    clr = 1;

    #20 clr = 0;
end

always
begin
    #10 clk = ~clk;
end

initial
begin
    $monitor("Time=%0t State Lights=%b", $time, lights);

    #1000;
    $finish;
end

endmodule
