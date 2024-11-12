`define CONV1_BIAS \
reg [0:17] conv1_bias_array [0:5];\
always@(posedge clk) begin \
    conv1_bias_array[0] <= 18'h00069;\
    conv1_bias_array[1] <= 18'h20100;\
    conv1_bias_array[2] <= 18'h20007;\
    conv1_bias_array[3] <= 18'h200fe;\
    conv1_bias_array[4] <= 18'h000c8;\
    conv1_bias_array[5] <= 18'h2005d;\
end