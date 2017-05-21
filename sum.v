
module sum(s,co,a,b,ci
    );

	output s,co;
	input a,b,ci;
	wire r,su,t;

	xor xor1(r,a,b);///a(+)b
	and and1(su,a,b);///ab
	xor xor2(s,r,ci);///a(+)b(+)ci
	and and2(t,r,ci);///(a(+)b)ci
	or or1(co,su,t);

endmodule
