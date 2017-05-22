module div(clk_out,scaler,clk_in);
input wire [2:0]scaler;
input clk_in;
output clk_out;
reg clk1=0;
    reg [17:0] Do4 = 191113;
    reg [17:0] Re4	= 170263;
    reg [17:0] Mi4	= 151687;
    reg [17:0] Fa4	= 143173;
    reg [17:0] Sol4 = 127553;
    reg [17:0] La4	= 113637;
    reg [17:0] Si4	= 101239;
    reg[17:0] Do5	= 95557;
    reg [17:0] N	;
	 reg [17:0] divcounter;
    
always @(posedge clk_in)
 begin   
    case (scaler)
        000:N<=Do4;
        001:N<=Re4;
        010:N<=Mi4;
        011:N<=Fa4;
        100:N<=Sol4;
        101:N<=La4;
        110:N<=Si4;
        111:N<=Do5;
        endcase   

     if (divcounter == N - 1) 
        begin 
          clk1  <= ~clk1;
          divcounter <= 0;
        end
  else 
             divcounter <= divcounter + 1;
          
end

assign clk_out = clk1;

endmodule
