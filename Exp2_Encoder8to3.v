module encoder8x3(i,o);
input [7:0]i;
output [2:0]o;
or g1(o[0],i[1],i[3],i[5],i[7]);
or g2(o[1],i[2],i[3],i[6],i[7]);
or g3(o[2],i[7],i[6],i[5],i[4]);
endmodule
