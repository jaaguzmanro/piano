module divfreq(freq,chord,clk);

output wire[7:0] freq;
input wire [7:0] chord;
input clk;

    reg [2:0] n0=3'b000;    
    wire [2:0] n1=3'b001;    
    wire [2:0] n2=3'b010;    
    wire [2:0] n3=3'b011;    
    wire [2:0] n4=3'b100;    
    wire [2:0] n5=3'b101;    
    wire [2:0] n6=3'b110;    
    wire [2:0] n7=3'b111; 
    wire [7:0] notes;
    wire[2:0] m0,m1,m2,m3,m4,m5,m6,m7;
    assign m0=n0*chord[0];
    assign m1=n1*chord[1];
    assign m2=n2*chord[2];
    assign m3=n3*chord[3];
    assign m4=n4*chord[4];
    assign m5=n5*chord[5];
    assign m6=n6*chord[6];
    assign m7=n7*chord[7];
    
    assign notes= freq;
    div div0(notes[0],m0,clk);
    div div1(notes[1],m1,clk);
    div div2(notes[2],m2,clk);
    div div3(notes[3],m3,clk);
    div div4(notes[4],m4,clk);
    div div5(notes[5],m5,clk);
    div div6(notes[6],m6,clk);
    div div7(notes[7],m7,clk);
      
endmodule
