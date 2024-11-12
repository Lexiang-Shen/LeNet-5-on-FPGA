// //bias = -10
// `define CONV2_BIAS \
// reg [0:17] conv2_bias_array [0:5];\
// always@(posedge clk or negedge rst_n) begin\
//     conv2_bias_array[0] <= 18'h22800;\
//     conv2_bias_array[1] <= 18'h22800;\
//     conv2_bias_array[2] <= 18'h22800;\
//     conv2_bias_array[3] <= 18'h22800;\
//     conv2_bias_array[4] <= 18'h22800;\
//     conv2_bias_array[5] <= 18'h22800;\
// end

`define CONV2_BIAS \
reg [0:17] conv2_bias_array [0:5];\
always@(posedge clk) begin\
    conv2_bias_array[0] <= 18'h00096;\
    conv2_bias_array[1] <= 18'h00054;\
    conv2_bias_array[2] <= 18'h200a1;\
    conv2_bias_array[3] <= 18'h20143;\
    conv2_bias_array[4] <= 18'h00080;\
    conv2_bias_array[5] <= 18'h0000b;\
end

