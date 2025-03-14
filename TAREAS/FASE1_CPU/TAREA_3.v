//: version "1.8.7"

module READ(Data1, Read2, clr, clk, RegWrite, Write, Read1, WriteData, Data2, RegDst, SignExtOut, SignExtIn);
//: interface  /sz:(128, 255) /bd:[ Ti0>RegWrite(61/128) Li0>SignExtIn[15:0](218/255) Li1>WriteData[31:0](186/255) Li2>RegDst(153/255) Li3>Write[4:0](115/255) Li4>Read2[4:0](75/255) Li5>Read1[4:0](40/255) Bi0>clr(92/128) Bi1>clk(46/128) Ro0<SignExtOut[31:0](215/255) Ro1<Data2[31:0](140/255) Ro2<Data1[31:0](97/255) ]
output [31:0] Data2;    //: /sn:0 {0}(323,263)(353,263){1}
input [4:0] Write;    //: /sn:0 {0}(69,242)(114,242){1}
input [31:0] WriteData;    //: /sn:0 {0}(73,303)(148,303)(148,277)(174,277){1}
output [31:0] Data1;    //: /sn:0 /dp:1 {0}(323,171)(354,171){1}
output [31:0] SignExtOut;    //: /sn:0 /dp:1 {0}(330,391)(352,391){1}
input RegDst;    //: /sn:0 {0}(74,274)(130,274)(130,255){1}
input RegWrite;    //: /sn:0 {0}(215,333)(215,307){1}
input clr;    //: /sn:0 {0}(241,97)(241,123){1}
input clk;    //: /sn:0 {0}(283,335)(283,307){1}
input [4:0] Read1;    //: /sn:0 {0}(73,156)(174,156){1}
input [4:0] Read2;    //: /sn:0 {0}(71,196)(98,196){1}
//: {2}(102,196)(174,196){3}
//: {4}(100,198)(100,222)(114,222){5}
input [15:0] SignExtIn;    //: /sn:0 {0}(138,392)(180,392){1}
wire [4:0] w6;    //: /sn:0 /dp:1 {0}(143,232)(174,232){1}
//: enddecls

  //: output g4 (Data1) @(351,171) /sn:0 /w:[ 1 ]
  //: input g8 (Read2) @(69,196) /sn:0 /w:[ 0 ]
  //: input g3 (clr) @(241,95) /sn:0 /R:3 /w:[ 0 ]
  //: input g2 (clk) @(283,337) /sn:0 /R:1 /w:[ 0 ]
  //: input g1 (RegWrite) @(215,335) /sn:0 /R:1 /w:[ 0 ]
  //: input g10 (Write) @(67,242) /sn:0 /w:[ 0 ]
  //: input g6 (Read1) @(71,156) /sn:0 /w:[ 0 ]
  mux g7 (.I0(Read2), .I1(Write), .S(RegDst), .Z(w6));   //: @(130,232) /sn:0 /R:1 /w:[ 5 1 1 0 ] /ss:0 /do:1
  //: joint g9 (Read2) @(100, 196) /w:[ 2 -1 1 4 ]
  //: input g12 (WriteData) @(71,303) /sn:0 /w:[ 0 ]
  //: output g5 (Data2) @(350,263) /sn:0 /w:[ 1 ]
  //: input g11 (RegDst) @(72,274) /sn:0 /w:[ 0 ]
  //: output g14 (SignExtOut) @(349,391) /sn:0 /w:[ 1 ]
  BRegs32x32 g0 (.clr(clr), .Read1(Read1), .Read2(Read2), .Write(w6), .WriteData(WriteData), .clk(clk), .RegWrite(RegWrite), .Data1(Data1), .Data2(Data2));   //: @(175, 124) /sz:(147, 182) /sn:0 /p:[ Ti0>1 Li0>1 Li1>3 Li2>1 Li3>1 Bi0>1 Bi1>1 Ro0<0 Ro1<0 ]
  SignExtend g15 (.Inm16(SignExtIn), .Inm32(SignExtOut));   //: @(181, 368) /sz:(148, 40) /sn:0 /p:[ Li0>1 Ro0<0 ]
  //: input g13 (SignExtIn) @(136,392) /sn:0 /w:[ 0 ]

endmodule

module SignExtend(Inm32, Inm16);
//: interface  /sz:(148, 40) /bd:[ Li0>Inm16[15:0](24/40) Ro0<Inm32[31:0](23/40) ]
output [31:0] Inm32;    //: /sn:0 {0}(283,267)(339,267){1}
input [15:0] Inm16;    //: /sn:0 {0}(20,272)(105,272){1}
//: {2}(106,272)(277,272){3}
wire w18;    //: /sn:0 {0}(106,267)(106,247){1}
//: {2}(108,245)(175,245){3}
//: {4}(106,243)(106,237){5}
//: {6}(108,235)(175,235){7}
//: {8}(106,233)(106,227){9}
//: {10}(108,225)(175,225){11}
//: {12}(106,223)(106,217){13}
//: {14}(108,215)(175,215){15}
//: {16}(106,213)(106,207){17}
//: {18}(108,205)(175,205){19}
//: {20}(106,203)(106,197){21}
//: {22}(108,195)(175,195){23}
//: {24}(106,193)(106,187){25}
//: {26}(108,185)(175,185){27}
//: {28}(106,183)(106,177){29}
//: {30}(108,175)(175,175){31}
//: {32}(106,173)(106,167){33}
//: {34}(108,165)(175,165){35}
//: {36}(106,163)(106,157){37}
//: {38}(108,155)(175,155){39}
//: {40}(106,153)(106,147){41}
//: {42}(108,145)(175,145){43}
//: {44}(106,143)(106,137){45}
//: {46}(108,135)(175,135){47}
//: {48}(106,133)(106,127){49}
//: {50}(108,125)(175,125){51}
//: {52}(106,123)(106,117){53}
//: {54}(108,115)(175,115){55}
//: {56}(106,113)(106,107){57}
//: {58}(108,105)(175,105){59}
//: {60}(106,103)(106,95)(175,95){61}
wire [15:0] w1;    //: /sn:0 /dp:1 {0}(277,262)(227,262)(227,170)(181,170){1}
//: enddecls

  tran g4(.Z(w18), .I(Inm16[15]));   //: @(106,270) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:0
  //: joint g8 (w18) @(106, 215) /w:[ 14 16 -1 13 ]
  //: joint g3 (w18) @(106, 245) /w:[ 2 4 -1 1 ]
  //: joint g16 (w18) @(106, 135) /w:[ 46 48 -1 45 ]
  //: joint g17 (w18) @(106, 125) /w:[ 50 52 -1 49 ]
  concat g2 (.I0(Inm16), .I1(w1), .Z(Inm32));   //: @(282,267) /sn:0 /w:[ 3 0 0 ] /dr:0
  //: output g1 (Inm32) @(336,267) /sn:0 /w:[ 1 ]
  //: joint g18 (w18) @(106, 115) /w:[ 54 56 -1 53 ]
  //: joint g10 (w18) @(106, 195) /w:[ 22 24 -1 21 ]
  concat g6 (.I0(w18), .I1(w18), .I2(w18), .I3(w18), .I4(w18), .I5(w18), .I6(w18), .I7(w18), .I8(w18), .I9(w18), .I10(w18), .I11(w18), .I12(w18), .I13(w18), .I14(w18), .I15(w18), .Z(w1));   //: @(180,170) /sn:0 /w:[ 3 7 11 15 19 23 27 31 35 39 43 47 51 55 59 61 1 ] /dr:0
  //: joint g7 (w18) @(106, 225) /w:[ 10 12 -1 9 ]
  //: joint g9 (w18) @(106, 205) /w:[ 18 20 -1 17 ]
  //: joint g12 (w18) @(106, 175) /w:[ 30 32 -1 29 ]
  //: joint g5 (w18) @(106, 235) /w:[ 6 8 -1 5 ]
  //: joint g11 (w18) @(106, 185) /w:[ 26 28 -1 25 ]
  //: joint g14 (w18) @(106, 155) /w:[ 38 40 -1 37 ]
  //: joint g19 (w18) @(106, 105) /w:[ 58 60 -1 57 ]
  //: input g0 (Inm16) @(18,272) /sn:0 /w:[ 0 ]
  //: joint g15 (w18) @(106, 145) /w:[ 42 44 -1 41 ]
  //: joint g13 (w18) @(106, 165) /w:[ 34 36 -1 33 ]

