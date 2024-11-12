`timescale 1ns / 1ps
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
//parameters ������������Ĳ����̻��ڴ洢����
`CONV1_BIAS
`CONV1_WEIGHT
`CONV2_BIAS
`CONV2_WEIGHT
`LINEAR1_BIAS
`LINEAR1_WEIGHT
`LINEAR2_BIAS
`LINEAR2_WEIGHT
reg [0:17] cache [0:111];                   //����Ϊ112�Ļ��棬�����ݴ�����
reg [0:7] cnt1,cnt2;                        //���ʱcnt1���У�cnt1����
reg [0:6] state;                            //����״̬����״̬����
reg [0:17] conv1_result [0:5][0:13][0:13];  //�����һ�����Ľ��
reg [0:17] conv2_result [0:149];            //����ڶ������Ľ��
reg [0:17] in_img_array [0:31][0:31];       //�������뻺��
reg [0:17] linear2_result [0:9];            //����ڶ�ȫ���Ӳ�Ľ��

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