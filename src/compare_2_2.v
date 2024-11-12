`timescale 1ns / 1ps

//ʵ��������������Ƚϣ�������������ʹ���Ǹ���Ҳ���������
module compare_2_2(
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
	else begin
		if(a[16:0]>b[16:0]) out = b;
		else out = a;
	end
end
endmodule
