
module piano(sound, t0,t1,t2,t3,t4,t5,t6,t7,clk);
  
  output wire[7:0] sound;
  input t0,t1,t2,t3,t4,t5,t6,t7,clk;
  
   reg [7:0] Chord= 8'b00000000;
  wire [7:0] freq= 8'b00000000;
	wire[3:0] sim,n;
	wire [7:0] wave1,wave2,wave3,wave4,wave5,wave6,wave0,wave7;
  wire ci0,ci1,ci2,ci3,ci4,ci5;
  wire [7:0]clks;
	wire [15:0]wavef;
  
  
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

	assign sound = (sim==0) ? 0:
	(sim==1) ?  wavef[7:0]:
	(sim==2) ?  wavef[8:1]:
	(sim==3) ?  wavef[9:2]:
	(sim==4) ?  wavef[10:3]:	
	(sim==5) ?  wavef[11:4]:
	(sim==6) ?  wavef[12:5]:	
	(sim==7) ?  wavef[13:6]:	
	(sim==8) ?  wavef[14:7]:
	wavef[15];
	
	
endmodule
