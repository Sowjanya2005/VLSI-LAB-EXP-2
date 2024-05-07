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
