`timescale 1ns/1ns
module top_tb;

reg clk;
reg rst_n;
reg ena;
reg later_read;
reg [14111:0] in_data [0:0];
//reg [14111:0] in_data;
wire tx_state;
wire finish;
wire trans;
wire [9:0] outnum;

initial begin
    clk <= 1'b0;
    rst_n <= 1'b0;
    ena <= 1'b0;
    later_read <= 1'b0;
    $readmemb("D:/PyCharm/learn_pytorch/pictures_18bit/picture2.dat",in_data);
    //in_data <= {1764{8'b10110101}};
    #4;
    rst_n <= 1'b1;
    ena <= 1'b1;
    #17000000;
    // $finish;
end

uart_tx_test u_uart_tx_test(
    .clk     (clk       ),
    .rst_n   (rst_n     ),
    .ena     (ena       ),
    .in_data (in_data[0]),
    .bit_out (trans     ),
    .state   (tx_state  )
);

top u_top(
    .clk         (clk         ),
    .rst_n       (rst_n       ),
    .bit_in      (trans       ),
	.finish      (finish      ),
	.later_read  (later_read  ),
    .outnum      (outnum      )
);

// initial begin
//     $dumpfile("dump.vcd");
//     $dumpvars(1,top_tb);
//     $dumpvars(1,top_tb.u_uart_tx_test);
//     $dumpvars(1,top_tb.u_top);
//     $dumpvars(1,top_tb.u_top.u_lenet5);
//     $dumpvars(1,top_tb.u_top.u_lenet5.u_compare_10);
// end

always#10 clk <= ~clk;

endmodule