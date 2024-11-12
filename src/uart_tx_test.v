module uart_tx_test(
    clk,
    rst_n,
    ena,
    in_data,
    bit_out,
    state
);

input clk;
input rst_n;
input ena;
input [14111:0] in_data;
output reg bit_out;
output reg state;

reg [0:14111] in_data_array;
reg [8:0] cnt1;//0-433,分频产生大时钟
reg [3:0] cnt2;//0-10，对传输的数据位进行计数
reg [10:0] cnt3;//0-1763，对传输的数据帧进行计数

//state
localparam IDLE = 1'b0;
localparam BUSY = 1'b1;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) state <= IDLE;
    else if((state==IDLE)&(ena)) state <= BUSY;
    else if((cnt3==11'd1763)&(cnt2==4'd10)&(cnt1==9'd433)) state <= IDLE;
end
//bit_out
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) bit_out <= 1'b1;
    else if((cnt2==4'd0)&(cnt1==9'd433)) bit_out <= 1'b0;
    else if((cnt2>=4'd1)&(cnt2<=4'd8)&(cnt1==9'd433)) bit_out <= in_data_array[0];
    else if(((cnt2==4'd9)|(cnt2==4'd10))&(cnt1==9'd433)) bit_out <= 1'b1;
end
//in_data_array
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) in_data_array <= 14112'd0;
    else if((state==IDLE)&(ena)) in_data_array <= in_data;
    else if((cnt2>=4'd1)&(cnt2<=4'd8)&(cnt1==9'd433)) in_data_array <= in_data_array << 1;
end
//cnt1
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) cnt1 <= 9'd0;
    else if(cnt1==9'd433) cnt1 <= 9'd0;
    else if(state==BUSY) cnt1 <= cnt1 + 9'd1;
end
//cnt2
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) cnt2 <= 4'd0;
    else if((cnt2==4'd10)&(cnt1==9'd433)) cnt2 <= 4'd0;
    else if(cnt1==9'd433) cnt2 <= cnt2 + 4'd1;
end
//cnt3
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) cnt3 <= 11'd0;
    else if((cnt3==11'd1763)&(cnt2==4'd10)&(cnt1==9'd433)) cnt3 <= 11'd0;
    else if((cnt2==4'd10)&(cnt1==9'd433)) cnt3 <= cnt3 + 11'd1;
end

endmodule