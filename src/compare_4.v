`timescale 1ns / 1ps
//实现4个数比较,输出大的数,如果四个都是负数，就输出0
module compare_4(
	a,
	b,
	c,
	d,
	out
    );
input wire [17:0] a;
input wire [17:0] b;
input wire [17:0] c;
input wire [17:0] d;
output wire [17:0] out;

wire [17:0] out_1;
wire [17:0] out_2;

compare_2 u1_compare_2(
	.a 		(a)		,
	.b 		(b)		,
	.out 	(out_1)
);
compare_2 u2_compare_2(
	.a 		(c)		,
	.b 		(d)		,
	.out 	(out_2)
);
compare_2 u3_compare_2(
	.a 		(out_1)	,
	.b 		(out_2)	,
	.out 	(out)
);
	
endmodule
