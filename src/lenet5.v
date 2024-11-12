`timescale 1ns / 1ps
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

module lenet5(
    clk,
    rst_n,
    pre_finish,
	finish,
	i_read,
	later_read,
    img,
    outnum
);

parameter img_size = 28;
parameter out_num = 10;
parameter pixel_size = 18;

input wire [0:img_size*img_size*pixel_size-1] img;
input wire clk;
input wire rst_n;
input wire pre_finish;
input wire later_read;
output reg finish;
output reg i_read;
output wire [0:out_num-1] outnum;
//parameters 将所有神经网络的参数固化在存储器中
`CONV1_BIAS
`CONV1_WEIGHT
`CONV2_BIAS
`CONV2_WEIGHT
`LINEAR1_BIAS
`LINEAR1_WEIGHT
`LINEAR2_BIAS
`LINEAR2_WEIGHT
reg [0:17] cache [0:111];                   //容量为112的缓存，用来暂存数据
reg [0:7] cnt1,cnt2;                        //卷积时cnt1管行，cnt1管列
reg [0:6] state;                            //定义状态机的状态变量
reg [0:17] conv1_result [0:5][0:13][0:13];  //定义第一卷积层的结果
reg [0:17] conv2_result [0:149];            //定义第二卷积层的结果
reg [0:17] in_img_array [0:31][0:31];       //定义输入缓存
reg [0:17] linear2_result [0:9];            //定义第二全连接层的结果

`STATE_PARAM
`PRODUCTORS
`ADDERS
`COMPARERS
`COMPARE_10
`STATE
`IN_IMG_ARRAY
`ADDED
`CACHE
`COMPARED
`CONV1_RESULT
`CONV2_RESULT
`LINEAR2_RESULT
`PRODUCTED

//i_read
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) i_read <= 1'b0;
    else if((state==IDLE)&(pre_finish)) i_read <= 1'b1;
    else i_read <= 1'b0;
end

endmodule