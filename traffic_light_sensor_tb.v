`timescale 1ns/1ps

module Traffic_Light_Sensor_tb;

reg clk;
reg clr;
reg SNS1;
reg SNS2;

wire [1:0] TL1;
wire [1:0] TL2;


Traffic_Light_Sensor uut(
    .clk(clk),
    .clr(clr),
    .SNS1(SNS1),
    .SNS2(SNS2),
    .TL1(TL1),
    .TL2(TL2)
);


always #5 clk = ~clk;


initial
begin

    
    clk  = 0;
    clr  = 1;
    SNS1 = 0;
    SNS2 = 0;

   
    #10;
    clr = 0;

   
    #20;
    SNS2 = 1;

    #20;
    SNS2 = 0;

    
    #40;
    SNS1 = 1;

    #20;
    SNS1 = 0;

  

    #40;
    SNS2 = 1;

    #20;
    SNS2 = 0;

    #40;
    SNS1 = 1;

    #20;
    SNS1 = 0;

    

    #40;
    SNS2 = 1;

    #20;
    SNS2 = 0;

    #40;
    SNS1 = 1;

    #20;
    SNS1 = 0;

    #100;

    $stop;

end

initial
begin
    $monitor(
    "Time=%0t | clr=%b | SNS1=%b | SNS2=%b | TL1=%b | TL2=%b",
     $time, clr, SNS1, SNS2, TL1, TL2);
end

endmodule
