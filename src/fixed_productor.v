//定点乘法器，不考虑溢出  [17]:符号；[16:10]:整数；[9:0]:小数；
module fixed_productor(
	producted_1,
	producted_2,
	result
);
input 	wire [17:0]	producted_1;
input 	wire [17:0]	producted_2;
output 	reg  [17:0]	result;
always@(*)begin
	result[17] = producted_1[17]^producted_2[17];
end
always@(*) begin
	// result[16:0] = 				  ((producted_1[ 0])?(producted_2[16:0]>>10):0);
	// result[16:0] = result[16:0] + ((producted_1[ 1])?(producted_2[16:0]>>9):0 );
	// result[16:0] = result[16:0] + ((producted_1[ 2])?(producted_2[16:0]>>8):0 );
	// result[16:0] = result[16:0] + ((producted_1[ 3])?(producted_2[16:0]>>7):0 );
	// result[16:0] = result[16:0] + ((producted_1[ 4])?(producted_2[16:0]>>6):0 );
	// result[16:0] = result[16:0] + ((producted_1[ 5])?(producted_2[16:0]>>5):0 );
	// result[16:0] = result[16:0] + ((producted_1[ 6])?(producted_2[16:0]>>4):0 );
	// result[16:0] = result[16:0] + ((producted_1[ 7])?(producted_2[16:0]>>3):0 );
	// result[16:0] = result[16:0] + ((producted_1[ 8])?(producted_2[16:0]>>2):0 );
	// result[16:0] = result[16:0] + ((producted_1[ 9])?(producted_2[16:0]>>1):0 );
	// result[16:0] = result[16:0] + ((producted_1[10])? producted_2[16:0]	:0  );
	// result[16:0] = result[16:0] + ((producted_1[11])?(producted_2[16:0]<<1):0 );
	// result[16:0] = result[16:0] + ((producted_1[12])?(producted_2[16:0]<<2):0 );
	// result[16:0] = result[16:0] + ((producted_1[13])?(producted_2[16:0]<<3):0 );
	// result[16:0] = result[16:0] + ((producted_1[14])?(producted_2[16:0]<<4):0 );
	// result[16:0] = result[16:0] + ((producted_1[15])?(producted_2[16:0]<<5):0 );
	// result[16:0] = result[16:0] + ((producted_1[16])?(producted_2[16:0]<<6):0 );
//	result[16:0] = (((0+1)+(2+3))+((4+5)+(6+7)))+((((8+9)+(10+11))+(12+13))+((14+15)+16));
	result[16:0] = (((((producted_1[ 0])?(producted_2[16:0]>>10):0)+((producted_1[ 1])?(producted_2[16:0]>>9):0 ))
					+(((producted_1[ 2])?(producted_2[16:0]>>8):0 )+((producted_1[ 3])?(producted_2[16:0]>>7):0 )))
					+((((producted_1[ 4])?(producted_2[16:0]>>6):0 )+((producted_1[ 5])?(producted_2[16:0]>>5):0 ))
					+(((producted_1[ 6])?(producted_2[16:0]>>4):0 )+((producted_1[ 7])?(producted_2[16:0]>>3):0 ))))
					+((((((producted_1[ 8])?(producted_2[16:0]>>2):0 )+((producted_1[ 9])?(producted_2[16:0]>>1):0 ))
					+(((producted_1[10])? producted_2[16:0]	:0  )+((producted_1[11])?(producted_2[16:0]<<1):0 )))
					+(((producted_1[12])?(producted_2[16:0]<<2):0 )+((producted_1[13])?(producted_2[16:0]<<3):0 )))
					+((((producted_1[14])?(producted_2[16:0]<<4):0 )+((producted_1[15])?(producted_2[16:0]<<5):0 ))
					+((producted_1[16])?(producted_2[16:0]<<6):0 )));
end

endmodule