endmodule

module EXE(ALU_OP, Zero, ALU_RES, B, A);
//: interface  /sz:(99, 89) /bd:[ Ti0>ALU_OP[3:0](49/99) Li0>A[31:0](25/89) Li1>B[31:0](68/89) Ro0<Zero(23/89) Ro1<ALU_RES[31:0](66/89) ]
input [31:0] B;    //: /sn:0 {0}(358,122)(358,181){1}
//: {2}(360,183)(446,183){3}
//: {4}(358,185)(358,207){5}
//: {6}(360,209)(447,209){7}
//: {8}(358,211)(358,280){9}
//: {10}(360,282)(445,282){11}
//: {12}(358,284)(358,420)(423,420){13}
output Zero;    //: /sn:0 {0}(799,345)(776,345){1}
output [31:0] ALU_RES;    //: /sn:0 /dp:1 {0}(716,314)(740,314){1}
//: {2}(744,314)(779,314){3}
//: {4}(742,316)(742,345)(755,345){5}
input [31:0] A;    //: /sn:0 /dp:1 {0}(316,128)(316,176){1}
//: {2}(318,178)(446,178){3}
//: {4}(316,180)(316,202){5}
//: {6}(318,204)(447,204){7}
//: {8}(316,206)(316,248){9}
//: {10}(318,250)(445,250){11}
//: {12}(316,252)(316,382)(492,382){13}
supply0 w10;    //: /sn:0 {0}(470,367)(470,358){1}
//: {2}(472,356)(506,356)(506,374){3}
//: {4}(468,356)(437,356)(437,412){5}
input [3:0] ALU_OP;    //: /sn:0 {0}(710,226)(710,250)(703,250){1}
//: {2}(702,250)(697,250){3}
supply0 w5;    //: /sn:0 /dp:1 {0}(459,242)(459,228)(482,228)(482,238){1}
wire [31:0] w13;    //: /sn:0 {0}(614,317)(633,317){1}
//: {2}(637,317)(687,317){3}
//: {4}(635,315)(635,310)(687,310){5}
//: {6}(635,319)(635,323)(687,323){7}
wire w6;    //: /sn:0 /dp:1 {0}(459,305)(459,290){1}
wire [31:0] w7;    //: /sn:0 /dp:1 {0}(467,181)(664,181)(664,290)(687,290){1}
wire w4;    //: /sn:0 /dp:1 {0}(437,474)(437,460){1}
wire [2:0] w0;    //: /sn:0 {0}(703,254)(703,291){1}
wire [31:0] w3;    //: /sn:0 /dp:1 {0}(452,436)(471,436)(471,414)(492,414){1}
wire [31:0] w18;    //: /sn:0 /dp:1 {0}(687,337)(650,337)(650,396)(778,396)(778,414){1}
wire w23;    //: /sn:0 {0}(873,420)(873,449){1}
//: {2}(875,451)(881,451){3}
//: {4}(885,451)(891,451){5}
//: {6}(895,451)(901,451){7}
//: {8}(905,451)(911,451){9}
//: {10}(915,451)(921,451){11}
//: {12}(925,451)(933,451)(933,420){13}
//: {14}(923,449)(923,420){15}
//: {16}(913,449)(913,420){17}
//: {18}(903,449)(903,420){19}
//: {20}(893,449)(893,420){21}
//: {22}(883,449)(883,420){23}
//: {24}(871,451)(865,451){25}
//: {26}(863,449)(863,420){27}
//: {28}(861,451)(855,451){29}
//: {30}(853,449)(853,420){31}
//: {32}(851,451)(845,451){33}
//: {34}(843,449)(843,420){35}
//: {36}(841,451)(835,451){37}
//: {38}(833,449)(833,420){39}
//: {40}(831,451)(825,451){41}
//: {42}(823,449)(823,420){43}
//: {44}(821,451)(815,451){45}
//: {46}(813,449)(813,420){47}
//: {48}(811,451)(805,451){49}
//: {50}(803,449)(803,420){51}
//: {52}(801,451)(795,451){53}
//: {54}(793,449)(793,420){55}
//: {56}(791,451)(785,451){57}
//: {58}(783,449)(783,420){59}
//: {60}(781,451)(775,451){61}
//: {62}(773,449)(773,420){63}
//: {64}(771,451)(765,451){65}
//: {66}(763,449)(763,420){67}
//: {68}(761,451)(755,451){69}
//: {70}(753,449)(753,420){71}
//: {72}(751,451)(745,451){73}
//: {74}(743,449)(743,420){75}
//: {76}(741,451)(735,451){77}
//: {78}(733,449)(733,420){79}
//: {80}(731,451)(725,451){81}
//: {82}(723,449)(723,420){83}
//: {84}(721,451)(715,451){85}
//: {86}(713,449)(713,420){87}
//: {88}(711,451)(705,451){89}
//: {90}(703,449)(703,420){91}
//: {92}(701,451)(695,451){93}
//: {94}(693,449)(693,420){95}
//: {96}(691,451)(685,451){97}
//: {98}(683,449)(683,420){99}
//: {100}(681,451)(675,451){101}
//: {102}(673,449)(673,420){103}
//: {104}(671,451)(665,451){105}
//: {106}(663,449)(663,420){107}
//: {108}(661,451)(655,451){109}
//: {110}(653,449)(653,420){111}
//: {112}(651,451)(645,451){113}
//: {114}(643,449)(643,420){115}
//: {116}(641,451)(635,451){117}
//: {118}(633,449)(633,420){119}
//: {120}(631,451)(625,451){121}
//: {122}(623,449)(623,420){123}
//: {124}(621,451)(564,451)(564,402){125}
wire [31:0] w1;    //: /sn:0 /dp:1 {0}(403,452)(423,452){1}
wire [31:0] w17;    //: /sn:0 /dp:3 {0}(521,398)(563,398){1}
//: {2}(564,398)(635,398)(635,330)(687,330){3}
wire w11;    //: /sn:0 /dp:1 {0}(506,438)(506,422){1}
wire [31:0] w2;    //: /sn:0 {0}(474,266)(634,266)(634,303)(687,303){1}
wire [31:0] w9;    //: /sn:0 /dp:1 {0}(687,297)(649,297)(649,207)(468,207){1}
//: enddecls

  //: joint g44 (w23) @(883, 451) /w:[ 4 22 3 -1 ]
  and g8 (.I0(A), .I1(B), .Z(w7));   //: @(457,181) /sn:0 /w:[ 3 3 0 ]
  //: input g4 (ALU_OP) @(710,224) /sn:0 /R:3 /w:[ 0 ]
  //: joint g47 (w23) @(843, 451) /w:[ 33 34 36 -1 ]
  add g16 (.A(w1), .B(!B), .S(w3), .CI(w10), .CO(w4));   //: @(439,436) /sn:0 /R:1 /w:[ 1 13 0 5 1 ]
  //: output g3 (Zero) @(796,345) /sn:0 /w:[ 0 ]
  led g26 (.I(w6));   //: @(459,312) /sn:0 /R:2 /w:[ 0 ] /type:2
  add g17 (.A(w3), .B(A), .S(w17), .CI(w10), .CO(w11));   //: @(508,398) /sn:0 /R:1 /w:[ 1 13 0 3 1 ]
  //: output g2 (ALU_RES) @(776,314) /sn:0 /w:[ 3 ]
  //: joint g30 (w23) @(903, 451) /w:[ 8 18 7 -1 ]
  nor g23 (.I0(ALU_RES), .Z(Zero));   //: @(766,345) /sn:0 /w:[ 5 1 ]
  //: joint g39 (w23) @(793, 451) /w:[ 53 54 56 -1 ]
  //: joint g24 (ALU_RES) @(742, 314) /w:[ 2 -1 1 4 ]
  //: input g1 (B) @(358,120) /sn:0 /R:3 /w:[ 0 ]
  led g60 (.I(w11));   //: @(506,445) /sn:0 /R:2 /w:[ 0 ] /type:2
  //: joint g29 (w23) @(913, 451) /w:[ 10 16 9 -1 ]
  //: joint g51 (w23) @(763, 451) /w:[ 65 66 68 -1 ]
  //: dip g18 (w13) @(576,317) /sn:0 /R:1 /w:[ 0 ] /st:0
  concat g25 (.I0(w23), .I1(w23), .I2(w23), .I3(w23), .I4(w23), .I5(w23), .I6(w23), .I7(w23), .I8(w23), .I9(w23), .I10(w23), .I11(w23), .I12(w23), .I13(w23), .I14(w23), .I15(w23), .I16(w23), .I17(w23), .I18(w23), .I19(w23), .I20(w23), .I21(w23), .I22(w23), .I23(w23), .I24(w23), .I25(w23), .I26(w23), .I27(w23), .I28(w23), .I29(w23), .I30(w23), .I31(w23), .Z(w18));   //: @(778,415) /sn:0 /R:1 /w:[ 13 15 17 19 21 23 0 27 31 35 39 43 47 51 55 59 63 67 71 75 79 83 87 91 95 99 103 107 111 115 119 123 1 ] /dr:0
  or g10 (.I0(A), .I1(B), .Z(w9));   //: @(458,207) /sn:0 /w:[ 7 7 1 ]
  //: joint g49 (w23) @(803, 451) /w:[ 49 50 52 -1 ]
  //: joint g50 (w23) @(783, 451) /w:[ 57 58 60 -1 ]
  //: joint g6 (A) @(316, 178) /w:[ 2 1 -1 4 ]
  //: joint g58 (w23) @(633, 451) /w:[ 117 118 120 -1 ]
  //: joint g56 (w23) @(663, 451) /w:[ 105 106 108 -1 ]
  //: joint g35 (w23) @(713, 451) /w:[ 85 86 88 -1 ]
  //: joint g7 (B) @(358, 183) /w:[ 2 1 -1 4 ]
  mux g9 (.I0(w7), .I1(w9), .I2(w2), .I3(w13), .I4(w13), .I5(w13), .I6(w17), .I7(w18), .S(w0), .Z(ALU_RES));   //: @(703,314) /sn:0 /R:1 /w:[ 1 0 1 5 3 7 3 0 1 0 ] /ss:1 /do:0
  led g59 (.I(w4));   //: @(437,481) /sn:0 /R:2 /w:[ 0 ] /type:2
  //: joint g31 (w23) @(623, 451) /w:[ 121 122 124 -1 ]
  //: dip g22 (w1) @(365,452) /sn:0 /R:1 /w:[ 0 ] /st:1
  //: joint g54 (w23) @(703, 451) /w:[ 89 90 92 -1 ]
  //: joint g45 (w23) @(893, 451) /w:[ 6 20 5 -1 ]
  //: joint g41 (w23) @(833, 451) /w:[ 37 38 40 -1 ]
  //: joint g36 (w23) @(733, 451) /w:[ 77 78 80 -1 ]
  //: joint g33 (w23) @(673, 451) /w:[ 101 102 104 -1 ]
  //: joint g52 (w23) @(743, 451) /w:[ 73 74 76 -1 ]
  //: joint g42 (w23) @(853, 451) /w:[ 29 30 32 -1 ]
  //: joint g40 (w23) @(813, 451) /w:[ 45 46 48 -1 ]
  //: joint g12 (B) @(358, 209) /w:[ 6 5 -1 8 ]
  //: joint g57 (w23) @(643, 451) /w:[ 113 114 116 -1 ]
  //: joint g46 (w23) @(863, 451) /w:[ 25 26 28 -1 ]
  //: joint g34 (w23) @(693, 451) /w:[ 93 94 96 -1 ]
  //: joint g28 (w23) @(923, 451) /w:[ 12 14 11 -1 ]
  //: joint g14 (A) @(316, 250) /w:[ 10 9 -1 12 ]
  //: joint g11 (A) @(316, 204) /w:[ 6 5 -1 8 ]
  add g5 (.A(B), .B(A), .S(w2), .CI(w5), .CO(w6));   //: @(461,266) /sn:0 /R:1 /w:[ 11 11 0 0 1 ]
  //: joint g21 (w13) @(635, 317) /w:[ 2 4 1 6 ]
  //: comment g61 /dolink:0 /link:"" @(554,334) /sn:0 /R:2
  //: /line:"unused pins"
  //: /line:"   0011"
  //: /line:"   0100"
  //: /line:"   0101"
  //: /end
  //: supply0 g19 (w10) @(470,373) /sn:0 /w:[ 0 ]
  //: joint g32 (w23) @(653, 451) /w:[ 109 110 112 -1 ]
  //: joint g20 (w10) @(470, 356) /w:[ 2 -1 4 1 ]
  //: joint g43 (w23) @(873, 451) /w:[ 2 1 24 -1 ]
  //: joint g38 (w23) @(773, 451) /w:[ 61 62 64 -1 ]
  //: joint g15 (B) @(358, 282) /w:[ 10 9 -1 12 ]
  //: input g0 (A) @(316,126) /sn:0 /R:3 /w:[ 0 ]
  //: joint g48 (w23) @(823, 451) /w:[ 41 42 44 -1 ]
  tran g27(.Z(w23), .I(w17[31]));   //: @(564,396) /sn:0 /R:1 /w:[ 125 1 2 ] /ss:1
  tran g62(.Z(w0), .I(ALU_OP[2:0]));   //: @(703,248) /sn:0 /R:1 /w:[ 0 2 1 ] /ss:1
  //: joint g37 (w23) @(753, 451) /w:[ 69 70 72 -1 ]
  //: joint g55 (w23) @(683, 451) /w:[ 97 98 100 -1 ]
  //: joint g53 (w23) @(723, 451) /w:[ 81 82 84 -1 ]
  //: supply0 g13 (w5) @(482,244) /sn:0 /w:[ 1 ]

