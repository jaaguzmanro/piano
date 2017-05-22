module piano( wave, t0,t1,t2,t3,t4,t5,t6,t7,clk);
  
  output reg [7:0] wave;
  input t0,t1,t2,t3,t4,t5,t6,t7,clk;
  
  reg [2:0] STATE=3'b000;
  reg [3:0] LISTEN= 3'b000;
  reg [3:0] GET_FREQ= 3'b001;
  reg [3:0] READ= 3'b010;
  reg [3:0] SUM= 3'b011;
  reg [3:0] PLAY= 3'b100;
  reg [7:0] Chord= 8'b00000000;
  wire [7:0] freq= 8'b00000000;
	reg[3:0] sim;
	wire [7:0] wave1,wave2,wave3,wave4,wave5,wave6,wave0,wave7,sound;
  wire ci0,ci1,ci2,ci3,ci4,ci5;
  wire [7:0]clks;
	reg [15:0]wavef;
  
  
	divfreq note0(freq,Chord,clk);
	assign clks = freq;
            rom n0(clks[0],wave0);
            rom n1(clks[1],wave1);
            rom n2(clks[2],wave2);
            rom n3(clks[3],wave3);
            rom n4(clks[4],wave4);
            rom n5(clks[5],wave5);
            rom n6(clks[6],wave6);
            rom n7(clks[7],wave7);
 	assign wavef= wave0+wave1+wave2+wave3+wave4+wave5+wave6+wave7; 
  	assign sim = t0 + t1 + t2 + t3 + t4 + t5 + t6 + t7;
	assign sound = wavef[sim+7:sim];
	
endmodule
