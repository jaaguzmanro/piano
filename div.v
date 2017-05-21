module div(scaler,clk_out,clk_in)
input reg [17:0]scaler
input clk_in;
output clk_in;
wire clk1;

always @(posedge clk_in)
    if (divcounter == Do4 - 1) 
        begin 
           clk1=clk1
          divcounter <= 0;
        end
  else 
      begin
          divcounter <= divcounter + 1;
          clk1=~clk1;
      end 
assign clk_out= clk1;

nd module