endmodule

module BRegs32x32(Read2, Write, Read1, Data2, Data1, clr, clk, RegWrite, WriteData);
//: interface  /sz:(147, 182) /bd:[ Ti0>clr(66/147) Li0>Read1[4:0](32/182) Li1>Read2[4:0](72/182) Li2>Write[4:0](108/182) Li3>WriteData[31:0](148/182) Bi0>clk(108/147) Bi1>RegWrite(40/147) Ro0<Data1[31:0](47/182) Ro1<Data2[31:0](139/182) ]
output [31:0] Data2;    //: /sn:0 {0}(668,485)(668,472)(669,472)(669,445){1}
input [4:0] Write;    //: /sn:0 {0}(-238,-38)(-138,-38)(-138,-37)(-66,-37){1}
//: {2}(-65,-37)(-28,-37){3}
//: {4}(-27,-37)(-16,-37){5}
input [31:0] WriteData;    //: /sn:0 {0}(669,157)(669,75)(481,75){1}
//: {2}(477,75)(292,75){3}
//: {4}(288,75)(89,75){5}
//: {6}(85,75)(-104,75)(-104,73)(-237,73){7}
//: {8}(87,77)(87,157){9}
//: {10}(290,77)(290,107)(291,107)(291,152){11}
//: {12}(479,77)(479,157){13}
output [31:0] Data1;    //: /sn:0 {0}(59,382)(59,465){1}
supply1 w21;    //: /sn:0 {0}(82,3)(57,3)(57,-11){1}
input clr;    //: /sn:0 {0}(721,193)(731,193)(731,-83)(543,-83){1}
//: {2}(539,-83)(355,-83){3}
//: {4}(351,-83)(150,-83){5}
//: {6}(146,-83)(-44,-83)(-44,-92)(-235,-92){7}
//: {8}(148,-81)(148,193)(139,193){9}
//: {10}(353,-81)(353,188)(343,188){11}
//: {12}(541,-81)(541,193)(531,193){13}
input RegWrite;    //: /sn:0 {0}(-237,263)(-71,263){1}
//: {2}(-67,263)(171,263){3}
//: {4}(175,263)(370,263){5}
//: {6}(374,263)(552,263)(552,219)(556,219){7}
//: {8}(372,261)(372,219)(383,219){9}
//: {10}(173,261)(173,214)(183,214){11}
//: {12}(-69,261)(-69,219)(-38,219){13}
input clk;    //: /sn:0 {0}(556,214)(542,214)(542,285)(364,285){1}
//: {2}(362,283)(362,214)(383,214){3}
//: {4}(360,285)(167,285){5}
//: {6}(165,283)(165,209)(183,209){7}
//: {8}(163,285)(-56,285){9}
//: {10}(-58,283)(-58,214)(-38,214){11}
//: {12}(-60,285)(-237,285){13}
input [4:0] Read1;    //: {0}(-237,96)(-208,96)(-208,95)(-124,95){1}
//: {2}(-123,95)(-96,95){3}
//: {4}(-95,95)(-78,95){5}
input [4:0] Read2;    //: {0}(-237,145)(-141,145){1}
//: {2}(-140,145)(-123,145)(-123,144)(-94,144){3}
//: {4}(-93,144)(-79,144){5}
wire [1:0] w6;    //: /sn:0 {0}(36,369)(-123,369)(-123,99){1}
wire w16;    //: /sn:0 {0}(39,205)(-50,205)(-50,39)(88,39)(88,19){1}
wire w4;    //: /sn:0 {0}(112,19)(112,46)(370,46)(370,205)(431,205){1}
wire [31:0] w3;    //: /sn:0 {0}(77,353)(77,334)(659,334)(659,228){1}
wire [31:0] R2;    //: {0}(65,353)(65,319)(469,319)(469,228){1}
wire [31:0] w0;    //: /sn:0 {0}(651,416)(651,398)(105,398)(105,228){1}
wire w22;    //: /sn:0 {0}(404,217)(431,217){1}
wire w20;    //: /sn:0 {0}(124,19)(124,29)(556,29)(556,205)(621,205){1}
wire [2:0] w19;    //: /sn:0 {0}(431,169)(419,169)(419,109){1}
//: {2}(421,107)(606,107)(606,169)(621,169){3}
//: {4}(417,107)(297,107)(297,106)(231,106){5}
//: {6}(227,106)(25,106){7}
//: {8}(21,106)(-95,106)(-95,99){9}
//: {10}(23,108)(23,169)(39,169){11}
//: {12}(229,108)(229,164)(243,164){13}
wire [2:0] w18;    //: /sn:0 {0}(431,180)(402,180)(402,125){1}
//: {2}(404,123)(589,123)(589,180)(621,180){3}
//: {4}(400,123)(279,123)(279,122)(212,122){5}
//: {6}(208,122)(8,122){7}
//: {8}(4,122)(-93,122)(-93,139){9}
//: {10}(6,124)(6,180)(39,180){11}
//: {12}(210,124)(210,175)(243,175){13}
wire w23;    //: /sn:0 {0}(577,217)(621,217){1}
wire [1:0] w10;    //: /sn:0 {0}(-140,149)(-140,432)(646,432){1}
wire [2:0] w24;    //: /sn:0 {0}(431,193)(381,193)(381,141){1}
//: {2}(383,139)(568,139)(568,193)(621,193){3}
//: {4}(379,139)(260,139)(260,138)(195,138){5}
//: {6}(191,138)(-13,138){7}
//: {8}(-17,138)(-65,138)(-65,-33){9}
//: {10}(-15,140)(-15,193)(39,193){11}
//: {12}(193,140)(193,188)(243,188){13}
wire w31;    //: /sn:0 {0}(243,200)(178,200)(178,60)(100,60)(100,19){1}
wire w1;    //: /sn:0 {0}(-17,217)(39,217){1}
wire [31:0] R1;    //: {0}(281,223)(281,308)(53,308)(53,353){1}
wire [31:0] R3;    //: {0}(687,228)(687,416){1}
wire [1:0] w11;    //: /sn:0 {0}(-27,-33)(-27,-23)(106,-23)(106,-10){1}
wire w2;    //: /sn:0 {0}(243,212)(204,212){1}
wire [31:0] R0;    //: {0}(77,228)(77,299)(41,299)(41,353){1}
wire [31:0] w5;    //: /sn:0 {0}(675,416)(675,372)(497,372)(497,228){1}
wire [31:0] w9;    //: /sn:0 {0}(663,416)(663,387)(309,387)(309,223){1}
//: enddecls

  //: joint g8 (w18) @(6, 122) /w:[ 7 -1 8 10 ]
  //: input g4 (Read2) @(-239,145) /sn:0 /w:[ 0 ]
  //: joint g44 (clr) @(353, -83) /w:[ 3 -1 4 10 ]
  //: input g3 (Write) @(-240,-38) /sn:0 /w:[ 0 ]
  //: joint g16 (clk) @(165, 285) /w:[ 5 6 8 -1 ]
  //: joint g47 (clr) @(541, -83) /w:[ 1 -1 2 12 ]
  //: input g17 (Read1) @(-239,96) /sn:0 /w:[ 0 ]
  //: joint g26 (w19) @(229, 106) /w:[ 5 -1 6 12 ]
  //: output g2 (Data2) @(668,482) /sn:0 /R:3 /w:[ 0 ]
  tran g23(.Z(w24), .I(Write[2:0]));   //: @(-65,-39) /sn:0 /R:1 /w:[ 9 1 2 ] /ss:1
  tran g30(.Z(w10), .I(Read2[4:3]));   //: @(-140,143) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1
  //: output g1 (Data1) @(59,462) /sn:0 /R:3 /w:[ 1 ]
  //: joint g39 (RegWrite) @(372, 263) /w:[ 6 8 5 -1 ]
  Regs8x32 g24 (.DIN(WriteData), .SD(w24), .SA(w19), .SB(w18), .RegWr(w31), .clk(w2), .clr(clr), .AOUT(R1), .BOUT(w9));   //: @(244, 153) /sz:(98, 69) /sn:0 /p:[ Ti0>11 Li0>13 Li1>13 Li2>13 Li3>0 Li4>0 Ri0>11 Bo0<0 Bo1<1 ]
  Regs8x32 g29 (.DIN(WriteData), .SD(w24), .SA(w19), .SB(w18), .RegWr(w4), .clk(w22), .clr(clr), .AOUT(R2), .BOUT(w5));   //: @(432, 158) /sz:(98, 69) /sn:0 /p:[ Ti0>13 Li0>0 Li1>0 Li2>0 Li3>1 Li4>1 Ri0>13 Bo0<1 Bo1<1 ]
  //: comment g51 /dolink:0 /link:"" @(395,229) /sn:0
  //: /line:"Regs 16-23"
  //: /end
  tran g18(.Z(w19), .I(Read1[2:0]));   //: @(-95,93) /sn:0 /R:1 /w:[ 9 3 4 ] /ss:1
  //: supply1 g10 (w21) @(68,-11) /sn:0 /w:[ 1 ]
  //: joint g25 (w18) @(210, 122) /w:[ 5 -1 6 12 ]
  //: comment g49 /dolink:0 /link:"" @(210,225) /sn:0
  //: /line:"Regs 8-15"
  //: /end
  //: comment g50 /dolink:0 /link:"" @(585,229) /sn:0
  //: /line:"Regs 24-31"
  //: /end
  Regs8x32 g6 (.DIN(WriteData), .SD(w24), .SA(w19), .SB(w18), .RegWr(w16), .clk(w1), .clr(clr), .AOUT(R0), .BOUT(w0));   //: @(40, 158) /sz:(98, 69) /sn:0 /p:[ Ti0>9 Li0>11 Li1>11 Li2>11 Li3>0 Li4>1 Ri0>9 Bo0<0 Bo1<1 ]
  //: joint g7 (w19) @(23, 106) /w:[ 7 -1 8 10 ]
  demux g9 (.I(w11), .E(w21), .Z0(w16), .Z1(w31), .Z2(w4), .Z3(w20));   //: @(106,3) /sn:0 /w:[ 1 0 1 1 0 0 ]
  and g35 (.I0(clk), .I1(RegWrite), .Z(w22));   //: @(394,217) /sn:0 /delay:" 1" /w:[ 3 9 0 ]
  tran g31(.Z(w6), .I(Read1[4:3]));   //: @(-123,93) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  tran g22(.Z(w18), .I(Read2[2:0]));   //: @(-93,142) /sn:0 /R:1 /w:[ 9 3 4 ] /ss:0
  and g36 (.I0(clk), .I1(RegWrite), .Z(w23));   //: @(567,217) /sn:0 /delay:" 1" /w:[ 0 7 0 ]
  //: joint g41 (w19) @(419, 107) /w:[ 2 -1 4 1 ]
  //: joint g45 (WriteData) @(479, 75) /w:[ 1 -1 2 12 ]
  and g33 (.I0(clk), .I1(RegWrite), .Z(w1));   //: @(-27,217) /sn:0 /delay:" 1" /w:[ 11 13 0 ]
  //: input g42 (clr) @(-237,-92) /sn:0 /w:[ 7 ]
  //: joint g40 (w18) @(402, 123) /w:[ 2 -1 4 1 ]
  //: input g12 (clk) @(-239,285) /sn:0 /w:[ 13 ]
  and g34 (.I0(clk), .I1(RegWrite), .Z(w2));   //: @(194,212) /sn:0 /delay:" 1" /w:[ 7 11 1 ]
  //: joint g28 (w24) @(381, 139) /w:[ 2 -1 4 1 ]
  Regs8x32 g46 (.DIN(WriteData), .SD(w24), .SA(w19), .SB(w18), .RegWr(w20), .clk(w23), .clr(clr), .AOUT(w3), .BOUT(R3));   //: @(622, 158) /sz:(98, 69) /sn:0 /p:[ Ti0>0 Li0>3 Li1>3 Li2>3 Li3>1 Li4>1 Ri0>0 Bo0<1 Bo1<0 ]
  //: joint g11 (w24) @(-15, 138) /w:[ 7 -1 8 10 ]
  mux g14 (.I0(R0), .I1(R1), .I2(R2), .I3(w3), .S(w6), .Z(Data1));   //: @(59,369) /sn:0 /w:[ 1 1 0 0 0 0 ] /ss:0 /do:0
  tran g5(.Z(w11), .I(Write[4:3]));   //: @(-27,-39) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1
  //: joint g19 (clk) @(-58, 285) /w:[ 9 10 12 -1 ]
  //: joint g21 (w24) @(193, 138) /w:[ 5 -1 6 12 ]
  //: input g32 (RegWrite) @(-239,263) /sn:0 /w:[ 0 ]
  //: joint g20 (WriteData) @(87, 75) /w:[ 5 -1 6 8 ]
  //: joint g38 (RegWrite) @(173, 263) /w:[ 4 10 3 -1 ]
  //: joint g15 (clk) @(362, 285) /w:[ 1 2 4 -1 ]
  //: joint g43 (clr) @(148, -83) /w:[ 5 -1 6 8 ]
  //: input g0 (WriteData) @(-239,73) /sn:0 /w:[ 7 ]
  //: joint g27 (WriteData) @(290, 75) /w:[ 3 -1 4 10 ]
  //: comment g48 /dolink:0 /link:"" @(11,228) /sn:0
  //: /line:"Regs 0-7"
  //: /end
  //: joint g37 (RegWrite) @(-69, 263) /w:[ 2 12 1 -1 ]
  mux g13 (.I0(w0), .I1(w9), .I2(w5), .I3(R3), .S(w10), .Z(Data2));   //: @(669,432) /sn:0 /w:[ 0 0 0 1 1 1 ] /ss:0 /do:0

