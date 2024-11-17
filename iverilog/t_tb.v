`include "t.v"
module t_tb;
reg [2:0]u;
reg [3:0]y;
wire [3:0]c;
t uut(u,y,c);
initial
 begin
$dumpfile("t.vcd");
$dumpvars(0,t_tb);
y=4'b0011;
u=3'b011;
#10 u=3'b100;
#10 $finish;
end
endmodule