`define LINEAR1_BIAS \
reg [0:17] linear1_bias_array [0:11];\
always@(posedge clk) begin\
    linear1_bias_array[0] <= 18'h20004;\
    linear1_bias_array[1] <= 18'h20039;\
    linear1_bias_array[2] <= 18'h00110;\
    linear1_bias_array[3] <= 18'h000f6;\
    linear1_bias_array[4] <= 18'h20041;\
    linear1_bias_array[5] <= 18'h200ad;\
    linear1_bias_array[6] <= 18'h20049;\
    linear1_bias_array[7] <= 18'h00002;\
    linear1_bias_array[8] <= 18'h00007;\
    linear1_bias_array[9] <= 18'h00034;\
    linear1_bias_array[10] <= 18'h20072;\
    linear1_bias_array[11] <= 18'h20039;\
end

// //20080     02800
// //-0.125    10
// `define LINEAR1_BIAS \
// reg [0:17] linear1_bias_array [0:11];\
// always@(posedge clk or negedge rst_n) begin\
//     linear1_bias_array[0] <= 18'h20080;\
//     linear1_bias_array[1] <= 18'h02800;\
//     linear1_bias_array[2] <= 18'h20080;\
//     linear1_bias_array[3] <= 18'h02800;\
//     linear1_bias_array[4] <= 18'h20080;\
//     linear1_bias_array[5] <= 18'h02800;\
//     linear1_bias_array[6] <= 18'h20080;\
//     linear1_bias_array[7] <= 18'h02800;\
//     linear1_bias_array[8] <= 18'h20080;\
//     linear1_bias_array[9] <= 18'h02800;\
//     linear1_bias_array[10] <= 18'h20080;\
//     linear1_bias_array[11] <= 18'h02800;\
// end