endmodule

module Regs8x32(SB, SA, BOUT, AOUT, clk, clr, RegWr, SD, DIN);
//: interface  /sz:(98, 69) /bd:[ Ti0>DIN[31:0](47/98) Li0>clk(59/69) Li1>RegWr(47/69) Li2>SB[2:0](22/69) Li3>SA[2:0](11/69) Li4>SD[2:0](35/69) Ri0>clr(35/69) Bo0<BOUT[31:0](65/98) Bo1<AOUT[31:0](37/98) ]
input [31:0] DIN;    //: /sn:0 {0}(531,269)(531,318){1}
//: {2}(533,320)(627,320){3}
//: {4}(631,320)(715,320){5}
//: {6}(719,320)(807,320)(807,429){7}
//: {8}(717,322)(717,352){9}
//: {10}(629,322)(629,433){11}
//: {12}(529,320)(435,320){13}
//: {14}(431,320)(342,320){15}
//: {16}(338,320)(264,320){17}
//: {18}(260,320)(181,320)(181,352){19}
//: {20}(262,322)(262,439){21}
//: {22}(340,322)(340,351){23}
//: {24}(433,322)(433,436){25}
//: {26}(531,322)(531,348){27}
output [31:0] BOUT;    //: /sn:0 {0}(516,697)(516,672){1}
input [2:0] SD;    //: /sn:0 {0}(782,138)(852,138)(852,156){1}
supply1 w21;    //: /sn:0 {0}(828,169)(801,169)(801,153){1}
input [2:0] SB;    //: /sn:0 {0}(466,659)(493,659){1}
input RegWr;    //: /sn:0 {0}(48,363)(68,363)(68,378)(82,378){1}
input [2:0] SA;    //: /sn:0 {0}(256,657)(231,657){1}
input clr;    //: /sn:0 /dp:1 {0}(959,337)(1032,337){1}
input clk;    //: /sn:0 {0}(82,383)(68,383)(68,398)(55,398){1}
output [31:0] AOUT;    //: /sn:0 {0}(279,670)(279,702){1}
wire [31:0] w16;    //: /sn:0 {0}(531,369)(531,574)(520,574){1}
//: {2}(516,574)(282,574)(282,641){3}
//: {4}(518,576)(518,587)(519,587)(519,643){5}
wire w7;    //: /sn:0 {0}(472,451)(513,451)(513,405)(848,405)(848,185){1}
wire [31:0] R5;    //: {0}(288,641)(288,586)(525,586){1}
//: {2}(529,586)(629,586)(629,454){3}
//: {4}(527,588)(527,617)(525,617)(525,643){5}
wire w4;    //: /sn:0 {0}(943,337)(906,337){1}
//: {2}(902,337)(767,337){3}
//: {4}(763,337)(588,337){5}
//: {6}(584,337)(390,337){7}
//: {8}(386,337)(231,337)(231,357)(220,357){9}
//: {10}(388,339)(388,356)(379,356){11}
//: {12}(586,339)(586,353)(570,353){13}
//: {14}(765,339)(765,357)(756,357){15}
//: {16}(904,339)(904,417)(865,417){17}
//: {18}(861,417)(675,417){19}
//: {20}(671,417)(489,417){21}
//: {22}(485,417)(302,417)(302,444)(301,444){23}
//: {24}(487,419)(487,441)(472,441){25}
//: {26}(673,419)(673,438)(668,438){27}
//: {28}(863,419)(863,434)(846,434){29}
wire [31:0] R2;    //: {0}(262,641)(262,537){1}
//: {2}(264,535)(499,535)(499,643){3}
//: {4}(262,533)(262,460){5}
wire w0;    //: /sn:0 {0}(770,439)(764,439)(764,481)(579,481){1}
//: {2}(577,479)(577,443)(592,443){3}
//: {4}(575,481)(390,481){5}
//: {6}(388,479)(388,446)(396,446){7}
//: {8}(386,481)(214,481){9}
//: {10}(212,479)(212,449)(225,449){11}
//: {12}(210,481)(125,481)(125,383){13}
//: {14}(127,381)(291,381){15}
//: {16}(295,381)(477,381){17}
//: {18}(481,381)(660,381)(660,362)(680,362){19}
//: {20}(479,379)(479,358)(494,358){21}
//: {22}(293,379)(293,361)(303,361){23}
//: {24}(125,379)(125,362)(144,362){25}
//: {26}(123,381)(103,381){27}
wire w3;    //: /sn:0 {0}(835,185)(835,397)(330,397)(330,454)(301,454){1}
wire [31:0] R7;    //: {0}(807,450)(807,609)(541,609){1}
//: {2}(537,609)(302,609)(302,641){3}
//: {4}(539,611)(539,643){5}
wire w12;    //: /sn:0 {0}(756,367)(787,367)(787,258)(868,258)(868,185){1}
wire w10;    //: /sn:0 {0}(846,444)(875,444)(875,185){1}
wire [31:0] R4;    //: {0}(340,372)(340,545){1}
//: {2}(342,547)(505,547)(505,643){3}
//: {4}(338,547)(268,547)(268,641){5}
wire [31:0] R3;    //: {0}(512,643)(512,559)(435,559){1}
//: {2}(433,557)(433,457){3}
//: {4}(431,559)(275,559)(275,641){5}
wire w8;    //: /sn:0 {0}(220,367)(249,367)(249,213)(828,213)(828,185){1}
wire Z5;    //: /sn:0 {0}(861,185)(861,413)(700,413)(700,448)(668,448){1}
wire w14;    //: /sn:0 {0}(379,366)(414,366)(414,229)(841,229)(841,185){1}
wire [31:0] R0;    //: {0}(492,643)(492,523)(257,523){1}
//: {2}(253,523)(181,523)(181,373){3}
//: {4}(255,525)(255,641){5}
wire w15;    //: /sn:0 {0}(570,363)(608,363)(608,244)(855,244)(855,185){1}
wire [31:0] R10;    //: /sn:0 {0}(295,641)(295,600)(530,600){1}
//: {2}(534,600)(717,600)(717,373){3}
//: {4}(532,602)(532,643){5}
//: enddecls

  //: joint g8 (w16) @(518, 574) /w:[ 1 -1 2 4 ]
  //: input g4 (SB) @(464,659) /sn:0 /w:[ 0 ]
  //: input g3 (SA) @(229,657) /sn:0 /w:[ 1 ]
  //: joint g16 (R3) @(433, 559) /w:[ 1 2 4 -1 ]
  //: joint g17 (R4) @(340, 547) /w:[ 2 1 4 -1 ]
  //: joint g26 (DIN) @(340, 320) /w:[ 15 -1 16 22 ]
  register R5 (.Q(R5), .D(DIN), .EN(Z5), .CLR(w4), .CK(!w0));   //: @(629,443) /w:[ 3 11 1 27 3 ]
  //: output g2 (BOUT) @(516,694) /sn:0 /R:3 /w:[ 0 ]
  //: joint g23 (w4) @(765, 337) /w:[ 3 -1 4 14 ]
  //: joint g30 (w0) @(212, 481) /w:[ 9 10 12 -1 ]
  //: output g1 (AOUT) @(279,699) /sn:0 /R:3 /w:[ 1 ]
  //: joint g39 (DIN) @(262, 320) /w:[ 17 -1 18 20 ]
  //: joint g24 (DIN) @(531, 320) /w:[ 2 1 12 26 ]
  //: joint g29 (w0) @(388, 481) /w:[ 5 6 8 -1 ]
  register R2 (.Q(R4), .D(DIN), .EN(w14), .CLR(w4), .CK(!w0));   //: @(340,361) /w:[ 0 23 0 11 23 ]
  register R7 (.Q(R7), .D(DIN), .EN(w10), .CLR(w4), .CK(!w0));   //: @(807,439) /w:[ 0 7 0 29 0 ]
  //: joint g18 (R2) @(262, 535) /w:[ 2 4 -1 1 ]
  //: supply1 g10 (w21) @(812,153) /sn:0 /w:[ 1 ]
  not g25 (.I(clr), .Z(w4));   //: @(953,337) /sn:0 /R:2 /w:[ 0 0 ]
  //: joint g6 (R7) @(539, 609) /w:[ 1 -1 2 4 ]
  register R6 (.Q(R10), .D(DIN), .EN(w12), .CLR(w4), .CK(!w0));   //: @(717,362) /w:[ 3 9 0 15 19 ]
  //: joint g7 (R10) @(532, 600) /w:[ 2 -1 1 4 ]
  register R4 (.Q(w16), .D(DIN), .EN(w15), .CLR(w4), .CK(!w0));   //: @(531,358) /w:[ 0 27 0 13 21 ]
  demux g9 (.I(SD), .E(w21), .Z0(!w8), .Z1(!w3), .Z2(!w14), .Z3(!w7), .Z4(!w15), .Z5(!Z5), .Z6(!w12), .Z7(!w10));   //: @(852,169) /sn:0 /w:[ 1 0 1 0 1 1 1 0 1 1 ]
  and g35 (.I0(RegWr), .I1(clk), .Z(w0));   //: @(93,381) /sn:0 /delay:" 1" /w:[ 1 0 27 ]
  //: joint g31 (w4) @(863, 417) /w:[ 17 -1 18 28 ]
  //: joint g22 (w4) @(586, 337) /w:[ 5 -1 6 12 ]
  register R3 (.Q(R3), .D(DIN), .EN(w7), .CLR(w4), .CK(!w0));   //: @(433,446) /w:[ 3 25 0 25 7 ]
  register R1 (.Q(R2), .D(DIN), .EN(w3), .CLR(w4), .CK(!w0));   //: @(262,449) /w:[ 5 21 1 23 11 ]
  //: joint g36 (w4) @(904, 337) /w:[ 1 -1 2 16 ]
  //: joint g41 (DIN) @(717, 320) /w:[ 6 -1 5 8 ]
  //: joint g33 (w4) @(673, 417) /w:[ 19 -1 20 26 ]
  //: joint g42 (DIN) @(629, 320) /w:[ 4 -1 3 10 ]
  //: joint g40 (DIN) @(433, 320) /w:[ 13 -1 14 24 ]
  //: joint g12 (w0) @(479, 381) /w:[ 18 20 17 -1 ]
  //: input g34 (clk) @(53,398) /sn:0 /w:[ 1 ]
  //: input g28 (clr) @(1034,337) /sn:0 /R:2 /w:[ 1 ]
  //: joint g11 (w0) @(293, 381) /w:[ 16 22 15 -1 ]
  //: input g5 (RegWr) @(46,363) /sn:0 /w:[ 0 ]
  mux g14 (.I0(R0), .I1(R2), .I2(R4), .I3(R3), .I4(w16), .I5(R5), .I6(R10), .I7(R7), .S(SA), .Z(AOUT));   //: @(279,657) /sn:0 /w:[ 5 0 5 5 3 0 0 3 0 0 ] /ss:0 /do:0
  //: joint g19 (R0) @(255, 523) /w:[ 1 -1 2 4 ]
  //: joint g21 (w4) @(388, 337) /w:[ 7 -1 8 10 ]
  //: joint g32 (w4) @(487, 417) /w:[ 21 -1 22 24 ]
  //: input g20 (SD) @(780,138) /sn:0 /w:[ 0 ]
  register R0 (.Q(R0), .D(DIN), .EN(w8), .CLR(w4), .CK(!w0));   //: @(181,362) /w:[ 3 19 0 9 25 ]
  //: joint g38 (w0) @(577, 481) /w:[ 1 2 4 -1 ]
  //: joint g15 (R5) @(527, 586) /w:[ 2 -1 1 4 ]
  //: input g0 (DIN) @(531,267) /sn:0 /R:3 /w:[ 0 ]
  //: joint g27 (w0) @(125, 381) /w:[ 14 24 26 13 ]
  mux g13 (.I0(R0), .I1(R2), .I2(R4), .I3(R3), .I4(w16), .I5(R5), .I6(R10), .I7(R7), .S(SB), .Z(BOUT));   //: @(516,659) /sn:0 /w:[ 0 3 3 0 5 5 5 5 1 1 ] /ss:0 /do:0

