`define COMPARERS \
reg [0:17] compared_1 [0:3];\
reg [0:17] compared_2 [0:3];\
wire [0:17] compare_result [0:1];\
compare_4 u_compare_4_1(\
    .a(compared_1[0]),\
    .b(compared_1[1]),\
    .c(compared_1[2]),\
    .d(compared_1[3]),\
    .out(compare_result[0])\
);\
compare_4 u_compare_4_2(\
    .a(compared_2[0]),\
    .b(compared_2[1]),\
    .c(compared_2[2]),\
    .d(compared_2[3]),\
    .out(compare_result[1])\
);