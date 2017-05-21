module piano( wave, t0,t1,t2,t3,t4,t5,t6,t7,clk);
  
  output reg [7:0] wave;
  input t0,t1,t2,t3,t4,t5,t6,t7,clk;
  
  wire [2:0] STATE=3'b000;
  wire [3:0] LISTEN= 3'b000;
  wire [3:0] GET_FREQ= 3'b001;
  wire [3:0] READ= 3'b010;
  wire [3:0] SUM= 3'b011;
  wire [3:0] PLAY= 3'b100;
  wire [7:0] Chord= 8'b00000000;
  wire [7:0] freq= 8'b00000000;
  wire [7:0] wave1,wave2,wave3,wave4,wave5,wave6,wave7,wave0;
 
  
  always @(posedge clk)
    begin
        case (STATE)
        LISTEN:
          begin
          Chord = {t0,t1,t2,t3,t4,t5,t6,t7};
          STATE=GET_FREQ;
          end  
        GET_FREQ:         
          begin
            divfreq note0(freq,chord,clk);
            STATE=READ;
          end 
        READ:
          begin
            rom n0(freq[0],wave0);
            rom n1(freq[1],wave1);
            rom n2(freq[2],wave2);
            rom n3(freq[3],wave3);
            rom n4(freq[4],wave4);
            rom n5(freq[5],wave5);
            rom n6(freq[6],wave6);
            rom n7(freq[7],wave7);
          end
        SUM:
        PLAY:
        endcase    
    end
 




end module
