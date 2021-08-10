

module randist(clk, rst, pushin, U1, U2, pushout, Z);
//----------------INPUTS & OUTPUTS-----------------//
input         clk, rst, pushin;
input  [63:0] U1;
input  [63:0] U2;
output        pushout;
output [63:0] Z;
//-------------------VARIABLES---------------------//
reg        pushin_l;
reg [63:0] U1_l, U2_l, res;
reg        pushoutl;
//reg [63:0] one = 64'h3ff0000000000000;
//reg [63:0] zero = 64'h0000000000000000;
//---------------------WIRES-----------------------//
wire [8:0]  vin9;
wire [9:0]  vin10;
wire [95:0] delta1;
wire [94:0] delta2;
wire [63:0] U1d, U2d;
wire [63:0] sqrtA, sqrtB, sqrtC, sqrtD, sinA, sinB, sinC;
wire        pushout1_h0, pushout1_h1, pushout1_h2, pushout1_h3, pushout1_h4, pushout1_h5, pushout1_h6, pushout1_h7, pushout1_h8; 
wire [63:0] U1d_h, A1xdd, B1xdd, C1xd, D1, U2d_h, A2xdd, B2xd, C2;

wire        pushout2_h0, pushout2_h1, pushout2_h2, pushout2_h3, pushout2_h4, pushout2_h5, pushout2_h6;
wire [63:0] A1xddd, B1xdd_h, C1xd_h, D1_h, A2xdd_h, B2xd_h, C2_h;

wire        pushout3_h0, pushout3_h1, pushout3_h2, pushout3_h3;
wire [63:0] sum1_1, sum1_2, sum2_1, sum2_2; 

wire        pushout4_h0, pushout4_h1;
wire [63:0] sum1_last, sum2_last; 

wire        last_push;
wire [63:0] last_mult;
//------------------ASSIGNMENTS--------------------//
assign Z       = res;
assign pushout = pushoutl;
////////////////////////////////////////////////////
always @(posedge clk or posedge rst) begin
  if(rst) begin
    pushin_l <= 0;
    U1_l     <= 0;
    U2_l     <= 0; 
    pushoutl <= 0;
    res      <= 0;   
  end else begin
    pushin_l <= #1 pushin;
    U1_l     <= #1 U1;
    U2_l     <= #1 U2;
    pushoutl <= #1 last_push;
    res      <= #1 last_mult;
  end
end
//--------------------STAGE #1----------------------//
U1_denorm  U_1(U1_l, vin9, delta1);
renorm96   U96(delta1, U1d);
sqrtln     sqrtln_s1(vin9, sqrtA, sqrtB, sqrtC, sqrtD);

U2_denorm  U_2(U2_l, vin10, delta2);
renorm95   U95(delta2, U2d); 
sin_lookup sin(vin10, sinA, sinB, sinC);

fpmul m1_0(clk, rst, pushin_l, U1d, 64'h3ff0000000000000, 64'h3ff0000000000000, pushout1_h0, U1d_h);//pipelining for for U1d

