`timescale 1ns / 1ps

//实现两个32位单精度浮点数比较,输出大的数（假设不会出现特殊数）,如果两个都是负数，就输出0
module compare_2(
	a,
	b,
	out
    );
input wire [17:0] a;
input wire [17:0] b;
output reg [17:0] out;

always@(*) begin
	if(a[17]<b[17])
		out = a;
	else if(a[17]>b[17])
		out = b;
	else if(!(a[17]|b[17])) begin
		if(a[16:0]>b[16:0]) out = a;
		else out = b;
	end
	else//(a[17]==1'b1)&&(b[17]==1'b1)，如果都是负的，就直接输出0。这一步直接完成了激活函数ReLU的任务。
		out = 18'd0;
end
endmodule
