 
module U2_denorm(U2, v_out, delta);
//---------------INPUTS & OUTPUTS---------------//
//input         pushin;
input  [63:0] U2;
output [9:0]  v_out;
output [94:0] delta;
//output        pushout;
//------------------PARAMETERS-----------------//
parameter bias = 1023;
//-------------------VARIABLES-----------------//
reg [104:0] fract, fractS;
reg [10:0] exp;
reg [9:0]  resout;
reg [94:0] d_out;
//-----------------ASSIGNMENTS-----------------//
assign v_out = resout;
assign delta = d_out;
//assign pushout = pushin;
//////////////////////////////
always @ (*) begin
  //$display ("INSIDE U2_denorm\n");
  exp        = U2[62:52];
  fract      = { U2[51:0],53'b0 };
  //$display ("Values assigned");
  //$display ("exp: %b\n", exp);
  //$display ("fract: %b\n", fract);
  /*
  if ((bias-exp) >52) begin
    fractS = 105'b0;
  end else begin
    fractS = fract >> (bias-exp);//shift by exponent 
    fractS[104-bias+exp+1] = 1;//put a 1 in lsb of the shift
  end 
    resout = fractS[104:95];//10 bits
    d_out = fractS[94:0];//95 bits
  //$display ("OUT OF U2_denorm\n\n");
  */
  fractS = fract >> (bias-exp);//shift by exponent 
  fractS[104-bias+exp+1] = 1;//put a 1 in lsb of the shift

  resout = fractS[104:95];//10 bits
  d_out = fractS[94:0];//95 bits*/
end

endmodule

  




  
