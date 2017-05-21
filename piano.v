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
            divfreq note0(freq,chord);
          end 
          
        READ:
        SUM:
        PLAY:
        endcase    
    end
 




end module
