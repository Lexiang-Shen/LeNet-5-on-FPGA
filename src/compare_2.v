`timescale 1ns / 1ps

//ʵ������32λ�����ȸ������Ƚ�,�������������費�������������,����������Ǹ����������0
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
	else//(a[17]==1'b1)&&(b[17]==1'b1)��������Ǹ��ģ���ֱ�����0����һ��ֱ������˼����ReLU������
		out = 18'd0;
end
endmodule