endmodule

module main;    //: root_module
wire [15:0] w6;    //: /sn:0 /dp:1 {0}(677,379)(718,379){1}
wire [31:0] Data2;    //: /sn:0 {0}(848,301)(917,301){1}
wire w7;    //: /sn:0 {0}(780,138)(780,160){1}
wire Zero;    //: /sn:0 {0}(1018,256)(1054,256){1}
wire [4:0] w4;    //: /sn:0 /dp:1 {0}(675,236)(718,236){1}
wire [4:0] Write;    //: /sn:0 /dp:1 {0}(718,276)(675,276){1}
wire [3:0] w0;    //: /sn:0 /dp:1 {0}(967,208)(967,232){1}
wire w3;    //: /sn:0 {0}(676,314)(718,314){1}
wire [31:0] Data1;    //: /sn:0 {0}(848,258)(917,258){1}
wire [31:0] SignExtOut;    //: /sn:0 {0}(848,376)(886,376){1}
wire w1;    //: /sn:0 {0}(811,447)(811,417){1}
wire w8;    //: /sn:0 {0}(700,460)(765,460)(765,417){1}
wire [4:0] w2;    //: /sn:0 /dp:1 {0}(677,201)(718,201){1}
wire [31:0] w5;    //: /sn:0 /dp:1 {0}(676,347)(718,347){1}
wire [31:0] w9;    //: /sn:0 {0}(1052,299)(1018,299){1}
//: enddecls

  //: dip g4 (Write) @(637,276) /sn:0 /R:1 /w:[ 1 ] /st:5
  led g8 (.I(SignExtOut));   //: @(893,376) /sn:0 /R:3 /w:[ 1 ] /type:2
  //: dip g3 (w2) @(639,201) /sn:0 /R:1 /w:[ 0 ] /st:5
  //: switch g2 (w1) @(811,461) /sn:0 /R:1 /w:[ 0 ] /st:0
  clock g1 (.Z(w8));   //: @(687,460) /sn:0 /w:[ 0 ] /omega:1500 /phi:0 /duty:50
  led g10 (.I(w9));   //: @(1059,299) /sn:0 /R:3 /w:[ 0 ] /type:2
  //: dip g6 (w5) @(638,347) /sn:0 /R:1 /w:[ 0 ] /st:15
  led g9 (.I(Zero));   //: @(1061,256) /sn:0 /R:3 /w:[ 1 ] /type:2
  //: dip g7 (w6) @(639,379) /sn:0 /R:1 /w:[ 0 ] /st:65526
  //: switch g12 (w7) @(780,125) /sn:0 /R:3 /w:[ 0 ] /st:1
  //: dip g14 (w0) @(967,198) /sn:0 /w:[ 0 ] /st:0
  //: dip g5 (w4) @(637,236) /sn:0 /R:1 /w:[ 0 ] /st:0
  //: switch g11 (w3) @(659,314) /sn:0 /w:[ 0 ] /st:0
  READ g0 (.RegWrite(w7), .SignExtIn(w6), .WriteData(w5), .RegDst(w3), .Write(Write), .Read2(w4), .Read1(w2), .clr(w1), .clk(w8), .SignExtOut(SignExtOut), .Data2(Data2), .Data1(Data1));   //: @(719, 161) /sz:(128, 255) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Li2>1 Li3>0 Li4>1 Li5>1 Bi0>1 Bi1>1 Ro0<0 Ro1<0 Ro2<0 ]
  EXE g13 (.ALU_OP(w0), .B(Data2), .A(Data1), .ALU_RES(w9), .Zero(Zero));   //: @(918, 233) /sz:(99, 89) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Ro0<1 Ro1<0 ]

endmodule
