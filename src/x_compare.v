`define COMPARED \
always@(posedge clk or negedge rst_n) begin\
    if(!rst_n)begin\
        compared_1[0] <= 18'd0;\
        compared_1[1] <= 18'd0;\
        compared_1[2] <= 18'd0;\
        compared_1[3] <= 18'd0;\
        compared_2[0] <= 18'd0;\
        compared_2[1] <= 18'd0;\
        compared_2[2] <= 18'd0;\
        compared_2[3] <= 18'd0;\
    end\
    else begin\
        case(state)\
            IDLE     :;\
            INPUT    :;\
            CONV1_1_1:;\
            CONV1_1_2,CONV1_1_3,CONV1_1_4,CONV1_1_5,CONV1_1_6,CONV1_1_7,CONV1_2_1,CONV1_2_2,CONV1_2_3,CONV1_2_4,CONV1_2_5,CONV1_2_6,CONV1_2_7,CONV1_3_1,\
            CONV1_3_2,CONV1_3_3,CONV1_3_4,CONV1_3_5,CONV1_3_6,CONV1_3_7,CONV1_4_1,CONV1_4_2,CONV1_4_3,CONV1_4_4,CONV1_4_5,CONV1_4_6,CONV1_4_7,CONV1_5_1,\
            CONV1_5_2,CONV1_5_3,CONV1_5_4,CONV1_5_5,CONV1_5_6,CONV1_5_7,CONV1_6_1,CONV1_6_2,CONV1_6_3,CONV1_6_4,CONV1_6_5,CONV1_6_6,CONV1_6_7,CONV2_1_1:\
            begin\
                case (cnt1)\
                    8'd0:begin\
                        case(cnt2)\
                            8'd0:begin\
                                compared_1[0] <= cache[0];\
                                compared_1[1] <= cache[1];\
                                compared_1[2] <= cache[28];\
                                compared_1[3] <= cache[29];\
                                compared_2[0] <= cache[2];\
                                compared_2[1] <= cache[3];\
                                compared_2[2] <= cache[30];\
                                compared_2[3] <= cache[31];\
                            end\
                            8'd1:begin\
                                compared_1[0] <= cache[4];\
                                compared_1[1] <= cache[5];\
                                compared_1[2] <= cache[32];\
                                compared_1[3] <= cache[33];\
                                compared_2[0] <= cache[6];\
                                compared_2[1] <= cache[7];\
                                compared_2[2] <= cache[34];\
                                compared_2[3] <= cache[35];\
                            end\
                            8'd2:begin\
                                compared_1[0] <= cache[8];\
                                compared_1[1] <= cache[9];\
                                compared_1[2] <= cache[36];\
                                compared_1[3] <= cache[37];\
                                compared_2[0] <= cache[10];\
                                compared_2[1] <= cache[11];\
                                compared_2[2] <= cache[38];\
                                compared_2[3] <= cache[39];\
                            end\
                            8'd3:begin\
                                compared_1[0] <= cache[12];\
                                compared_1[1] <= cache[13];\
                                compared_1[2] <= cache[40];\
                                compared_1[3] <= cache[41];\
                                compared_2[0] <= cache[14];\
                                compared_2[1] <= cache[15];\
                                compared_2[2] <= cache[42];\
                                compared_2[3] <= cache[43];\
                            end\
                            8'd4:begin\
                                compared_1[0] <= cache[16];\
                                compared_1[1] <= cache[17];\
                                compared_1[2] <= cache[44];\
                                compared_1[3] <= cache[45];\
                                compared_2[0] <= cache[18];\
                                compared_2[1] <= cache[19];\
                                compared_2[2] <= cache[46];\
                                compared_2[3] <= cache[47];\
                            end\
                            default:;\
                        endcase\
                    end\
                    8'd1:begin\
                        case(cnt2)\
                            8'd0:begin\
                                compared_1[0] <= cache[20];\
                                compared_1[1] <= cache[21];\
                                compared_1[2] <= cache[48];\
                                compared_1[3] <= cache[49];\
                                compared_2[0] <= cache[22];\
                                compared_2[1] <= cache[23];\
                                compared_2[2] <= cache[50];\
                                compared_2[3] <= cache[51];\
                            end\
                            8'd1:begin\
                                compared_1[0] <= cache[24];\
                                compared_1[1] <= cache[25];\
                                compared_1[2] <= cache[52];\
                                compared_1[3] <= cache[53];\
                                compared_2[0] <= cache[26];\
                                compared_2[1] <= cache[27];\
                                compared_2[2] <= cache[54];\
                                compared_2[3] <= cache[55];\
                            end\
                            8'd2:begin\
                                compared_1[0] <= cache[56];\
                                compared_1[1] <= cache[57];\
                                compared_1[2] <= cache[84];\
                                compared_1[3] <= cache[85];\
                                compared_2[0] <= cache[58];\
                                compared_2[1] <= cache[59];\
                                compared_2[2] <= cache[86];\
                                compared_2[3] <= cache[87];\
                            end\
                            8'd3:begin\
                                compared_1[0] <= cache[60];\
                                compared_1[1] <= cache[61];\
                                compared_1[2] <= cache[88];\
                                compared_1[3] <= cache[89];\
                                compared_2[0] <= cache[62];\
                                compared_2[1] <= cache[63];\
                                compared_2[2] <= cache[90];\
                                compared_2[3] <= cache[91];\
                            end\
                            8'd4:begin\
                                compared_1[0] <= cache[64];\
                                compared_1[1] <= cache[65];\
                                compared_1[2] <= cache[92];\
                                compared_1[3] <= cache[93];\
                                compared_2[0] <= cache[66];\
                                compared_2[1] <= cache[67];\
                                compared_2[2] <= cache[94];\
                                compared_2[3] <= cache[95];\
                            end\
                            default:;\
                        endcase\
                    end\
                    8'd2:begin\
                        case(cnt2)\
                            8'd0:begin\
                                compared_1[0] <= cache[68];\
                                compared_1[1] <= cache[69];\
                                compared_1[2] <= cache[96];\
                                compared_1[3] <= cache[97];\
                                compared_2[0] <= cache[70];\
                                compared_2[1] <= cache[71];\
                                compared_2[2] <= cache[98];\
                                compared_2[3] <= cache[99];\
                            end\
                            8'd1:begin\
                                compared_1[0] <= cache[72];\
                                compared_1[1] <= cache[73];\
                                compared_1[2] <= cache[100];\
                                compared_1[3] <= cache[101];\
                                compared_2[0] <= cache[74];\
                                compared_2[1] <= cache[75];\
                                compared_2[2] <= cache[102];\
                                compared_2[3] <= cache[103];\
                            end\
                            8'd2:begin\
                                compared_1[0] <= cache[76];\
                                compared_1[1] <= cache[77];\
                                compared_1[2] <= cache[104];\
                                compared_1[3] <= cache[105];\
                                compared_2[0] <= cache[78];\
                                compared_2[1] <= cache[79];\
                                compared_2[2] <= cache[106];\
                                compared_2[3] <= cache[107];\
                            end\
                            8'd3:begin\
                                compared_1[0] <= cache[80];\
                                compared_1[1] <= cache[81];\
                                compared_1[2] <= cache[108];\
                                compared_1[3] <= cache[109];\
                                compared_2[0] <= cache[82];\
                                compared_2[1] <= cache[83];\
                                compared_2[2] <= cache[110];\
                                compared_2[3] <= cache[111];\
                            end\
                            default:;\
                        endcase\
                    end\
                    default:;\
                endcase\
            end\
            CONV2_1_2,CONV2_1_3,CONV2_1_4,CONV2_1_5,CONV2_1_6,CONV2_2_2,CONV2_2_3,CONV2_2_4,CONV2_2_5,CONV2_2_6,CONV2_3_2,CONV2_3_3,CONV2_3_4,CONV2_3_5,CONV2_3_6,\
            CONV2_4_2,CONV2_4_3,CONV2_4_4,CONV2_4_5,CONV2_4_6,CONV2_5_2,CONV2_5_3,CONV2_5_4,CONV2_5_5,CONV2_5_6,CONV2_6_2,CONV2_6_3,CONV2_6_4,CONV2_6_5,CONV2_6_6:;\
            CONV2_2_1,CONV2_3_1,CONV2_4_1,CONV2_5_1,CONV2_6_1:begin\
                case (cnt1)\
                    8'd0:begin\
                        case(cnt2)\
                            8'd0:begin\
                                compared_1[0] <= cache[0];\
                                compared_1[1] <= cache[1];\
                                compared_1[2] <= cache[10];\
                                compared_1[3] <= cache[11];\
                                compared_2[0] <= cache[2];\
                                compared_2[1] <= cache[3];\
                                compared_2[2] <= cache[12];\
                                compared_2[3] <= cache[13];\
                            end\
                            8'd1:begin\
                                compared_1[0] <= cache[4];\
                                compared_1[1] <= cache[5];\
                                compared_1[2] <= cache[14];\
                                compared_1[3] <= cache[15];\
                                compared_2[0] <= cache[6];\
                                compared_2[1] <= cache[7];\
                                compared_2[2] <= cache[16];\
                                compared_2[3] <= cache[17];\
                            end\
                            8'd2:begin\
                                compared_1[0] <= cache[8];\
                                compared_1[1] <= cache[9];\
                                compared_1[2] <= cache[18];\
                                compared_1[3] <= cache[19];\
                                compared_2[0] <= cache[20];\
                                compared_2[1] <= cache[21];\
                                compared_2[2] <= cache[30];\
                                compared_2[3] <= cache[31];\
                            end\
                            8'd3:begin\
                                compared_1[0] <= cache[22];\
                                compared_1[1] <= cache[23];\
                                compared_1[2] <= cache[32];\
                                compared_1[3] <= cache[33];\
                                compared_2[0] <= cache[24];\
                                compared_2[1] <= cache[25];\
                                compared_2[2] <= cache[34];\
                                compared_2[3] <= cache[35];\
                            end\
                            8'd4:begin\
                                compared_1[0] <= cache[26];\
                                compared_1[1] <= cache[27];\
                                compared_1[2] <= cache[36];\
                                compared_1[3] <= cache[37];\
                                compared_2[0] <= cache[28];\
                                compared_2[1] <= cache[29];\
                                compared_2[2] <= cache[38];\
                                compared_2[3] <= cache[39];\
                            end\
                            default:;\
                        endcase\
                    end\
                    8'd1:begin\
                        case(cnt2)\
                            8'd0:begin\
                                compared_1[0] <= cache[40];\
                                compared_1[1] <= cache[41];\
                                compared_1[2] <= cache[50];\
                                compared_1[3] <= cache[51];\
                                compared_2[0] <= cache[42];\
                                compared_2[1] <= cache[43];\
                                compared_2[2] <= cache[52];\
                                compared_2[3] <= cache[53];\
                            end\
                            8'd1:begin\
                                compared_1[0] <= cache[44];\
                                compared_1[1] <= cache[45];\
                                compared_1[2] <= cache[54];\
                                compared_1[3] <= cache[55];\
                                compared_2[0] <= cache[46];\
                                compared_2[1] <= cache[47];\
                                compared_2[2] <= cache[56];\
                                compared_2[3] <= cache[57];\
                            end\
                            8'd2:begin\
                                compared_1[0] <= cache[48];\
                                compared_1[1] <= cache[49];\
                                compared_1[2] <= cache[58];\
                                compared_1[3] <= cache[59];\
                                compared_2[0] <= cache[60];\
                                compared_2[1] <= cache[61];\
                                compared_2[2] <= cache[70];\
                                compared_2[3] <= cache[71];\
                            end\
                            8'd3:begin\
                                compared_1[0] <= cache[62];\
                                compared_1[1] <= cache[63];\
                                compared_1[2] <= cache[72];\
                                compared_1[3] <= cache[73];\
                                compared_2[0] <= cache[64];\
                                compared_2[1] <= cache[65];\
                                compared_2[2] <= cache[74];\
                                compared_2[3] <= cache[75];\
                            end\
                            8'd4:begin\
                                compared_1[0] <= cache[66];\
                                compared_1[1] <= cache[67];\
                                compared_1[2] <= cache[76];\
                                compared_1[3] <= cache[77];\
                                compared_2[0] <= cache[68];\
                                compared_2[1] <= cache[69];\
                                compared_2[2] <= cache[78];\
                                compared_2[3] <= cache[79];\
                            end\
                            default:;\
                        endcase\
                    end\
                    8'd2:begin\
                        case(cnt2)\
                            8'd0:begin\
                                compared_1[0] <= cache[80];\
                                compared_1[1] <= cache[81];\
                                compared_1[2] <= cache[90];\
                                compared_1[3] <= cache[91];\
                                compared_2[0] <= cache[82];\
                                compared_2[1] <= cache[83];\
                                compared_2[2] <= cache[92];\
                                compared_2[3] <= cache[93];\
                            end\
                            8'd1:begin\
                                compared_1[0] <= cache[84];\
                                compared_1[1] <= cache[85];\
                                compared_1[2] <= cache[94];\
                                compared_1[3] <= cache[95];\
                                compared_2[0] <= cache[86];\
                                compared_2[1] <= cache[87];\
                                compared_2[2] <= cache[96];\
                                compared_2[3] <= cache[97];\
                            end\
                            8'd2:begin\
                                compared_1[0] <= cache[88];\
                                compared_1[1] <= cache[89];\
                                compared_1[2] <= cache[98];\
                                compared_1[3] <= cache[99];\
                            end\
                            default:;\
                        endcase\
                    end\
                    default:;\
                endcase\
            end\
            LINEAR1  :begin\
				case(cnt1)\
					8'd0 :begin\
                        compared_1[0] <= cache[0];\
                        compared_1[1] <= cache[1];\
                        compared_1[2] <= cache[10];\
                        compared_1[3] <= cache[11];\
                        compared_2[0] <= cache[2];\
                        compared_2[1] <= cache[3];\
                        compared_2[2] <= cache[12];\
                        compared_2[3] <= cache[13];\
                    end\
					8'd1 :begin\
                        compared_1[0] <= cache[4];\
                        compared_1[1] <= cache[5];\
                        compared_1[2] <= cache[14];\
                        compared_1[3] <= cache[15];\
                        compared_2[0] <= cache[6];\
                        compared_2[1] <= cache[7];\
                        compared_2[2] <= cache[16];\
                        compared_2[3] <= cache[17];\
                    end\
					8'd2 :begin\
                        compared_1[0] <= cache[8];\
                        compared_1[1] <= cache[9];\
                        compared_1[2] <= cache[18];\
                        compared_1[3] <= cache[19];\
                        compared_2[0] <= cache[20];\
                        compared_2[1] <= cache[21];\
                        compared_2[2] <= cache[30];\
                        compared_2[3] <= cache[31];\
                    end\
					8'd3 :begin\
                        compared_1[0] <= cache[22];\
                        compared_1[1] <= cache[23];\
                        compared_1[2] <= cache[32];\
                        compared_1[3] <= cache[33];\
                        compared_2[0] <= cache[24];\
                        compared_2[1] <= cache[25];\
                        compared_2[2] <= cache[34];\
                        compared_2[3] <= cache[35];\
                    end\
					8'd4 :begin\
                        compared_1[0] <= cache[26];\
                        compared_1[1] <= cache[27];\
                        compared_1[2] <= cache[36];\
                        compared_1[3] <= cache[37];\
                        compared_2[0] <= cache[28];\
                        compared_2[1] <= cache[29];\
                        compared_2[2] <= cache[38];\
                        compared_2[3] <= cache[39];\
                    end\
					8'd5 :begin\
                        compared_1[0] <= cache[40];\
                        compared_1[1] <= cache[41];\
                        compared_1[2] <= cache[50];\
                        compared_1[3] <= cache[51];\
                        compared_2[0] <= cache[42];\
                        compared_2[1] <= cache[43];\
                        compared_2[2] <= cache[52];\
                        compared_2[3] <= cache[53];\
                    end\
					8'd6 :begin\
                        compared_1[0] <= cache[44];\
                        compared_1[1] <= cache[45];\
                        compared_1[2] <= cache[54];\
                        compared_1[3] <= cache[55];\
                        compared_2[0] <= cache[46];\
                        compared_2[1] <= cache[47];\
                        compared_2[2] <= cache[56];\
                        compared_2[3] <= cache[57];\
                    end\
					8'd7 :begin\
                        compared_1[0] <= cache[48];\
                        compared_1[1] <= cache[49];\
                        compared_1[2] <= cache[58];\
                        compared_1[3] <= cache[59];\
                        compared_2[0] <= cache[60];\
                        compared_2[1] <= cache[61];\
                        compared_2[2] <= cache[70];\
                        compared_2[3] <= cache[71];\
                    end\
					8'd8 :begin\
                        compared_1[0] <= cache[62];\
                        compared_1[1] <= cache[63];\
                        compared_1[2] <= cache[72];\
                        compared_1[3] <= cache[73];\
                        compared_2[0] <= cache[64];\
                        compared_2[1] <= cache[65];\
                        compared_2[2] <= cache[74];\
                        compared_2[3] <= cache[75];\
                    end\
					8'd9 :begin\
                        compared_1[0] <= cache[66];\
                        compared_1[1] <= cache[67];\
                        compared_1[2] <= cache[76];\
                        compared_1[3] <= cache[77];\
                        compared_2[0] <= cache[68];\
                        compared_2[1] <= cache[69];\
                        compared_2[2] <= cache[78];\
                        compared_2[3] <= cache[79];\
                    end\
					8'd10:begin\
                        compared_1[0] <= cache[80];\
                        compared_1[1] <= cache[81];\
                        compared_1[2] <= cache[90];\
                        compared_1[3] <= cache[91];\
                        compared_2[0] <= cache[82];\
                        compared_2[1] <= cache[83];\
                        compared_2[2] <= cache[92];\
                        compared_2[3] <= cache[93];\
                    end\
					8'd11:begin\
                        compared_1[0] <= cache[84];\
                        compared_1[1] <= cache[85];\
                        compared_1[2] <= cache[94];\
                        compared_1[3] <= cache[95];\
                        compared_2[0] <= cache[86];\
                        compared_2[1] <= cache[87];\
                        compared_2[2] <= cache[96];\
                        compared_2[3] <= cache[97];\
                    end\
					8'd12:begin\
                        compared_1[0] <= cache[88];\
                        compared_1[1] <= cache[89];\
                        compared_1[2] <= cache[98];\
                        compared_1[3] <= cache[99];\
                    end\
					default:;\
				endcase\
			end\
            LINEAR2  :;\
            COMPARE  :;\
            COMPLETE :begin\
                compared_1[0] <= 18'd0;\
                compared_1[1] <= 18'd0;\
                compared_1[2] <= 18'd0;\
                compared_1[3] <= 18'd0;\
                compared_2[0] <= 18'd0;\
                compared_2[1] <= 18'd0;\
                compared_2[2] <= 18'd0;\
                compared_2[3] <= 18'd0;\
            end\
            default: begin\
                compared_1[0] <= 18'd0;\
                compared_1[1] <= 18'd0;\
                compared_1[2] <= 18'd0;\
                compared_1[3] <= 18'd0;\
                compared_2[0] <= 18'd0;\
                compared_2[1] <= 18'd0;\
                compared_2[2] <= 18'd0;\
                compared_2[3] <= 18'd0;\
            end\
        endcase\
    end\
end