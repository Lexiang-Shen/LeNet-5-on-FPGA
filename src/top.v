`timescale 1ns/1ps
//�̻�������Ĳ���
`include "z_param_conv1_bias.v"     //CONV1_BIAS������һ�����ƫ�ô��� conv1_bias_array [0:5]
`include "z_param_conv1_weight.v"   //CONV1_WEIGHT������һ�����Ȩ�ش���conv1_weight_array
`include "z_param_conv2_bias.v"     //CONV2_BIAS�����ڶ������ƫ�ô���conv2_bias_array [0:5]
`include "z_param_conv2_weight.v"   //CONV2_WEIGHT�����ڶ������Ȩ�ش���conv2_weight_array
`include "z_param_linear1_bias.v"   //LINEAR1_BIAS������һȫ���Ӳ�ƫ�ô���linear1_bias_array [0:11]
`include "z_param_linear1_weight.v" //LINEAR1_WEIGHT������һȫ���Ӳ�Ȩ�ش���linear1_weight_array [0:11][0:149]
`include "z_param_linear2_bias.v"   //LINEAR2_BIAS������һȫ���Ӳ�ƫ�ô���linear2_bias_array [0:9]
`include "z_param_linear2_weight.v" //LINEAR2_WEIGHT������һȫ���Ӳ�Ȩ�ش���linear2_weight_array [0:9][0:11]

`include "y_adder.v"                //ADDERS��������112���ӷ�����������added_1 [0:111]��added_2 [0:111]�����Ϊadd_result [0:111]
`include "y_productor.v"            //PRODUCTORS��������112���˷�����������producted_1 [0:111]��producted_2 [0:111]�����Ϊproduct_result [0:111]
`include "y_comparer.v"             //COMPARERS��������2�������Ƚ�������һ������Ϊcompared_1 [0:3]���ڶ�������Ϊcompared_2 [0:3]�������Ϊcompare_result [0:1]
`include "y_param_state.v"          //STATE_PARAM��������״̬��������״̬
`include "y_compare_10.v"           //COMPARE_10������������ʮ���Ƚ���

`include "x_state.v"                //STATE���涨��״̬ת������
`include "x_in_img_array.v"         //IN_IMG_ARRAY���涨������Ĵ����ĸ�ֵ����
`include "x_added.v"                //ADDED���涨��added_1��added_2����Ϊ
`include "x_cache.v"                //CACHE���涨��cache����Ϊ
`include "x_compare.v"              //COMPARED���涨��compared_1��compared_2����Ϊ
`include "x_conv1_result.v"         //CONV1_RESULT��������conv1_result���涨����Ϊ
`include "x_conv2_result.v"         //CONV2_RESULT������conv2_result���涨����Ϊ
`include "x_linear2_result.v"       //LINEAR2_RESULT������linear2_result���涨����Ϊ
`include "x_producted.v"            //PRODUCTED���涨��producted_1��producted_2����Ϊ

module top(
    clk,
    rst_n,
    bit_in,

	finish,
	later_read,

    outnum
);
input clk;
input rst_n;
input bit_in;
input later_read;
output finish;
output [0:9] outnum;

wire uart_later_read;
wire [14111:0] uart_d_out;
wire uart_finish;

uart u_uart(
    .clk        (clk        ),
    .rst_n      (rst_n      ),
    .bit_in     (bit_in     ),
    .later_read (uart_later_read),
    .d_out      (uart_d_out ),
    .finish     (uart_finish)
);

lenet5 #(28,10,18) u_lenet5(
    .clk        (clk        ),
    .rst_n      (rst_n      ),
    .pre_finish (uart_finish),
	.finish     (finish     ),
	.i_read     (uart_later_read),
	.later_read (later_read ),
    .img        (uart_d_out ),
    .outnum     (outnum     )
);

endmodule