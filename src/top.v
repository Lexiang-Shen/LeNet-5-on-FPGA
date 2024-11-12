`timescale 1ns/1ps
//固化神经网络的参数
`include "z_param_conv1_bias.v"     //CONV1_BIAS，将第一卷积层偏置存入 conv1_bias_array [0:5]
`include "z_param_conv1_weight.v"   //CONV1_WEIGHT，将第一卷积层权重存入conv1_weight_array
`include "z_param_conv2_bias.v"     //CONV2_BIAS，将第二卷积层偏置存入conv2_bias_array [0:5]
`include "z_param_conv2_weight.v"   //CONV2_WEIGHT，将第二卷积层权重存入conv2_weight_array
`include "z_param_linear1_bias.v"   //LINEAR1_BIAS，将第一全连接层偏置存入linear1_bias_array [0:11]
`include "z_param_linear1_weight.v" //LINEAR1_WEIGHT，将第一全连接层权重存入linear1_weight_array [0:11][0:149]
`include "z_param_linear2_bias.v"   //LINEAR2_BIAS，将第一全连接层偏置存入linear2_bias_array [0:9]
`include "z_param_linear2_weight.v" //LINEAR2_WEIGHT，将第一全连接层权重存入linear2_weight_array [0:9][0:11]

`include "y_adder.v"                //ADDERS，定义了112个加法器，加数有added_1 [0:111]、added_2 [0:111]，结果为add_result [0:111]
`include "y_productor.v"            //PRODUCTORS，定义了112个乘法器，乘数有producted_1 [0:111]、producted_2 [0:111]，结果为product_result [0:111]
`include "y_comparer.v"             //COMPARERS，定义了2个四数比较器，第一个输入为compared_1 [0:3]，第二个输入为compared_2 [0:3]，两结果为compare_result [0:1]
`include "y_param_state.v"          //STATE_PARAM，定义了状态机的所有状态
`include "y_compare_10.v"           //COMPARE_10，例化了最后的十数比较器

`include "x_state.v"                //STATE，规定了状态转换条件
`include "x_in_img_array.v"         //IN_IMG_ARRAY，规定了输入寄存器的赋值条件
`include "x_added.v"                //ADDED，规定了added_1和added_2的行为
`include "x_cache.v"                //CACHE，规定了cache的行为
`include "x_compare.v"              //COMPARED，规定了compared_1和compared_2的行为
`include "x_conv1_result.v"         //CONV1_RESULT，定义了conv1_result并规定其行为
`include "x_conv2_result.v"         //CONV2_RESULT，定义conv2_result并规定其行为
`include "x_linear2_result.v"       //LINEAR2_RESULT，定义linear2_result并规定其行为
`include "x_producted.v"            //PRODUCTED，规定了producted_1和producted_2的行为

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