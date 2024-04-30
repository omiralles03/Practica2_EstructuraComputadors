//: version "1.8.7"

module Zero(f, i);
//: interface  /sz:(40, 40) /bd:[ Li0>i[31:0](21/40) Ro0<f(22/40) ]
supply0 w0;    //: /sn:0 {0}(803,314)(803,304)(788,304)(788,362)(779,362)(779,372){1}
input f;    //: /sn:0 {0}(769,401)(769,481)(804,481)(804,441)(873,441)(873,448)(929,448)(929,393)(899,393){1}
input [31:0] i;    //: /sn:0 {0}(276,291)(433,291)(433,299)(443,299){1}
supply1 w2;    //: /sn:0 {0}(750,325)(750,368)(759,368)(759,372){1}
wire [31:0] w7;    //: /sn:0 {0}(517,298)(575,298)(575,302)(676,302){1}
//: {2}(677,302)(713,302)(713,268)(787,268)(787,239){3}
wire [31:0] w1;    //: /sn:0 /dp:1 {0}(496,228)(496,252)(574,252){1}
wire o;    //: /sn:0 {0}(677,306)(677,327){1}
//: {2}(675,329)(600,329)(600,402)(615,402)(615,392){3}
//: {4}(677,331)(677,388)(746,388){5}
//: enddecls

  //: joint g8 (o) @(677, 329) /w:[ -1 1 2 4 ]
  led g4 (.I(w7));   //: @(787,232) /sn:0 /w:[ 3 ] /type:3
  //: dip g3 (w1) @(496,218) /sn:0 /w:[ 0 ] /st:0
  Ca2 g2 (.in(i), .out(w7));   //: @(444, 277) /sz:(72, 40) /sn:0 /p:[ Li0>1 Ro0<0 ]
  //: input g1 (f) @(897,393) /sn:0 /w:[ 1 ]
  //: supply0 g10 (w0) @(803,320) /sn:0 /w:[ 0 ]
  mux g6 (.I0(w2), .I1(w0), .S(o), .Z(f));   //: @(769,388) /sn:0 /w:[ 1 1 5 0 ] /ss:0 /do:0
  //: supply1 g9 (w2) @(761,325) /sn:0 /w:[ 0 ]
  led g7 (.I(o));   //: @(615,385) /sn:0 /w:[ 3 ] /type:0
  tran g5(.Z(o), .I(w7[31]));   //: @(677,300) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1
  //: input g0 (i) @(274,291) /sn:0 /w:[ 0 ]

endmodule

module Ca2(out, in);
//: interface  /sz:(72, 40) /bd:[ Li0>in[31:0](22/40) Ro0<out[31:0](21/40) ]
input [31:0] in;    //: /sn:0 {0}(436,347)(478,347){1}
supply0 w0;    //: /sn:0 {0}(551,307)(551,297)(566,297)(566,339){1}
output [31:0] out;    //: /sn:0 /dp:1 {0}(581,363)(639,363){1}
wire [31:0] w4;    //: /sn:0 /dp:1 {0}(494,347)(552,347){1}
wire [31:0] w1;    //: /sn:0 /dp:1 {0}(484,393)(484,379)(552,379){1}
wire w2;    //: /sn:0 /dp:1 {0}(581,419)(581,429)(566,429)(566,387){1}
//: enddecls

  //: supply0 g4 (w0) @(551,313) /sn:0 /w:[ 0 ]
  //: dip g3 (w1) @(484,404) /sn:0 /R:2 /w:[ 0 ] /st:1
  add g2 (.A(w1), .B(w4), .S(out), .CI(w0), .CO(w2));   //: @(568,363) /sn:0 /R:1 /w:[ 1 1 0 1 1 ]
  //: output g1 (out) @(636,363) /sn:0 /w:[ 1 ]
  not g6 (.I(in), .Z(w4));   //: @(484,347) /sn:0 /w:[ 1 0 ]
  led g5 (.I(w2));   //: @(581,412) /sn:0 /w:[ 0 ] /type:0
  //: input g0 (in) @(434,347) /sn:0 /w:[ 0 ]

endmodule

