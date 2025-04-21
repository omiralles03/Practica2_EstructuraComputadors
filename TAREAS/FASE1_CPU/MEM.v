//: version "1.8.7"

module MEM(WriteData, ReadData, Adress, MemRead, clk, MemWrite);
//: interface  /sz:(100, 101) /bd:[ Ti0>MemWrite(51/100) Li0>WriteData[31:0](74/101) Li1>Adress[31:0](31/101) Bi0>MemRead(51/100) Ri0>clk(73/101) Ro0<ReadData[31:0](29/101) ]
output [31:0] ReadData;    //: /sn:0 {0}(619,312)(619,331){1}
//: {2}(621,333)(652,333){3}
//: {4}(617,333)(604,333){5}
supply0 w0;    //: /sn:0 {0}(580,373)(580,360){1}
input [31:0] WriteData;    //: /sn:0 {0}(619,254)(619,296){1}
input [31:0] Adress;    //: /sn:0 {0}(529,335)(569,335){1}
input MemWrite;    //: /sn:0 /dp:1 {0}(546,285)(516,285)(516,245){1}
input clk;    //: /sn:0 {0}(503,290)(546,290){1}
input MemRead;    //: /sn:0 {0}(594,387)(594,360){1}
wire w3;    //: /sn:0 {0}(567,288)(585,288){1}
//: {2}(589,288)(638,288)(638,304)(624,304){3}
//: {4}(587,290)(587,310){5}
//: enddecls

  //: supply0 g8 (w0) @(580,379) /sn:0 /w:[ 0 ]
  bufif1 g4 (.Z(ReadData), .I(WriteData), .E(w3));   //: @(619,302) /sn:0 /R:3 /w:[ 0 1 3 ]
  //: input g3 (WriteData) @(619,252) /sn:0 /R:3 /w:[ 0 ]
  //: output g2 (ReadData) @(649,333) /sn:0 /w:[ 3 ]
  //: input g1 (Adress) @(527,335) /sn:0 /w:[ 0 ]
  //: joint g6 (ReadData) @(619, 333) /w:[ 2 1 4 -1 ]
  //: input g9 (MemRead) @(594,389) /sn:0 /R:1 /w:[ 0 ]
  //: input g7 (clk) @(501,290) /sn:0 /w:[ 0 ]
  //: joint g12 (w3) @(587, 288) /w:[ 2 -1 1 4 ]
  //: input g5 (MemWrite) @(516,243) /sn:0 /R:3 /w:[ 1 ]
  and g11 (.I0(MemWrite), .I1(clk), .Z(w3));   //: @(557,288) /sn:0 /w:[ 0 1 0 ]
  ram g0 (.A(Adress), .D(ReadData), .WE(!w3), .OE(!MemRead), .CS(w0));   //: @(587,334) /sn:0 /w:[ 1 5 5 1 1 ]

endmodule

module main;    //: root_module
wire [31:0] w4;    //: /sn:0 /dp:1 {0}(660,235)(725,235){1}
wire [31:0] readData;    //: /sn:0 {0}(827,233)(880,233){1}
wire [31:0] w3;    //: /sn:0 /dp:1 {0}(659,278)(725,278){1}
wire w0;    //: /sn:0 {0}(964,325)(868,325)(868,277)(827,277){1}
wire w23;    //: /sn:0 {0}(777,326)(777,306){1}
wire w21;    //: /sn:0 {0}(777,186)(777,203){1}
//: enddecls

  //: dip g3 (w4) @(622,235) /sn:0 /R:1 /w:[ 0 ] /st:101
  //: dip g2 (w3) @(621,278) /sn:0 /R:1 /w:[ 0 ] /st:5
  led g1 (.I(readData));   //: @(887,233) /sn:0 /R:3 /w:[ 1 ] /type:2
  //: switch g29 (w21) @(777,173) /sn:0 /R:3 /w:[ 0 ] /st:0
  MEM g9 (.MemWrite(w21), .WriteData(w3), .Adress(w4), .MemRead(w23), .clk(w0), .ReadData(readData));   //: @(726, 204) /sz:(100, 101) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Bi0>1 Ri0>1 Ro0<0 ]
  //: switch g31 (w23) @(777,340) /sn:0 /R:1 /w:[ 0 ] /st:1
  clock g0 (.Z(w0));   //: @(977,326) /sn:0 /R:2 /w:[ 0 ] /omega:2000 /phi:0 /duty:50

endmodule