fpmul m1_1(clk, rst, pushin_l, sqrtA, U1d, U1d, pushout1_h1, A1xdd);//A1xdd
fpmul m1_2(clk, rst, pushin_l, sqrtB, U1d, U1d, pushout1_h2, B1xdd);//B1xdd
fpmul m1_3(clk, rst, pushin_l, sqrtC, U1d, 64'h3ff0000000000000, pushout1_h3, C1xd); //C1xd
fpmul m1_4(clk, rst, pushin_l, sqrtD, 64'h3ff0000000000000, 64'h3ff0000000000000, pushout1_h4, D1);   //D1-pipeline

//fpmul m1_5(clk, rst, pushin_l, U2d, 64'h3ff0000000000000, 64'h3ff0000000000000, pushout1_h5, U2d_h);//pipelining for for U2d

fpmul m1_6(clk, rst, pushin_l, sinA, U2d, U2d, pushout1_h6, A2xdd);//A2xdd
fpmul m1_7(clk, rst, pushin_l, sinB, U2d, 64'h3ff0000000000000, pushout1_h7, B2xd); //B2xd
fpmul m1_8(clk, rst, pushin_l, sinC, 64'h3ff0000000000000, 64'h3ff0000000000000, pushout1_h8, C2);   //C2-pipeline
//--------------------STAGE #2----------------------//
fpmul m2_0(clk, rst, pushout1_h1, A1xdd, U1d_h, 64'h3ff0000000000000, pushout2_h0, A1xddd);//A1xddd
fpmul m2_1(clk, rst, pushout1_h2, B1xdd, 64'h3ff0000000000000, 64'h3ff0000000000000, pushout2_h1, B1xdd_h); //B1xdd-pipeline
fpmul m2_2(clk, rst, pushout1_h3, C1xd, 64'h3ff0000000000000, 64'h3ff0000000000000, pushout2_h2, C1xd_h);   //C1xd-pipeline
fpmul m2_3(clk, rst, pushout1_h4, D1, 64'h3ff0000000000000, 64'h3ff0000000000000, pushout2_h3, D1_h);       //D1-pipeline2

fpmul m2_5(clk, rst, pushout1_h6, A2xdd, 64'h3ff0000000000000, 64'h3ff0000000000000, pushout2_h4, A2xdd_h);//A2xdd-pipeline
fpmul m2_6(clk, rst, pushout1_h7, B2xd, 64'h3ff0000000000000, 64'h3ff0000000000000, pushout2_h5, B2xd_h);  //B2xd-pipeline
fpmul m2_7(clk, rst, pushout1_h8, C2, 64'h3ff0000000000000, 64'h3ff0000000000000, pushout2_h6, C2_h);      //C2-pipeline2
//--------------------STAGE #3----------------------//
fpadd a3_0(clk, rst, pushout2_h0&pushout2_h1, A1xddd, B1xdd_h, pushout3_h0, sum1_1);//A1xddd+B1xdd
fpadd a3_1(clk, rst, pushout2_h2&pushout2_h3, C1xd_h, D1_h, pushout3_h1, sum1_2);//C1xd+D1

fpadd a3_2(clk, rst, pushout2_h4&pushout2_h5, A2xdd_h, B2xd_h, pushout3_h2, sum2_1);//A2xdd+B2xd
fpadd a3_3(clk, rst, pushout2_h6, C2_h, 64'h0000000000000000, pushout3_h3, sum2_2);                 //C2-pipeline3
//--------------------STAGE #4----------------------//
fpadd a4_0(clk, rst, pushout3_h0&pushout3_h1, sum1_1, sum1_2, pushout4_h0, sum1_last);//final a

fpadd a4_1(clk, rst, pushout3_h2&pushout3_h3, sum2_1, sum2_2, pushout4_h1, sum2_last);//final sin(b)
//--------------------STAGE #5----------------------//
fpmul m5_0(clk, rst, pushout4_h0&pushout4_h1, sum1_last, sum2_last, 64'h3ff0000000000000, last_push, last_mult);//final answer
/*
 always @(posedge(clk)) begin
    $display("U1 = %h",U1);
    $display("U2 = %h",U2);
    $display("sqrtA = (%h)", sqrtA);
    $display("sqrtB = (%h)", sqrtB);
    $display("sqrtC = (%h)", sqrtC);
    $display("sqrtD = (%h)", sqrtD);

    $display("sinA = (%h)", sinA);
    $display("sinB = (%h)", sinB);
    $display("sinC = (%h)", sinC);

    $display("A1xddd = (%h)", A1xddd);
    $display("B1xdd_h = (%h)", B1xdd_h);
    $display("C1xd_h = (%h)", C1xd_h);
    $display("D1_h = (%h)", D1_h);
    $display("A2xdd_h = (%h)", A2xdd_h);	
    $display("B2xd_h = (%h)", B2xd_h);
    $display("C2_h = (%h)", C2_h);

    $display("sum1_1 = (%h)", sum1_1);
    $display("sum1_2 = (%h)", sum1_2);
    $display("sum2_1 = (%h)", sum2_1);
    $display("a = (%h)", sum1_last);
    $display("sinb = (%h)", sum2_last);

    $display("last_mult = (%h)",last_mult);
    $display("pushout = (%b)",last_push);
    $display("\n\n\n");
  end
  */
endmodule

