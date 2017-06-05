module rom(input clk,
           output reg [7:0] addr);
  
  always @(negedge clk) 
  begin
    addr <= addr + 1;   
  end
endmodule
