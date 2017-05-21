module divfreq(freq,chord)

output reg[7:0] freq;
input reg [7:0] chord;

wire [16:0] Do4 =	191113
wire [16:0] Re4	= 170263
wire [16:0] Mi4	= 151687
wire [16:0] Fa4	= 143173
wire [16:0] Sol4 = 127553
wire [16:0] La4	= 113637
wire [16:0] Si4	= 101239
wire [16:0] Do5	= 95557





reg [1:0] divcounter = 0;
    
//-- Contador módulo 3
always @(posedge clk_in)
  if (divcounter == 2) 
    divcounter <= 0;
  else 
    divcounter <= divcounter + 1;
    
//-- Sacar el bit mas significativo por clk_out
assign clk_out = divcounter[1];
    









endmodule
