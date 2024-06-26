//: version "1.8.7"

module FETCH(clk, PCNew, Reset, Inst, PCNext);
//: interface  /sz:(113, 114) /bd:[ Li0>clk(96/114) Li1>PCNew[31:0](66/114) Li2>Reset(33/114) Ro0<Inst[31:0](88/114) Ro1<PCNext[31:0](36/114) ]
supply0 w6;    //: /sn:0 {0}(571,436)(571,414){1}
supply0 w4;    //: /sn:0 {0}(472,348)(472,329)(454,329)(454,351){1}
input [31:0] PCNew;    //: /sn:0 {0}(383,389)(438,389){1}
output [31:0] Inst;    //: /sn:0 /dp:1 {0}(686,387)(588,387){1}
output [31:0] PCNext;    //: /sn:0 /dp:1 {0}(689,299)(623,299){1}
input Reset;    //: /sn:0 {0}(381,328)(444,328)(444,351){1}
input clk;    //: /sn:0 {0}(404,455)(449,455)(449,427){1}
supply0 w5;    //: /sn:0 {0}(574,254)(574,244)(608,244)(608,275){1}
wire w13;    //: /sn:0 {0}(608,323)(608,338)(625,338){1}
wire [31:0] w0;    //: /sn:0 {0}(475,256)(475,315)(594,315){1}
wire [31:0] w1;    //: /sn:0 /dp:1 {0}(553,389)(516,389){1}
//: {2}(514,387)(514,283)(594,283){3}
//: {4}(512,389)(459,389){5}
//: enddecls

  rom g4 (.A(w1), .D(Inst), .OE(w6));   //: @(571,388) /sn:0 /w:[ 0 1 1 ] /mem:"/home/omiralles03/Documents/Estructura de Computadors/Practica2_EstructuraComputadors/TAREAS/mult.mem"
  //: supply0 g8 (w4) @(472,354) /sn:0 /w:[ 0 ]
  //: input g3 (clk) @(402,455) /sn:0 /w:[ 0 ]
  //: input g2 (PCNew) @(381,389) /sn:0 /w:[ 0 ]
  //: input g1 (Reset) @(379,328) /sn:0 /w:[ 0 ]
  led g10 (.I(w13));   //: @(632,338) /sn:0 /R:3 /w:[ 1 ] /type:0
  add g6 (.A(w0), .B(w1), .S(PCNext), .CI(w5), .CO(w13));   //: @(610,299) /sn:0 /R:1 /w:[ 1 3 1 1 0 ]
  //: joint g7 (w1) @(514, 389) /w:[ 1 2 4 -1 ]
  //: supply0 g9 (w5) @(574,260) /sn:0 /w:[ 0 ]
  //: output g12 (Inst) @(683,387) /sn:0 /w:[ 0 ]
  register g5 (.Q(w1), .D(PCNew), .EN(w4), .CLR(!Reset), .CK(clk));   //: @(449,389) /sn:0 /R:1 /w:[ 5 1 1 1 1 ]
  //: supply0 g11 (w6) @(571,442) /sn:0 /w:[ 0 ]
  //: dip g0 (w0) @(475,246) /sn:0 /w:[ 0 ] /st:1
  //: output g13 (PCNext) @(686,299) /sn:0 /w:[ 0 ]

endmodule

module main;    //: root_module
wire w13;    //: /sn:0 {0}(266,185)(360,185){1}
wire [31:0] w4;    //: /sn:0 {0}(542,240)(475,240){1}
wire w1;    //: /sn:0 {0}(272,296)(308,296)(308,248)(360,248){1}
wire [31:0] w11;    //: /sn:0 {0}(475,188)(500,188)(500,119)(315,119)(315,218)(360,218){1}
//: enddecls

  clock g8 (.Z(w1));   //: @(259,296) /sn:0 /w:[ 0 ] /omega:2000 /phi:0 /duty:50
  //: switch g4 (w13) @(249,185) /sn:0 /w:[ 0 ] /st:0
  FETCH g17 (.clk(w1), .PCNew(w11), .Reset(w13), .Inst(w4), .PCNext(w11));   //: @(361, 152) /sz:(113, 114) /sn:0 /p:[ Li0>1 Li1>1 Li2>1 Ro0<1 Ro1<0 ]
  led g1 (.I(w4));   //: @(549,240) /sn:0 /R:3 /w:[ 0 ] /type:2

endmodule
