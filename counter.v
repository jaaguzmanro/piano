module counter(input clk, output [25:0] data);
wire clk;
 

reg [127:0] data = 0;
    

always @(posedge clk) begin
  //-- Incrementar el registro
  data <= data + 1;
end
endmodule
