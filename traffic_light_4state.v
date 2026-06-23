module traffic_light_4state(
    input clk,
    input rst,
    output reg [1:0] TL1,
    output reg [1:0] TL2
);

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

parameter GREEN  = 2'b00;
parameter YELLOW = 2'b01;
parameter RED    = 2'b10;

reg [1:0] state;


always @(posedge clk or posedge rst)
begin
    if(rst)
        state <= S0;
    else
    begin
        if(state == S0)
            state <= S1;
        else if(state == S1)
            state <= S2;
        else if(state == S2)
            state <= S3;
        else
            state <= S0;
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
