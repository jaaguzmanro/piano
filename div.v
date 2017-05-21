module div(scaler,clk_out,clk_in)
    input reg [2:0]scaler
input clk_in;
output clk_out;
wire clk1;
    wire [17:0] Do4 = 191113;
    wire [17:0] Re4	= 170263;
    wire [17:0] Mi4	= 151687;
    wire [17:0] Fa4	= 143173;
    wire [17:0] Sol4 = 127553;
    wire [17:0] La4	= 113637;
    wire [17:0] Si4	= 101239;
    wire [17:0] Do5	= 95557;
    wire [17:0] N	= 0;
    
always @(posedge clk_in)
    
    case (scaler)
        000:N=Do4;
        001:N=Re4;
        010:N=Mi4;
        011:N=Fa4;
        100:N=Sol4;
        101:N=La4;
        110:N=Si4;
        111:N=Do5;
        endcase        
     if (divcounter == N - 1) 
        begin 
           clk1=clk1;
          divcounter <= 0;
        end
  else 
      begin
          divcounter <= divcounter + 1;
          clk1=~clk1;
      end 
assign clk_out= clk1;

endmodule
