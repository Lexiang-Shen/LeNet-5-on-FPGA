`define COMPARE_10 \
reg cmp10_pre_finish;\
wire cmp10_finish;\
compare_10 u_compare_10(\
    .clk        (clk),\
	.rst_n      (rst_n),\
	.pre_finish (cmp10_pre_finish),\
	.finish     (cmp10_finish),\
	.i_read     (),\
	.later_read (later_read),\
	.in_data    ({linear2_result[0],\
                  linear2_result[1],\
                  linear2_result[2],\
                  linear2_result[3],\
                  linear2_result[4],\
                  linear2_result[5],\
                  linear2_result[6],\
                  linear2_result[7],\
                  linear2_result[8],\
                  linear2_result[9]}),\
	.out_num    (outnum)\
);\
always@(posedge clk or negedge rst_n) begin\
    if(!rst_n) begin\
        cmp10_pre_finish <= 1'b0;\
    end\
    else if(state==COMPARE) begin\
        cmp10_pre_finish <= 1'b1;\
    end\
    else begin\
        cmp10_pre_finish <= 1'b0;\
    end\
end