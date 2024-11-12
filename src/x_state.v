`define STATE \
always@(posedge clk or negedge rst_n) begin \
    if(!rst_n) begin cnt1 <= 8'd0; cnt2 <= 8'd0; state <= IDLE; finish <= 1'b0;end\
    else if(((state>=CONV1_1_1)&(state<=CONV1_6_7))\
        |(state==CONV2_1_6)\
        |(state==CONV2_2_6)\
        |(state==CONV2_3_6)\
        |(state==CONV2_4_6)\
        |(state==CONV2_5_6)\
        |(state==CONV2_6_6))begin\
        if((cnt1<8'd4)&(cnt2==8'd4)) begin cnt1 <= cnt1 + 8'd1; cnt2 <= 8'd0; end\
        else if(cnt2==8'd6) begin cnt1 <= 8'd0; cnt2 <= 8'd0; state <= state + 7'd1; end\
        else cnt2 <= cnt2 + 8'd1;\
    end\
    else if(((state>=CONV2_1_1)&(state<=CONV2_1_5))\
            |((state>=CONV2_2_1)&(state<=CONV2_2_5))\
            |((state>=CONV2_3_1)&(state<=CONV2_3_5))\
            |((state>=CONV2_4_1)&(state<=CONV2_4_5))\
            |((state>=CONV2_5_1)&(state<=CONV2_5_5))\
            |((state>=CONV2_6_1)&(state<=CONV2_6_5)))begin\
        if((cnt1<8'd4)&(cnt2==8'd4)) begin cnt1 <= cnt1 + 8'd1; cnt2 <= 8'd0; end\
        else if(cnt2==8'd4) begin cnt1 <= 8'd0; cnt2 <= 8'd0; state <= state + 7'd1; end\
        else cnt2 <= cnt2 + 8'd1;\
    end\
    else if(state==LINEAR1) begin\
        if(cnt1==8'd151) begin cnt1 <= 8'd0; state <= state + 7'd1; end\
        else cnt1 <= cnt1 + 8'd1;\
    end\
    else if(state==LINEAR2) begin\
        if(cnt2==8'd13) begin cnt2 <= 8'd0; state <= state + 7'd1; end\
        else cnt2 <= cnt2 + 8'd1;\
    end\
    else if(((state==IDLE)&(pre_finish))|(state==INPUT)) begin state <= state + 7'd1; finish <= 1'b0; end\
    else if((state==COMPARE)&(cmp10_finish)) begin state <= state + 7'd1; finish <= 1'b1; end\
    else if((state==COMPLETE)&(later_read)) begin state <= IDLE; finish <= 1'b0; end\
    else;\
end