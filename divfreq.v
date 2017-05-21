module divfreq(freq,chord,clk)

output reg[7:0] freq;
input reg [7:0] chord;
input clk;

    wire [2:0] n0=3'b000;    
    wire [2:0] n1=3'b001;    
    wire [2:0] n2=3'b010;    
    wire [2:0] n3=3'b011;    
    wire [2:0] n4=3'b100;    
    wire [2:0] n5=3'b101;    
    wire [2:0] n6=3'b110;    
    wire [2:0] n8=3'b111;    
    
    assign n0=n0*chord[0];
    assign n1=n1*chord[1];
    assign n2=n2*chord[2];
    assign n3=n3*chord[3];
    assign n4=n4*chord[4];
    assign n5=n5*chord[5];
    assign n6=n6*chord[6];
    assign n7=n7*chord[7];
    
    
    div div0(freq[0],n0,clk);
    div div1(freq[1],n1,clk);
    div div2(freq[2],n2,clk);
    div div3(freq[3],n3,clk);
    div div4(freq[4],n4,clk);
    div div5(freq[5],n5,clk);
    div div6(freq[6],n6,clk);
    div div7(freq[7],n7,clk);
    
    

    
    
    
    
    
    










endmodule
