module divfreq(freq,chord,clk)

output reg[7:0] freq;
input reg [7:0] chord;
input clk:

    wire [17:0] Do4 = 191113;
    wire [17:0] Re4	= 170263;
    wire [17:0] Mi4	= 151687;
    wire [17:0] Fa4	= 143173;
    wire [17:0] Sol4 = 127553;
    wire [17:0] La4	= 113637;
    wire [17:0] Si4	= 101239;
    wire [17:0] Do5	= 95557
    reg [7:0] divcounter0 = 0;
    
always @(posedge clk_in)
    

 if (divcounter == M - 1) 
    divcounter <= 0;
  else 
    divcounter <= divcounter + 1;
    
//-- Sacar el bit mas significativo por clk_out
assign clk_out = divcounter[N-1];









endmodule
