`include "syn.v"
module syn_tb;
reg [5:0]h1,h2,h3,c;
wire [2:0]o;
syn uut(h1,h2,h3,c,o);
initial
begin
$dumpfile("syn.vcd");
$dumpvars(0,syn_tb);
h1=6'b110100; h2=6'b011010; h3=6'b101001; c=6'b000000;
#10 c=6'b001011;
#10 c=6'b101110;
#10 c=6'b110001;
#10 $finish;
end
endmodule