module ALU(Result, Zero, B, A, ALU_OP);
//: interface  /sz:(94, 87) /bd:[ Ti0>ALU_OP[3:0](45/94) Li0>B[31:0](70/87) Li1>A[31:0](30/87) Ro0<Result[31:0](66/87) Ro1<Zero(32/87) ]
input [31:0] B;    //: /sn:0 /dp:1 {0}(571,193)(270,193)(270,280){1}
//: {2}(272,282)(576,282){3}
//: {4}(270,284)(270,358){5}
//: {6}(268,360)(131,360)(131,153){7}
//: {8}(270,362)(270,411){9}
//: {10}(268,413)(222,413){11}
//: {12}(270,415)(270,454){13}
//: {14}(272,456)(569,456){15}
//: {16}(270,458)(270,599)(446,599){17}
output Zero;    //: /sn:0 {0}(1411,566)(1505,566){1}
input [31:0] A;    //: /sn:0 {0}(317,322)(359,322){1}
//: {2}(361,320)(361,279){3}
//: {4}(363,277)(576,277){5}
//: {6}(361,275)(361,188)(571,188){7}
//: {8}(361,324)(361,344){9}
//: {10}(363,346)(513,346)(513,112){11}
//: {12}(361,348)(361,422){13}
//: {14}(363,424)(569,424){15}
//: {16}(361,426)(361,566)(570,566){17}
output [31:0] Result;    //: /sn:0 /dp:1 {0}(1098,341)(1317,341){1}
//: {2}(1321,341)(1415,341){3}
//: {4}(1319,343)(1319,565)(1369,565){5}
supply0 [31:0] w1;    //: /sn:0 /dp:2 {0}(1069,337)(932,337)(932,342){1}
//: {2}(934,344)(1069,344){3}
//: {4}(932,346)(932,348){5}
//: {6}(934,350)(1069,350){7}
//: {8}(932,352)(932,419){9}
input [3:0] ALU_OP;    //: /sn:0 /dp:3 {0}(1025,129)(995,129){1}
//: {2}(994,129)(929,129){3}
wire [31:0] w6;    //: /sn:0 /dp:1 {0}(1021,699)(1021,561){1}
wire [31:0] w13;    //: /sn:0 {0}(1011,532)(1011,503){1}
//: {2}(1013,501)(1162,501)(1162,493){3}
//: {4}(1011,499)(1011,364)(1069,364){5}
wire w16;    //: /sn:0 {0}(584,606)(584,636)(610,636)(610,626){1}
wire [2:0] w7;    //: /sn:0 {0}(995,133)(995,268)(1085,268)(1085,318){1}
wire [31:0] w4;    //: /sn:0 {0}(1069,317)(1043,317)(1043,304)(704,304)(704,191)(592,191){1}
wire [31:0] w3;    //: /sn:0 /dp:1 {0}(685,683)(685,643)(676,643)(676,584){1}
//: {2}(678,582)(693,582)(693,545){3}
//: {4}(693,544)(693,357)(1069,357){5}
//: {6}(674,582)(599,582){7}
wire w22;    //: /sn:0 {0}(545,525)(584,525)(584,558){1}
wire [31:0] w0;    //: /sn:0 {0}(520,598)(570,598){1}
wire [31:0] w20;    //: /sn:0 {0}(953,644)(953,607)(1001,607)(1001,561){1}
wire w23;    //: /sn:0 {0}(537,372)(583,372)(583,416){1}
wire w21;    //: /sn:0 {0}(583,464)(583,498)(600,498)(600,488){1}
wire w11;    //: /sn:0 {0}(697,545)(988,545){1}
wire [31:0] w2;    //: /sn:0 {0}(597,280)(693,280)(693,324)(1069,324){1}
wire [31:0] w5;    //: /sn:0 {0}(598,440)(656,440)(656,330)(1069,330){1}
//: enddecls

  add g8 (.A(w0), .B(A), .S(w3), .CI(w22), .CO(w16));   //: @(586,582) /sn:0 /R:1 /w:[ 1 17 7 1 0 ]
  //: output g4 (Result) @(1412,341) /sn:0 /w:[ 3 ]
  led g44 (.I(A));   //: @(513,105) /sn:0 /w:[ 11 ] /type:3
  //: joint g16 (B) @(270, 282) /w:[ 2 1 -1 4 ]
  //: output g3 (Zero) @(1502,566) /sn:0 /w:[ 1 ]
  led g26 (.I(w13));   //: @(1162,486) /sn:0 /w:[ 3 ] /type:3
  //: joint g17 (B) @(270, 413) /w:[ -1 9 10 12 ]
  //: input g2 (B) @(220,413) /sn:0 /w:[ 11 ]
  //: comment g23 /dolink:0 /link:"" @(1052,527) /sn:0
  //: /line:"if (A < B)   // bit 31 = 1"
  //: /line:"   ALU = 1;"
  //: /line:"else         // bit 31 = 0"
  //: /line:"   ALU = 0;"
  //: /end
  //: joint g30 (w13) @(1011, 501) /w:[ 2 4 -1 1 ]
  //: dip g24 (w6) @(1021,710) /sn:0 /R:2 /w:[ 0 ] /st:1
  //: input g1 (A) @(315,322) /sn:0 /w:[ 0 ]
  Zero g29 (.i(Result), .f(Zero));   //: @(1370, 544) /sz:(40, 40) /sn:0 /p:[ Li0>5 Ro0<0 ]
  //: joint g18 (B) @(270, 456) /w:[ 14 13 -1 16 ]
  //: dip g25 (w20) @(953,655) /sn:0 /R:2 /w:[ 0 ] /st:0
  //: switch g10 (w22) @(528,525) /sn:0 /w:[ 0 ] /st:0
  or g6 (.I0(A), .I1(B), .Z(w2));   //: @(587,280) /sn:0 /w:[ 5 3 0 ]
  add g9 (.A(B), .B(A), .S(w5), .CI(w23), .CO(w21));   //: @(585,440) /sn:0 /R:1 /w:[ 15 15 0 1 0 ]
  mux g7 (.I0(w4), .I1(w2), .I2(w5), .I3(w1), .I4(w1), .I5(w1), .I6(w3), .I7(w13), .S(w7), .Z(Result));   //: @(1085,341) /sn:0 /R:1 /w:[ 0 1 1 0 3 7 5 5 1 0 ] /ss:1 /do:1
  //: joint g35 (Result) @(1319, 341) /w:[ 2 -1 1 4 ]
  tran g22(.Z(w11), .I(w3[31]));   //: @(691,545) /sn:0 /R:2 /w:[ 0 3 4 ] /ss:1
  //: joint g31 (w3) @(676, 582) /w:[ 2 -1 6 1 ]
  //: joint g45 (A) @(361, 346) /w:[ 10 9 -1 12 ]
  //: joint g33 (w1) @(932, 344) /w:[ 2 1 -1 4 ]
  led g42 (.I(B));   //: @(131,146) /sn:0 /w:[ 7 ] /type:3
  //: input g12 (ALU_OP) @(927,129) /sn:0 /w:[ 3 ]
  //: comment g28 /dolink:0 /link:"" @(846,413) /sn:0
  //: /line:"not used pins"
  //: /line:""
  //: /end
  led g46 (.I(w3));   //: @(685,690) /sn:0 /R:2 /w:[ 0 ] /type:3
  //: joint g34 (w1) @(932, 350) /w:[ 6 5 -1 8 ]
  //: joint g14 (A) @(361, 322) /w:[ -1 2 1 8 ]
  //: switch g11 (w23) @(520,372) /sn:0 /w:[ 0 ] /st:0
  and g5 (.I0(A), .I1(B), .Z(w4));   //: @(582,191) /sn:0 /w:[ 7 0 1 ]
  mux g21 (.I0(w20), .I1(w6), .S(w11), .Z(w13));   //: @(1011,545) /sn:0 /R:2 /w:[ 1 1 1 0 ] /ss:1 /do:1
  led g19 (.I(w16));   //: @(610,619) /sn:0 /w:[ 1 ] /type:0
  led g20 (.I(w21));   //: @(600,481) /sn:0 /w:[ 1 ] /type:0
  //: supply0 g32 (w1) @(932,425) /sn:0 /w:[ 9 ]
  //: joint g15 (A) @(361, 424) /w:[ 14 13 -1 16 ]
  Ca2 g0 (.in(B), .out(w0));   //: @(447, 577) /sz:(72, 40) /sn:0 /p:[ Li0>17 Ro0<0 ]
  //: joint g43 (B) @(270, 360) /w:[ -1 5 6 8 ]
  tran g27(.Z(w7), .I(ALU_OP[2:0]));   //: @(995,127) /sn:0 /R:1 /w:[ 0 2 1 ] /ss:1
  //: joint g13 (A) @(361, 277) /w:[ 4 6 -1 3 ]

