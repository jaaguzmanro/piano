module sumres(res,a,b,ci
    );
output wire [7:0] res;
output ci;
input wire [7:0] a;
input wire [7:0] b;
wire co= 0;
wire co1,co2,co3,co4,co5,co6,co7,co8;
wire s1,s2,s3,s4,s5,s6,s7,s8;
sum sum1(.s(s1),.co(co1),.a(a[0]),.b(b[0]),.ci(co));
sum sum2(.s(s2),.co(co2),.a(a[1]),.b(b[1]),.ci(co1));
sum sum3(.s(s3),.co(co3),.a(a[2]),.b(b[2]),.ci(co2));
sum sum4(.s(s4),.co(co4),.a(a[3]),.b(b[3]),.ci(co3));
sum sum5(.s(s5),.co(co5),.a(a[4]),.b(b[4]),.ci(co4));
sum sum6(.s(s6),.co(co6),.a(a[5]),.b(b[5]),.ci(co5));
sum sum7(.s(s7),.co(co7),.a(a[6]),.b(b[6]),.ci(co6));
sum sum8(.s(s8),.co(co8),.a(a[7]),.b(b[7]),.ci(co7));

assign res[0]=s1;
assign res[1]=s2;
assign res[2]=s3;
assign res[3]=s4;
assign res[4]=s5;
assign res[5]=s6;
assign res[6]=s7;
assign res[7]=s8;

endmodule
