`timescale 1ns / 1ps

//实现十个浮点数比较，输出最大数的序号
module compare_10(
	clk,
	rst_n,
	pre_finish,
	finish,
	i_read,
	later_read,
	
	in_data,
	out_num
    );
parameter in_data_num = 10;
parameter pixel_width = 18;
parameter cnt_width = 4;//log(in_data_num+2)以二为底向上取整

input wire clk			;
input wire rst_n		;
input wire pre_finish	;
output wire finish		;
output wire i_read		;
input wire later_read	;
input wire [0:in_data_num*pixel_width-1] in_data;
output reg [0:in_data_num-1] out_num;

wire [pixel_width-1:0]compare_2_2_out;
reg [cnt_width-1:0] cnt;

//定义电路的三个状态：空闲、忙、完成。
localparam idle = 2'b00;
localparam busy = 2'b01;
localparam complete = 2'b10;
//state
reg [1:0] state;
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		state <= idle;
	end
	else begin
		case(state)
			idle:		if(pre_finish) state <= busy;
						else state <= state;
			busy:		if(cnt==in_data_num+4'd1) state <= complete;
						else state <= state;
			complete:	if(later_read) state <= idle;
						else state <= state;
			default:	state <= idle;
		endcase
	end
end

//cnt
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) cnt <= 0;
	else if(state==busy) cnt <= cnt + 1;
	else cnt <= 0;
end

//in_data_array
reg [0:pixel_width-1] in_data_array [0:in_data_num-1];
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		in_data_array[0] <= 18'd0;
		in_data_array[1] <= 18'd0;
		in_data_array[2] <= 18'd0;
		in_data_array[3] <= 18'd0;
		in_data_array[4] <= 18'd0;
		in_data_array[5] <= 18'd0;
		in_data_array[6] <= 18'd0;
		in_data_array[7] <= 18'd0;
		in_data_array[8] <= 18'd0;
		in_data_array[9] <= 18'd0;
	end
	else if((state==idle)&&(pre_finish)) begin
		in_data_array[0] <= in_data[18*0:18*1-1];
		in_data_array[1] <= in_data[18*1:18*2-1];
		in_data_array[2] <= in_data[18*2:18*3-1];
		in_data_array[3] <= in_data[18*3:18*4-1];
		in_data_array[4] <= in_data[18*4:18*5-1];
		in_data_array[5] <= in_data[18*5:18*6-1];
		in_data_array[6] <= in_data[18*6:18*7-1];
		in_data_array[7] <= in_data[18*7:18*8-1];
		in_data_array[8] <= in_data[18*8:18*9-1];
		in_data_array[9] <= in_data[18*9:18*10-1];
	end
	else;
end

//比较得到结果
reg [pixel_width-1:0] compared [0:1];
compare_2_2 u_compare_2_2(
	.a		(compared[0])	,
	.b		(compared[1])	,
	.out	(compare_2_2_out)
);
//compared[0]
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		compared[0] <= 0;
	end
	else if((state==busy)&&(cnt>0)&&(cnt<in_data_num)) begin
		case(cnt)
			4'd1 :compared[0] <= in_data_array[1];
			4'd2 :compared[0] <= in_data_array[2];
			4'd3 :compared[0] <= in_data_array[3];
			4'd4 :compared[0] <= in_data_array[4];
			4'd5 :compared[0] <= in_data_array[5];
			4'd6 :compared[0] <= in_data_array[6];
			4'd7 :compared[0] <= in_data_array[7];
			4'd8 :compared[0] <= in_data_array[8];
			4'd9 :compared[0] <= in_data_array[9];
			default:compared[0] <= 0;
		endcase
	end
	else begin
		compared[0] <= 0;
	end
end
//compared[1]
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		compared[1] <= 0;
	end
	else if((state==busy)&&(cnt==0)) begin
		compared[1] <= in_data_array[0];
	end
	else if((state==busy)&&(cnt>=2)&&(cnt<=10)) begin
		compared[1] <= compare_2_2_out;
	end
	else if(state==complete) begin
		compared[1] <= 0;
	end
	else begin
		compared[1] <= compared[1];
	end
end
// //out_num
// genvar i2;
// generate
// 	for(i2=0;i2<in_data_num;i2=i2+1) begin:out_num_1
// 		always@(posedge clk or negedge rst_n)begin:out_num_1
// 			if(!rst_n) out_num[i2] <= 1'b0;
// 			else if((state==busy)&&(cnt==in_data_num+1)) begin
// 				if(compared[1]==in_data_array[i2]) begin
// 					out_num[i2] <= 1'b1;
// 				end
// 				else begin
// 					out_num[i2] <= 1'b0;
// 				end
// 			end
// 			else if(state==idle) out_num[i2] <= 1'b0;
// 			else;
// 		end
// 	end
// endgenerate

always@(posedge clk or negedge rst_n)begin
	if(!rst_n) begin
		out_num <= 10'd0;
	end
	else if((state==busy)&&(cnt==in_data_num+4'd1)) begin
		if(compared[1]==in_data_array[0]) out_num[0] <= 1'b1;
		else out_num[0] <= 1'b0;
		if(compared[1]==in_data_array[1]) out_num[1] <= 1'b1;
		else out_num[1] <= 1'b0;
		if(compared[1]==in_data_array[2]) out_num[2] <= 1'b1;
		else out_num[2] <= 1'b0;
		if(compared[1]==in_data_array[3]) out_num[3] <= 1'b1;
		else out_num[3] <= 1'b0;
		if(compared[1]==in_data_array[4]) out_num[4] <= 1'b1;
		else out_num[4] <= 1'b0;
		if(compared[1]==in_data_array[5]) out_num[5] <= 1'b1;
		else out_num[5] <= 1'b0;
		if(compared[1]==in_data_array[6]) out_num[6] <= 1'b1;
		else out_num[6] <= 1'b0;
		if(compared[1]==in_data_array[7]) out_num[7] <= 1'b1;
		else out_num[7] <= 1'b0;
		if(compared[1]==in_data_array[8]) out_num[8] <= 1'b1;
		else out_num[8] <= 1'b0;
		if(compared[1]==in_data_array[9]) out_num[9] <= 1'b1;
		else out_num[9] <= 1'b0;
	end
	else if(state==idle) out_num <= 10'd0;
	else;
end

//i_read
reg i_read_reg;
assign i_read = i_read_reg;
always@(posedge clk or negedge rst_n)begin
	if(!rst_n) i_read_reg <= 0;
	else if(pre_finish&&(state == idle)) i_read_reg <= 1;
	else i_read_reg <= 0;
end
//finish
reg finish_reg;
assign finish = finish_reg;
always@(posedge clk or negedge rst_n)begin
	if(!rst_n) finish_reg <= 0;
	else if(cnt==in_data_num+4'd1) finish_reg <= 1;
	else if(state == idle) finish_reg <= 0;
	else finish_reg <= finish_reg;
end

endmodule
