`include "syncal.v"
module syncal_tb;
reg [5:0]c,h1,h2,h3;
wire o;
syncal uut(h1,h2,h3,c,o);
initial
begin
$dumpfile("syncal.vcd");
$dumpvars(0,syncal_tb);
h1=6'b 000000; h2=6'b 000000; h3=6'b 000000;      #1 c=6'b 000000;
#5 h1=6'b 110100; h2=6'b 011010; h3=6'b 101001; c=6'b 001011;
#5 h1=6'b 110100; h2=6'b 011010; h3=6'b 101001; c=6'b 001010;
#5 h1=6'b 110100; h2=6'b 011010; h3=6'b 101001; c=6'b 001000;
#5 h1=6'b 110100; h2=6'b 011010; h3=6'b 101001; c=6'b011101;
#10 $finish;
end
endmodule