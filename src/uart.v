`timescale 1ns / 1ps

module uart(
    clk,
    rst_n,
    bit_in,
    later_read,
    d_out,
    finish
);

input clk;
input rst_n;
input bit_in;
input later_read;
output reg [14111:0] d_out;
output reg finish;

reg [8:0] cnt;//0-433����Ƶ���������ʱ�ӣ���cnt=433ʱ���൱��bit_in��һλ�Ѿ���������
reg [3:0] rx_cnt;//0-9��0-8��Ϊ״̬�����жϣ������㵱ǰ֡�Ѿ������λ��
reg [10:0] cnt2;//0-1763����cnt2=1763��dout_vld���ߵ�ʱ�򣬲�Ҫ����������棬ֱ�ӽ�finish���ߣ��ú󼶶�ȡ����
reg rx_flag;//��־��ǰ���ڴ������ݣ��൱�ڡ�æ����־
reg dout_vld;//��־��ǰ֡���ݴ�����ϣ����Խ����������λ

//d_out
always @(posedge clk) begin
    if(!rst_n) d_out <= 14112'd0;
    else if(dout_vld&(cnt2!=11'd1763)) d_out = d_out << 8;
    else if(later_read) d_out <= 14112'd0;
    else if((rx_cnt>=4'd1)&(rx_cnt<=4'd8)&(cnt==9'd217))begin
        d_out[7:1] <= d_out[6:0];
        d_out[0] <= bit_in;
    end
end

//finish
always @(posedge clk) begin
    if(!rst_n) finish <= 1'b0;
    else if(dout_vld&(cnt2==11'd1763)) finish <= 1'b1;
    else if(later_read) finish <= 1'b0;
end

//cnt
always @(posedge clk) begin
    if(!rst_n) cnt <= 9'd0;
    else if(rx_flag&(cnt!=9'd433)) cnt <= cnt + 9'd1;
    else if((!rx_flag)|(cnt==9'd433)) cnt <= 9'd0;
end

//rx_cnt
always @(posedge clk) begin
    if(!rst_n) rx_cnt <= 4'd0;
    else if(rx_flag&(cnt==9'd433)) rx_cnt <= rx_cnt + 4'd1;
    else if(!rx_flag) rx_cnt <= 4'd0;
end

//cnt2
always @(posedge clk) begin
    if(!rst_n) cnt2 <= 11'd0;
    else if(dout_vld&(cnt2!=11'd1763)) cnt2 <= cnt2 + 11'd1;
    else if(dout_vld&(cnt2==11'd1763)) cnt2 <= 11'd0;
end

//rx_flag
always @(posedge clk) begin
    if(!rst_n) rx_flag <= 1'b0;
    else if(bit_in==1'b0) rx_flag <= 1'b1;
    else if(rx_cnt==4'd9) rx_flag <= 1'b0;
end

//dout_vld
always @(posedge clk) begin
    if(!rst_n) dout_vld <= 1'b0;
    else if((rx_cnt==4'd9)&(cnt==9'd0)) dout_vld <= 1'b1;
    else dout_vld <= 1'd0;
end

endmodule