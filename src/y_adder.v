`define ADDERS \
reg [0:17] added_1 [0:111];\
reg [0:17] added_2 [0:111];\
wire [0:17] add_result [0:111];\
fixed_adder u_fixed_adder_0(\
	.added_1(added_1[0]),\
	.added_2(added_2[0]),\
	.result		(add_result[0])\
);\
fixed_adder u_fixed_adder_1(\
	.added_1(added_1[1]),\
	.added_2(added_2[1]),\
	.result		(add_result[1])\
);\
fixed_adder u_fixed_adder_2(\
	.added_1(added_1[2]),\
	.added_2(added_2[2]),\
	.result		(add_result[2])\
);\
fixed_adder u_fixed_adder_3(\
	.added_1(added_1[3]),\
	.added_2(added_2[3]),\
	.result		(add_result[3])\
);\
fixed_adder u_fixed_adder_4(\
	.added_1(added_1[4]),\
	.added_2(added_2[4]),\
	.result		(add_result[4])\
);\
fixed_adder u_fixed_adder_5(\
	.added_1(added_1[5]),\
	.added_2(added_2[5]),\
	.result		(add_result[5])\
);\
fixed_adder u_fixed_adder_6(\
	.added_1(added_1[6]),\
	.added_2(added_2[6]),\
	.result		(add_result[6])\
);\
fixed_adder u_fixed_adder_7(\
	.added_1(added_1[7]),\
	.added_2(added_2[7]),\
	.result		(add_result[7])\
);\
fixed_adder u_fixed_adder_8(\
	.added_1(added_1[8]),\
	.added_2(added_2[8]),\
	.result		(add_result[8])\
);\
fixed_adder u_fixed_adder_9(\
	.added_1(added_1[9]),\
	.added_2(added_2[9]),\
	.result		(add_result[9])\
);\
fixed_adder u_fixed_adder_10(\
	.added_1(added_1[10]),\
	.added_2(added_2[10]),\
	.result		(add_result[10])\
);\
fixed_adder u_fixed_adder_11(\
	.added_1(added_1[11]),\
	.added_2(added_2[11]),\
	.result		(add_result[11])\
);\
fixed_adder u_fixed_adder_12(\
	.added_1(added_1[12]),\
	.added_2(added_2[12]),\
	.result		(add_result[12])\
);\
fixed_adder u_fixed_adder_13(\
	.added_1(added_1[13]),\
	.added_2(added_2[13]),\
	.result		(add_result[13])\
);\
fixed_adder u_fixed_adder_14(\
	.added_1(added_1[14]),\
	.added_2(added_2[14]),\
	.result		(add_result[14])\
);\
fixed_adder u_fixed_adder_15(\
	.added_1(added_1[15]),\
	.added_2(added_2[15]),\
	.result		(add_result[15])\
);\
fixed_adder u_fixed_adder_16(\
	.added_1(added_1[16]),\
	.added_2(added_2[16]),\
	.result		(add_result[16])\
);\
fixed_adder u_fixed_adder_17(\
	.added_1(added_1[17]),\
	.added_2(added_2[17]),\
	.result		(add_result[17])\
);\
fixed_adder u_fixed_adder_18(\
	.added_1(added_1[18]),\
	.added_2(added_2[18]),\
	.result		(add_result[18])\
);\
fixed_adder u_fixed_adder_19(\
	.added_1(added_1[19]),\
	.added_2(added_2[19]),\
	.result		(add_result[19])\
);\
fixed_adder u_fixed_adder_20(\
	.added_1(added_1[20]),\
	.added_2(added_2[20]),\
	.result		(add_result[20])\
);\
fixed_adder u_fixed_adder_21(\
	.added_1(added_1[21]),\
	.added_2(added_2[21]),\
	.result		(add_result[21])\
);\
fixed_adder u_fixed_adder_22(\
	.added_1(added_1[22]),\
	.added_2(added_2[22]),\
	.result		(add_result[22])\
);\
fixed_adder u_fixed_adder_23(\
	.added_1(added_1[23]),\
	.added_2(added_2[23]),\
	.result		(add_result[23])\
);\
fixed_adder u_fixed_adder_24(\
	.added_1(added_1[24]),\
	.added_2(added_2[24]),\
	.result		(add_result[24])\
);\
fixed_adder u_fixed_adder_25(\
	.added_1(added_1[25]),\
	.added_2(added_2[25]),\
	.result		(add_result[25])\
);\
fixed_adder u_fixed_adder_26(\
	.added_1(added_1[26]),\
	.added_2(added_2[26]),\
	.result		(add_result[26])\
);\
fixed_adder u_fixed_adder_27(\
	.added_1(added_1[27]),\
	.added_2(added_2[27]),\
	.result		(add_result[27])\
);\
fixed_adder u_fixed_adder_28(\
	.added_1(added_1[28]),\
	.added_2(added_2[28]),\
	.result		(add_result[28])\
);\
fixed_adder u_fixed_adder_29(\
	.added_1(added_1[29]),\
	.added_2(added_2[29]),\
	.result		(add_result[29])\
);\
fixed_adder u_fixed_adder_30(\
	.added_1(added_1[30]),\
	.added_2(added_2[30]),\
	.result		(add_result[30])\
);\
fixed_adder u_fixed_adder_31(\
	.added_1(added_1[31]),\
	.added_2(added_2[31]),\
	.result		(add_result[31])\
);\
fixed_adder u_fixed_adder_32(\
	.added_1(added_1[32]),\
	.added_2(added_2[32]),\
	.result		(add_result[32])\
);\
fixed_adder u_fixed_adder_33(\
	.added_1(added_1[33]),\
	.added_2(added_2[33]),\
	.result		(add_result[33])\
);\
fixed_adder u_fixed_adder_34(\
	.added_1(added_1[34]),\
	.added_2(added_2[34]),\
	.result		(add_result[34])\
);\
fixed_adder u_fixed_adder_35(\
	.added_1(added_1[35]),\
	.added_2(added_2[35]),\
	.result		(add_result[35])\
);\
fixed_adder u_fixed_adder_36(\
	.added_1(added_1[36]),\
	.added_2(added_2[36]),\
	.result		(add_result[36])\
);\
fixed_adder u_fixed_adder_37(\
	.added_1(added_1[37]),\
	.added_2(added_2[37]),\
	.result		(add_result[37])\
);\
fixed_adder u_fixed_adder_38(\
	.added_1(added_1[38]),\
	.added_2(added_2[38]),\
	.result		(add_result[38])\
);\
fixed_adder u_fixed_adder_39(\
	.added_1(added_1[39]),\
	.added_2(added_2[39]),\
	.result		(add_result[39])\
);\
fixed_adder u_fixed_adder_40(\
	.added_1(added_1[40]),\
	.added_2(added_2[40]),\
	.result		(add_result[40])\
);\
fixed_adder u_fixed_adder_41(\
	.added_1(added_1[41]),\
	.added_2(added_2[41]),\
	.result		(add_result[41])\
);\
fixed_adder u_fixed_adder_42(\
	.added_1(added_1[42]),\
	.added_2(added_2[42]),\
	.result		(add_result[42])\
);\
fixed_adder u_fixed_adder_43(\
	.added_1(added_1[43]),\
	.added_2(added_2[43]),\
	.result		(add_result[43])\
);\
fixed_adder u_fixed_adder_44(\
	.added_1(added_1[44]),\
	.added_2(added_2[44]),\
	.result		(add_result[44])\
);\
fixed_adder u_fixed_adder_45(\
	.added_1(added_1[45]),\
	.added_2(added_2[45]),\
	.result		(add_result[45])\
);\
fixed_adder u_fixed_adder_46(\
	.added_1(added_1[46]),\
	.added_2(added_2[46]),\
	.result		(add_result[46])\
);\
fixed_adder u_fixed_adder_47(\
	.added_1(added_1[47]),\
	.added_2(added_2[47]),\
	.result		(add_result[47])\
);\
fixed_adder u_fixed_adder_48(\
	.added_1(added_1[48]),\
	.added_2(added_2[48]),\
	.result		(add_result[48])\
);\
fixed_adder u_fixed_adder_49(\
	.added_1(added_1[49]),\
	.added_2(added_2[49]),\
	.result		(add_result[49])\
);\
fixed_adder u_fixed_adder_50(\
	.added_1(added_1[50]),\
	.added_2(added_2[50]),\
	.result		(add_result[50])\
);\
fixed_adder u_fixed_adder_51(\
	.added_1(added_1[51]),\
	.added_2(added_2[51]),\
	.result		(add_result[51])\
);\
fixed_adder u_fixed_adder_52(\
	.added_1(added_1[52]),\
	.added_2(added_2[52]),\
	.result		(add_result[52])\
);\
fixed_adder u_fixed_adder_53(\
	.added_1(added_1[53]),\
	.added_2(added_2[53]),\
	.result		(add_result[53])\
);\
fixed_adder u_fixed_adder_54(\
	.added_1(added_1[54]),\
	.added_2(added_2[54]),\
	.result		(add_result[54])\
);\
fixed_adder u_fixed_adder_55(\
	.added_1(added_1[55]),\
	.added_2(added_2[55]),\
	.result		(add_result[55])\
);\
fixed_adder u_fixed_adder_56(\
	.added_1(added_1[56]),\
	.added_2(added_2[56]),\
	.result		(add_result[56])\
);\
fixed_adder u_fixed_adder_57(\
	.added_1(added_1[57]),\
	.added_2(added_2[57]),\
	.result		(add_result[57])\
);\
fixed_adder u_fixed_adder_58(\
	.added_1(added_1[58]),\
	.added_2(added_2[58]),\
	.result		(add_result[58])\
);\
fixed_adder u_fixed_adder_59(\
	.added_1(added_1[59]),\
	.added_2(added_2[59]),\
	.result		(add_result[59])\
);\
fixed_adder u_fixed_adder_60(\
	.added_1(added_1[60]),\
	.added_2(added_2[60]),\
	.result		(add_result[60])\
);\
fixed_adder u_fixed_adder_61(\
	.added_1(added_1[61]),\
	.added_2(added_2[61]),\
	.result		(add_result[61])\
);\
fixed_adder u_fixed_adder_62(\
	.added_1(added_1[62]),\
	.added_2(added_2[62]),\
	.result		(add_result[62])\
);\
fixed_adder u_fixed_adder_63(\
	.added_1(added_1[63]),\
	.added_2(added_2[63]),\
	.result		(add_result[63])\
);\
fixed_adder u_fixed_adder_64(\
	.added_1(added_1[64]),\
	.added_2(added_2[64]),\
	.result		(add_result[64])\
);\
fixed_adder u_fixed_adder_65(\
	.added_1(added_1[65]),\
	.added_2(added_2[65]),\
	.result		(add_result[65])\
);\
fixed_adder u_fixed_adder_66(\
	.added_1(added_1[66]),\
	.added_2(added_2[66]),\
	.result		(add_result[66])\
);\
fixed_adder u_fixed_adder_67(\
	.added_1(added_1[67]),\
	.added_2(added_2[67]),\
	.result		(add_result[67])\
);\
fixed_adder u_fixed_adder_68(\
	.added_1(added_1[68]),\
	.added_2(added_2[68]),\
	.result		(add_result[68])\
);\
fixed_adder u_fixed_adder_69(\
	.added_1(added_1[69]),\
	.added_2(added_2[69]),\
	.result		(add_result[69])\
);\
fixed_adder u_fixed_adder_70(\
	.added_1(added_1[70]),\
	.added_2(added_2[70]),\
	.result		(add_result[70])\
);\
fixed_adder u_fixed_adder_71(\
	.added_1(added_1[71]),\
	.added_2(added_2[71]),\
	.result		(add_result[71])\
);\
fixed_adder u_fixed_adder_72(\
	.added_1(added_1[72]),\
	.added_2(added_2[72]),\
	.result		(add_result[72])\
);\
fixed_adder u_fixed_adder_73(\
	.added_1(added_1[73]),\
	.added_2(added_2[73]),\
	.result		(add_result[73])\
);\
fixed_adder u_fixed_adder_74(\
	.added_1(added_1[74]),\
	.added_2(added_2[74]),\
	.result		(add_result[74])\
);\
fixed_adder u_fixed_adder_75(\
	.added_1(added_1[75]),\
	.added_2(added_2[75]),\
	.result		(add_result[75])\
);\
fixed_adder u_fixed_adder_76(\
	.added_1(added_1[76]),\
	.added_2(added_2[76]),\
	.result		(add_result[76])\
);\
fixed_adder u_fixed_adder_77(\
	.added_1(added_1[77]),\
	.added_2(added_2[77]),\
	.result		(add_result[77])\
);\
fixed_adder u_fixed_adder_78(\
	.added_1(added_1[78]),\
	.added_2(added_2[78]),\
	.result		(add_result[78])\
);\
fixed_adder u_fixed_adder_79(\
	.added_1(added_1[79]),\
	.added_2(added_2[79]),\
	.result		(add_result[79])\
);\
fixed_adder u_fixed_adder_80(\
	.added_1(added_1[80]),\
	.added_2(added_2[80]),\
	.result		(add_result[80])\
);\
fixed_adder u_fixed_adder_81(\
	.added_1(added_1[81]),\
	.added_2(added_2[81]),\
	.result		(add_result[81])\
);\
fixed_adder u_fixed_adder_82(\
	.added_1(added_1[82]),\
	.added_2(added_2[82]),\
	.result		(add_result[82])\
);\
fixed_adder u_fixed_adder_83(\
	.added_1(added_1[83]),\
	.added_2(added_2[83]),\
	.result		(add_result[83])\
);\
fixed_adder u_fixed_adder_84(\
	.added_1(added_1[84]),\
	.added_2(added_2[84]),\
	.result		(add_result[84])\
);\
fixed_adder u_fixed_adder_85(\
	.added_1(added_1[85]),\
	.added_2(added_2[85]),\
	.result		(add_result[85])\
);\
fixed_adder u_fixed_adder_86(\
	.added_1(added_1[86]),\
	.added_2(added_2[86]),\
	.result		(add_result[86])\
);\
fixed_adder u_fixed_adder_87(\
	.added_1(added_1[87]),\
	.added_2(added_2[87]),\
	.result		(add_result[87])\
);\
fixed_adder u_fixed_adder_88(\
	.added_1(added_1[88]),\
	.added_2(added_2[88]),\
	.result		(add_result[88])\
);\
fixed_adder u_fixed_adder_89(\
	.added_1(added_1[89]),\
	.added_2(added_2[89]),\
	.result		(add_result[89])\
);\
fixed_adder u_fixed_adder_90(\
	.added_1(added_1[90]),\
	.added_2(added_2[90]),\
	.result		(add_result[90])\
);\
fixed_adder u_fixed_adder_91(\
	.added_1(added_1[91]),\
	.added_2(added_2[91]),\
	.result		(add_result[91])\
);\
fixed_adder u_fixed_adder_92(\
	.added_1(added_1[92]),\
	.added_2(added_2[92]),\
	.result		(add_result[92])\
);\
fixed_adder u_fixed_adder_93(\
	.added_1(added_1[93]),\
	.added_2(added_2[93]),\
	.result		(add_result[93])\
);\
fixed_adder u_fixed_adder_94(\
	.added_1(added_1[94]),\
	.added_2(added_2[94]),\
	.result		(add_result[94])\
);\
fixed_adder u_fixed_adder_95(\
	.added_1(added_1[95]),\
	.added_2(added_2[95]),\
	.result		(add_result[95])\
);\
fixed_adder u_fixed_adder_96(\
	.added_1(added_1[96]),\
	.added_2(added_2[96]),\
	.result		(add_result[96])\
);\
fixed_adder u_fixed_adder_97(\
	.added_1(added_1[97]),\
	.added_2(added_2[97]),\
	.result		(add_result[97])\
);\
fixed_adder u_fixed_adder_98(\
	.added_1(added_1[98]),\
	.added_2(added_2[98]),\
	.result		(add_result[98])\
);\
fixed_adder u_fixed_adder_99(\
	.added_1(added_1[99]),\
	.added_2(added_2[99]),\
	.result		(add_result[99])\
);\
fixed_adder u_fixed_adder_100(\
	.added_1(added_1[100]),\
	.added_2(added_2[100]),\
	.result		(add_result[100])\
);\
fixed_adder u_fixed_adder_101(\
	.added_1(added_1[101]),\
	.added_2(added_2[101]),\
	.result		(add_result[101])\
);\
fixed_adder u_fixed_adder_102(\
	.added_1(added_1[102]),\
	.added_2(added_2[102]),\
	.result		(add_result[102])\
);\
fixed_adder u_fixed_adder_103(\
	.added_1(added_1[103]),\
	.added_2(added_2[103]),\
	.result		(add_result[103])\
);\
fixed_adder u_fixed_adder_104(\
	.added_1(added_1[104]),\
	.added_2(added_2[104]),\
	.result		(add_result[104])\
);\
fixed_adder u_fixed_adder_105(\
	.added_1(added_1[105]),\
	.added_2(added_2[105]),\
	.result		(add_result[105])\
);\
fixed_adder u_fixed_adder_106(\
	.added_1(added_1[106]),\
	.added_2(added_2[106]),\
	.result		(add_result[106])\
);\
fixed_adder u_fixed_adder_107(\
	.added_1(added_1[107]),\
	.added_2(added_2[107]),\
	.result		(add_result[107])\
);\
fixed_adder u_fixed_adder_108(\
	.added_1(added_1[108]),\
	.added_2(added_2[108]),\
	.result		(add_result[108])\
);\
fixed_adder u_fixed_adder_109(\
	.added_1(added_1[109]),\
	.added_2(added_2[109]),\
	.result		(add_result[109])\
);\
fixed_adder u_fixed_adder_110(\
	.added_1(added_1[110]),\
	.added_2(added_2[110]),\
	.result		(add_result[110])\
);\
fixed_adder u_fixed_adder_111(\
	.added_1(added_1[111]),\
	.added_2(added_2[111]),\
	.result		(add_result[111])\
);