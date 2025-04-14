//: version "1.8.7"

module FETCH(clk, PCNew, Reset, Inst, PCNext);
//: interface  /sz:(113, 114) /bd:[ Li0>Reset(33/114) Li1>PCNew[31:0](66/114) Li2>clk(96/114) Ro0<PCNext[31:0](36/114) Ro1<Inst[31:0](88/114) ]
supply0 w6;    //: /sn:0 {0}(521,437)(521,414){1}
supply0 w4;    //: /sn:0 {0}(470,346)(470,327)(454,327)(454,351){1}
input [31:0] PCNew;    //: /sn:0 {0}(383,389)(438,389){1}
output [31:0] Inst;    //: /sn:0 /dp:1 {0}(594,387)(538,387){1}
output [31:0] PCNext;    //: /sn:0 /dp:1 {0}(594,300)(573,300){1}
input Reset;    //: /sn:0 {0}(381,328)(444,328)(444,351){1}
input clk;    //: /sn:0 {0}(381,447)(449,447)(449,427){1}
supply0 w5;    //: /sn:0 {0}(571,267)(571,257)(558,257)(558,276){1}
wire w13;    //: /sn:0 {0}(558,324)(558,338){1}
wire [31:0] w0;    //: /sn:0 {0}(526,284)(544,284){1}
wire [31:0] w1;    //: /sn:0 /dp:1 {0}(459,389)(487,389){1}
//: {2}(491,389)(503,389){3}
//: {4}(489,387)(489,316)(544,316){5}
//: enddecls

  //: supply0 g8 (w4) @(470,352) /sn:0 /w:[ 0 ]
  //: input g3 (clk) @(379,447) /sn:0 /w:[ 0 ]
  //: input g2 (PCNew) @(381,389) /sn:0 /w:[ 0 ]
  //: input g1 (Reset) @(379,328) /sn:0 /w:[ 0 ]
  led g10 (.I(w13));   //: @(558,345) /sn:0 /R:2 /w:[ 1 ] /type:0
  add g6 (.A(w1), .B(w0), .S(PCNext), .CI(w5), .CO(w13));   //: @(560,300) /sn:0 /R:1 /w:[ 5 1 1 1 0 ]
  //: joint g7 (w1) @(489, 389) /w:[ 2 4 1 -1 ]
  //: supply0 g9 (w5) @(571,273) /sn:0 /w:[ 0 ]
  rom fetch_ROM (.A(w1), .D(Inst), .OE(w6));   //: @(521,388) /sn:0 /w:[ 3 1 1 ] /mem:"/home/omiralles03/Documents/Estructura de Computadors/Practica2_EstructuraComputadors/TAREAS/mult.mem"
  //: output g12 (Inst) @(591,387) /sn:0 /w:[ 0 ]
  //: supply0 g11 (w6) @(521,443) /sn:0 /w:[ 0 ]
  register g5 (.Q(w1), .D(PCNew), .EN(w4), .CLR(!Reset), .CK(clk));   //: @(449,389) /sn:0 /R:1 /w:[ 0 1 1 1 1 ]
  //: dip g0 (w0) @(488,284) /sn:0 /R:1 /w:[ 0 ] /st:1
  //: output g13 (PCNext) @(591,300) /sn:0 /w:[ 0 ]

endmodule

module main;    //: root_module
wire w13;    //: /sn:0 {0}(616,288)(695,288){1}
wire [31:0] w4;    //: /sn:0 {0}(877,343)(810,343){1}
wire w1;    //: /sn:0 {0}(608,351)(695,351){1}
wire [31:0] w11;    //: /sn:0 {0}(810,291)(847,291)(847,221)(662,221)(662,321)(695,321){1}
//: enddecls

  //: switch g4 (w13) @(599,288) /sn:0 /w:[ 0 ] /st:0
  clock g8 (.Z(w1));   //: @(595,351) /sn:0 /w:[ 0 ] /omega:2000 /phi:0 /duty:50
  FETCH g17 (.clk(w1), .PCNew(w11), .Reset(w13), .Inst(w4), .PCNext(w11));   //: @(696, 255) /sz:(113, 114) /sn:0 /p:[ Li0>1 Li1>1 Li2>1 Ro0<1 Ro1<0 ]
  led g1 (.I(w4));   //: @(884,343) /sn:0 /R:3 /w:[ 0 ] /type:2

endmodule
