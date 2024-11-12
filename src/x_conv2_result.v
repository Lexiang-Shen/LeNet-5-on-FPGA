`define CONV2_RESULT \
always@(posedge clk) begin\
    if(state==CONV2_2_1) begin\
        case(cnt1)\
            8'd0:begin\
                case(cnt2)\
                    8'd1:begin conv2_result[0] <= compare_result[0]; conv2_result[1] <= compare_result[1]; end\
                    8'd2:begin conv2_result[2] <= compare_result[0]; conv2_result[3] <= compare_result[1]; end\
                    8'd3:begin conv2_result[4] <= compare_result[0]; conv2_result[5] <= compare_result[1]; end\
                    8'd4:begin conv2_result[6] <= compare_result[0]; conv2_result[7] <= compare_result[1]; end\
                    default:;\
                endcase\
            end\
            8'd1:begin\
                case(cnt2)\
                    8'd0:begin conv2_result[8] <= compare_result[0]; conv2_result[9] <= compare_result[1]; end\
                    8'd1:begin conv2_result[10] <= compare_result[0]; conv2_result[11] <= compare_result[1]; end\
                    8'd2:begin conv2_result[12] <= compare_result[0]; conv2_result[13] <= compare_result[1]; end\
                    8'd3:begin conv2_result[14] <= compare_result[0]; conv2_result[15] <= compare_result[1]; end\
                    8'd4:begin conv2_result[16] <= compare_result[0]; conv2_result[17] <= compare_result[1]; end\
                    default:;\
                endcase\
            end\
            8'd2:begin\
                case(cnt2)\
                    8'd0:begin conv2_result[18] <= compare_result[0]; conv2_result[19] <= compare_result[1]; end\
                    8'd1:begin conv2_result[20] <= compare_result[0]; conv2_result[21] <= compare_result[1]; end\
                    8'd2:begin conv2_result[22] <= compare_result[0]; conv2_result[23] <= compare_result[1]; end\
                    8'd3:begin conv2_result[24] <= compare_result[0]; end\
                    default:;\
                endcase\
            end\
            default:;\
        endcase\
    end\
    else if(state==CONV2_3_1) begin\
        case(cnt1)\
            8'd0:begin\
                case(cnt2)\
                    8'd1:begin conv2_result[ 0+25] <= compare_result[0]; conv2_result[ 1+25] <= compare_result[1]; end\
                    8'd2:begin conv2_result[ 2+25] <= compare_result[0]; conv2_result[ 3+25] <= compare_result[1]; end\
                    8'd3:begin conv2_result[ 4+25] <= compare_result[0]; conv2_result[ 5+25] <= compare_result[1]; end\
                    8'd4:begin conv2_result[ 6+25] <= compare_result[0]; conv2_result[ 7+25] <= compare_result[1]; end\
                    default:;\
                endcase\
            end\
            8'd1:begin\
                case(cnt2)\
                    8'd0:begin conv2_result[ 8+25] <= compare_result[0]; conv2_result[ 9+25] <= compare_result[1]; end\
                    8'd1:begin conv2_result[10+25] <= compare_result[0]; conv2_result[11+25] <= compare_result[1]; end\
                    8'd2:begin conv2_result[12+25] <= compare_result[0]; conv2_result[13+25] <= compare_result[1]; end\
                    8'd3:begin conv2_result[14+25] <= compare_result[0]; conv2_result[15+25] <= compare_result[1]; end\
                    8'd4:begin conv2_result[16+25] <= compare_result[0]; conv2_result[17+25] <= compare_result[1]; end\
                    default:;\
                endcase\
            end\
            8'd2:begin\
                case(cnt2)\
                    8'd0:begin conv2_result[18+25] <= compare_result[0]; conv2_result[19+25] <= compare_result[1]; end\
                    8'd1:begin conv2_result[20+25] <= compare_result[0]; conv2_result[21+25] <= compare_result[1]; end\
                    8'd2:begin conv2_result[22+25] <= compare_result[0]; conv2_result[23+25] <= compare_result[1]; end\
                    8'd3:begin conv2_result[24+25] <= compare_result[0]; end\
                    default:;\
                endcase\
            end\
            default:;\
        endcase\
    end\
    else if(state==CONV2_4_1)begin\
        case(cnt1)\
            8'd0:begin\
                case(cnt2)\
                    8'd1:begin conv2_result[ 0+50] <= compare_result[0]; conv2_result[ 1+50] <= compare_result[1]; end\
                    8'd2:begin conv2_result[ 2+50] <= compare_result[0]; conv2_result[ 3+50] <= compare_result[1]; end\
                    8'd3:begin conv2_result[ 4+50] <= compare_result[0]; conv2_result[ 5+50] <= compare_result[1]; end\
                    8'd4:begin conv2_result[ 6+50] <= compare_result[0]; conv2_result[ 7+50] <= compare_result[1]; end\
                    default:;\
                endcase\
            end\
            8'd1:begin\
                case(cnt2)\
                    8'd0:begin conv2_result[ 8+50] <= compare_result[0]; conv2_result[ 9+50] <= compare_result[1]; end\
                    8'd1:begin conv2_result[10+50] <= compare_result[0]; conv2_result[11+50] <= compare_result[1]; end\
                    8'd2:begin conv2_result[12+50] <= compare_result[0]; conv2_result[13+50] <= compare_result[1]; end\
                    8'd3:begin conv2_result[14+50] <= compare_result[0]; conv2_result[15+50] <= compare_result[1]; end\
                    8'd4:begin conv2_result[16+50] <= compare_result[0]; conv2_result[17+50] <= compare_result[1]; end\
                    default:;\
                endcase\
            end\
            8'd2:begin\
                case(cnt2)\
                    8'd0:begin conv2_result[18+50] <= compare_result[0]; conv2_result[19+50] <= compare_result[1]; end\
                    8'd1:begin conv2_result[20+50] <= compare_result[0]; conv2_result[21+50] <= compare_result[1]; end\
                    8'd2:begin conv2_result[22+50] <= compare_result[0]; conv2_result[23+50] <= compare_result[1]; end\
                    8'd3:begin conv2_result[24+50] <= compare_result[0]; end\
                    default:;\
                endcase\
            end\
            default:;\
        endcase\
    end\
    else if(state==CONV2_5_1)begin\
        case(cnt1)\
            8'd0:begin\
                case(cnt2)\
                    8'd1:begin conv2_result[ 0+75] <= compare_result[0]; conv2_result[ 1+75] <= compare_result[1]; end\
                    8'd2:begin conv2_result[ 2+75] <= compare_result[0]; conv2_result[ 3+75] <= compare_result[1]; end\
                    8'd3:begin conv2_result[ 4+75] <= compare_result[0]; conv2_result[ 5+75] <= compare_result[1]; end\
                    8'd4:begin conv2_result[ 6+75] <= compare_result[0]; conv2_result[ 7+75] <= compare_result[1]; end\
                    default:;\
                endcase\
            end\
            8'd1:begin\
                case(cnt2)\
                    8'd0:begin conv2_result[ 8+75] <= compare_result[0]; conv2_result[ 9+75] <= compare_result[1]; end\
                    8'd1:begin conv2_result[10+75] <= compare_result[0]; conv2_result[11+75] <= compare_result[1]; end\
                    8'd2:begin conv2_result[12+75] <= compare_result[0]; conv2_result[13+75] <= compare_result[1]; end\
                    8'd3:begin conv2_result[14+75] <= compare_result[0]; conv2_result[15+75] <= compare_result[1]; end\
                    8'd4:begin conv2_result[16+75] <= compare_result[0]; conv2_result[17+75] <= compare_result[1]; end\
                    default:;\
                endcase\
            end\
            8'd2:begin\
                case(cnt2)\
                    8'd0:begin conv2_result[18+75] <= compare_result[0]; conv2_result[19+75] <= compare_result[1]; end\
                    8'd1:begin conv2_result[20+75] <= compare_result[0]; conv2_result[21+75] <= compare_result[1]; end\
                    8'd2:begin conv2_result[22+75] <= compare_result[0]; conv2_result[23+75] <= compare_result[1]; end\
                    8'd3:begin conv2_result[24+75] <= compare_result[0]; end\
                    default:;\
                endcase\
            end\
            default:;\
        endcase\
    end\
    else if(state==CONV2_6_1)begin\
        case(cnt1)\
            8'd0:begin\
                case(cnt2)\
                    8'd1:begin conv2_result[ 0+100] <= compare_result[0]; conv2_result[ 1+100] <= compare_result[1]; end\
                    8'd2:begin conv2_result[ 2+100] <= compare_result[0]; conv2_result[ 3+100] <= compare_result[1]; end\
                    8'd3:begin conv2_result[ 4+100] <= compare_result[0]; conv2_result[ 5+100] <= compare_result[1]; end\
                    8'd4:begin conv2_result[ 6+100] <= compare_result[0]; conv2_result[ 7+100] <= compare_result[1]; end\
                    default:;\
                endcase\
            end\
            8'd1:begin\
                case(cnt2)\
                    8'd0:begin conv2_result[ 8+100] <= compare_result[0]; conv2_result[ 9+100] <= compare_result[1]; end\
                    8'd1:begin conv2_result[10+100] <= compare_result[0]; conv2_result[11+100] <= compare_result[1]; end\
                    8'd2:begin conv2_result[12+100] <= compare_result[0]; conv2_result[13+100] <= compare_result[1]; end\
                    8'd3:begin conv2_result[14+100] <= compare_result[0]; conv2_result[15+100] <= compare_result[1]; end\
                    8'd4:begin conv2_result[16+100] <= compare_result[0]; conv2_result[17+100] <= compare_result[1]; end\
                    default:;\
                endcase\
            end\
            8'd2:begin\
                case(cnt2)\
                    8'd0:begin conv2_result[18+100] <= compare_result[0]; conv2_result[19+100] <= compare_result[1]; end\
                    8'd1:begin conv2_result[20+100] <= compare_result[0]; conv2_result[21+100] <= compare_result[1]; end\
                    8'd2:begin conv2_result[22+100] <= compare_result[0]; conv2_result[23+100] <= compare_result[1]; end\
                    8'd3:begin conv2_result[24+100] <= compare_result[0]; end\
                    default:;\
                endcase\
            end\
            default:;\
        endcase\
    end\
    else if(state==LINEAR1)begin\
        case(cnt1)\
            8'd1 :begin conv2_result[125] <= compare_result[0]; conv2_result[126] <= compare_result[1]; end\
            8'd2 :begin conv2_result[127] <= compare_result[0]; conv2_result[128] <= compare_result[1]; end\
            8'd3 :begin conv2_result[129] <= compare_result[0]; conv2_result[130] <= compare_result[1]; end\
            8'd4 :begin conv2_result[131] <= compare_result[0]; conv2_result[132] <= compare_result[1]; end\
            8'd5 :begin conv2_result[133] <= compare_result[0]; conv2_result[134] <= compare_result[1]; end\
            8'd6 :begin conv2_result[135] <= compare_result[0]; conv2_result[136] <= compare_result[1]; end\
            8'd7 :begin conv2_result[137] <= compare_result[0]; conv2_result[138] <= compare_result[1]; end\
            8'd8 :begin conv2_result[139] <= compare_result[0]; conv2_result[140] <= compare_result[1]; end\
            8'd9 :begin conv2_result[141] <= compare_result[0]; conv2_result[142] <= compare_result[1]; end\
            8'd10:begin conv2_result[143] <= compare_result[0]; conv2_result[144] <= compare_result[1]; end\
            8'd11:begin conv2_result[145] <= compare_result[0]; conv2_result[146] <= compare_result[1]; end\
            8'd12:begin conv2_result[147] <= compare_result[0]; conv2_result[148] <= compare_result[1]; end\
            8'd13:begin conv2_result[149] <= compare_result[0]; end\
            default:;\
        endcase\
    end\
end