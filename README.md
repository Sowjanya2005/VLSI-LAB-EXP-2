EXP 2                         SIMULATION AND IMPLEMENTATION OF  COMBINATIONAL LOGIC CIRCUITS
DATE: 

AIM: 
 To simulate and synthesis ENCODER, DECODER, MULTIPLEXER, DEMULTIPLEXER, MAGNITUDE COMPARATOR using Xilinx ISE.

APPARATUS REQUIRED:
Xilinx 14.7
Spartan6 FPGA

ENCODER

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-2/assets/6987778/3cd1f95e-7531-4cad-9154-fdd397ac439e)

VERILOG CODE:
```
module encoder8x3(i,o);
input [7:0]i;
output [2:0]o;
or g1(o[0],i[1],i[3],i[5],i[7]);
or g2(o[1],i[2],i[3],i[6],i[7]);
or g3(o[2],i[7],i[6],i[5],i[4]);
endmodule
```
OUTPUT:
![encoder8x3](https://github.com/navaneethans/VLSI-LAB-EXP-2/assets/159280328/2708c82c-4ad7-4721-83cd-cd4573f8f6e8)

DECODER

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-2/assets/6987778/45a5e6cf-bbe0-4fd5-ac84-e5ad4477483b)

VERILOG CODE:
```
module decoder3x8(a,y);
input [2:0]a;
output [7:0]y;
wire w1,w2,w3;
not g1(w1,a[0]);
not g2(w2,a[1]);
not g3(w3,a[2]);
and g4(y[0],w1,w2,w3);
and g5(y[1],a[0],w2,w3);
and g6(y[2],w1,a[1],w3);
and g7(y[3],a[0],a[1],w3);
and g8(y[4],w1,w2,a[2]); 
and g9(y[5],a[0],w2,a[2]);
and g10(y[6],w1,a[1],a[2]);
and g11(y[7],a[0],a[1],a[2]);
endmodule
```
OUTPUT:
![decoder3x8](https://github.com/navaneethans/VLSI-LAB-EXP-2/assets/159280328/2a3523e8-4796-4e56-b553-e8f67d8db552)

MULTIPLEXER

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-2/assets/6987778/427f75b2-8e67-44b9-ac45-a66651787436)

VERILOG CODE:
```
module mux8x1(d,s,Y);
input [7:0]d;
input [2:0]s;
output Y;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
not g1(w1,s[0]);
not g2(w2,s[1]);
not g3(w3,s[2]);
and g4(w4,d[0],w1,w2,w3);
and g5(w5,d[1],w1,s[0],w3);
and g6(w6,d[2],w1,s[1],w3);
and g7(w7,d[3],s[0],s[1],w3);
and g8(w8,d[4],s[2],w1,w2);
and g9(w9,d[5],s[2],s[0],w2);
and g10(w10,d[6],w1,s[1],s[2]);
and g11(w11,d[7],s[2],s[1],s[0]);
or g12(Y,w4,w5,w6,w7,w8,w9,w10,w11);
endmodule
```
OUTPUT:
![mux8x1](https://github.com/navaneethans/VLSI-LAB-EXP-2/assets/159280328/2778c146-0eeb-404d-be18-0102be4261b1)

DEMULTIPLEXER

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-2/assets/6987778/1c45a7fc-08ac-4f76-87f2-c084e7150557)

VERILOG CODE:
```
module demux8x1(d,s,y);
input d;
input [2:0]s;
output [7:0]y;
wire w1,w2,w3;
not g1(w1,s[0]);
not g2(w2,s[1]);
not g3(w3,s[2]);
and g4(y[0],d,w1,w2,w3);
and g5(y[1],d,w1,s[0],w3);
and g6(y[2],d,w3,s[1],w1);
and g7(y[3],d,s[0],s[1],w3);
and g8(y[4],d,s[2],w1,w2);
and g9(y[5],d,s[2],s[0],w2);
and g10(y[6],d,w1,s[1],s[2]);
and g11(y[7],d,s[2],s[1],s[0]);
endmodule
```
OUTPUT:
![demux1x8](https://github.com/navaneethans/VLSI-LAB-EXP-2/assets/159280328/e4103733-bbec-4be7-8b12-ec1e4f77736b)


MAGNITUDE COMPARATOR

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-2/assets/6987778/b2fe7a05-6bf7-4dcb-8f5d-28abbf7ea8c2)

VERILOG CODE:
```
module magnitudecomp(a,b,greater,lesser,equal);
input [1:0]a,b;
output reg greater,lesser,equal;
always @(*)
begin 
 if(a>b)
 begin 
 greater=1'b1;
 lesser=1'b0;
 equal=1'b0;
 end 
 else if(a<b)
 begin 
 greater=1'b0;
 lesser=1'b1;
 equal=1'b0;
 end
 else
 begin
 greater=1'b0;
 lesser=1'b0;
 equal=1'b1; 
 end
 end 
endmodule
```
OUTPUT:
![magnitude comparator](https://github.com/navaneethans/VLSI-LAB-EXP-2/assets/159280328/792071df-952f-47e9-9394-676fd68bafaa)

RESULT:
 Hence, the simulation and synthesis of ENCODER, DECODER, MULTIPLEXER, 
DEMULTIPLEXER, MAGNITUDE COMPARATOR is verified using Xilinx ISE.