endmodule

module main;    //: root_module
wire [31:0] w6;    //: /sn:0 {0}(430,382)(527,382){1}
wire w4;    //: /sn:0 {0}(788,317)(673,317){1}
wire [31:0] w3;    //: /sn:0 {0}(673,376)(745,376){1}
wire [31:0] w2;    //: /sn:0 /dp:1 {0}(432,325)(527,325){1}
wire [3:0] w5;    //: /sn:0 /dp:1 {0}(597,226)(597,253)(596,253)(596,281){1}
//: enddecls

  //: dip g4 (w2) @(394,325) /sn:0 /R:1 /w:[ 0 ] /st:5
  led g3 (.I(w3));   //: @(752,376) /sn:0 /R:3 /w:[ 1 ] /type:3
  led g2 (.I(w4));   //: @(795,317) /sn:0 /R:3 /w:[ 0 ] /type:3
  //: dip g1 (w5) @(597,216) /sn:0 /w:[ 0 ] /st:3
  //: dip g5 (w6) @(392,382) /sn:0 /R:1 /w:[ 0 ] /st:5
  ALU g0 (.ALU_OP(w5), .B(w6), .A(w2), .Result(w3), .Zero(w4));   //: @(528, 282) /sz:(144, 125) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Ro0<0 Ro1<1 ]

endmodule
