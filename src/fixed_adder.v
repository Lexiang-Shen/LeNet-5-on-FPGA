//18λ�������ӷ����������������
module fixed_adder(
	added_1,
	added_2,
	result
);
input  wire [17:0] added_1;
input  wire [17:0] added_2;
output reg  [17:0] result;

always@(*) begin
	if(!(added_1[17]^added_2[17])) begin//���ͬ��
		result[17] = added_1[17];
		result[16:0] = added_1[16:0] + added_2[16:0];
	end
	else begin//������
		if(added_1[16:0]>added_2[16:0]) begin
			result[17] = added_1[17];
			result[16:0] = added_1[16:0] - added_2[16:0];
		end
		else begin
			result[17] = added_2[17];
			result[16:0] = added_2[16:0] - added_1[16:0];
		end
	end
end

endmodule