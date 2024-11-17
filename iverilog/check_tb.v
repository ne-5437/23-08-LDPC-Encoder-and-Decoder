`include "check.v"
module check_tb;
reg [3:0]a,b;
wire c,d,x,y,p,q;
check uut(a,b,c,d,x,y,p,q);
initial
begin 
$dumpfile("check.vcd");
$dumpvars(0,check_tb);
    a=3;b=4;
#10 a[3]=1;b[3]=0;
#10 $finish;
end
endmodule