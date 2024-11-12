
`define LINEAR2_BIAS \
reg [0:17] linear2_bias_array [0:9];\
always@(posedge clk) begin\
    linear2_bias_array[0] <= 18'h0028e;\
    linear2_bias_array[1] <= 18'h00391;\
    linear2_bias_array[2] <= 18'h000d7;\
    linear2_bias_array[3] <= 18'h205f6;\
    linear2_bias_array[4] <= 18'h00167;\
    linear2_bias_array[5] <= 18'h0047f;\
    linear2_bias_array[6] <= 18'h201f0;\
    linear2_bias_array[7] <= 18'h20045;\
    linear2_bias_array[8] <= 18'h2016d;\
    linear2_bias_array[9] <= 18'h20096;\
end
/*05500 21.25 20080 -0.125
`define LINEAR2_BIAS \
reg [0:17] linear2_bias_array [0:9];\
always@(posedge clk or negedge rst_n) begin\
    linear2_bias_array[0] <= 18'h05500;\
    linear2_bias_array[1] <= 18'h20080;\
    linear2_bias_array[2] <= 18'h05500;\
    linear2_bias_array[3] <= 18'h20080;\
    linear2_bias_array[4] <= 18'h05500;\
    linear2_bias_array[5] <= 18'h20080;\
    linear2_bias_array[6] <= 18'h05500;\
    linear2_bias_array[7] <= 18'h20080;\
    linear2_bias_array[8] <= 18'h05500;\
    linear2_bias_array[9] <= 18'h20080;\
end
*/