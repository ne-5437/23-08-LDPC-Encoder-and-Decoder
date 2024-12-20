`include "code.v"
module code_tb;
reg [2:0]u;
reg [5:0]p1,p2,p3;
wire [5:0]c;
code uut(u,p1,p2,p3,c);
initial
begin 
$dumpfile("code_tb.vcd");
$dumpvars(0,code_tb);
p1=6'b 110100;p2=6'b 011010;p3=6'b 101001;
 u=3'b000;
#10 u=3'b110;
#10 u=3'b100;
#10 u=3'b001;
#10 u=3'b101;
#10 u=3'b001;
#10 $finish;
end
endmodule