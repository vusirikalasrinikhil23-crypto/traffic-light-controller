`timescale 1ns/1ps

module Traffic_Light_Sensor(

    input clk,
    input clr,
    input SNS1,
    input SNS2,

    output reg [1:0] TL1,
    output reg [1:0] TL2

);

reg [1:0] state;

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

parameter GREEN  = 2'b00;
parameter YELLOW = 2'b01;
parameter RED    = 2'b10;



always @(posedge clk or posedge clr)
begin

    if(clr)
        state <= S0;

    else
    begin

        if(state == S0)
        begin
            if(SNS2)
                state <= S1;
            else
                state <= S0;
        end

        else if(state == S1)
        begin
            state <= S2;
        end

        else if(state == S2)
        begin
            if(SNS1)
                state <= S3;
            else
                state <= S2;
        end

        else
        begin
            state <= S0;
        end

    end

end



always @(*)
begin

    if(state == S0)
    begin
        TL1 = GREEN;
        TL2 = RED;
    end

    else if(state == S1)
    begin
        TL1 = YELLOW;
        TL2 = RED;
    end

    else if(state == S2)
    begin
        TL1 = RED;
        TL2 = GREEN;
    end

    else
    begin
        TL1 = RED;
        TL2 = YELLOW;
    end

end

endmodule
