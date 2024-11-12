`define LINEAR2_RESULT \
always@(posedge clk or negedge rst_n) begin\
    if(!rst_n) begin\
        linear2_result[0] <= 18'd0;\
        linear2_result[1] <= 18'd0;\
        linear2_result[2] <= 18'd0;\
        linear2_result[3] <= 18'd0;\
        linear2_result[4] <= 18'd0;\
        linear2_result[5] <= 18'd0;\
        linear2_result[6] <= 18'd0;\
        linear2_result[7] <= 18'd0;\
        linear2_result[8] <= 18'd0;\
        linear2_result[9] <= 18'd0;\
    end\
    else begin\
        if(state == LINEAR2) begin\
            if(cnt2==8'd13)begin\
                linear2_result[0] <= add_result[100];\
                linear2_result[1] <= add_result[101];\
                linear2_result[2] <= add_result[102];\
                linear2_result[3] <= add_result[103];\
                linear2_result[4] <= add_result[104];\
                linear2_result[5] <= add_result[105];\
                linear2_result[6] <= add_result[106];\
                linear2_result[7] <= add_result[107];\
                linear2_result[8] <= add_result[108];\
                linear2_result[9] <= add_result[109];\
            end\
        end\
    end\
end