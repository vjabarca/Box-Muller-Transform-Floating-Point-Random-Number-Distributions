
module U1_denorm(U1, v_out, delta);
//---------------INPUTS & OUTPUTS---------------//
//input         pushin;
input  [63:0] U1;
output [8:0]  v_out;
output [95:0] delta;
//output        pushout;
//------------------PARAMETERS-----------------//
parameter bias = 1023;
//-------------------VARIABLES-----------------//
reg [104:0] fract, fractS;
reg [10:0] exp;
reg [8:0]  resout;
reg [95:0] d_out;
reg        shift;
//-----------------ASSIGNMENTS-----------------//
assign v_out = resout;
assign delta = d_out;
//assign pushout = pushin;
/////////////////////////////////////////////////
always @ (*) begin
  //$display ("INSIDE U1_DENORM\n");
  exp        = U1[62:52];
  fract      = { U1[51:0],53'b0 };
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
    resout = fractS[104:96];//9 bits
    d_out = fractS[95:0];//96 bits 
    */
  
  fractS = fract >> (bias-exp);//shift by exponent 
  fractS[104-bias+exp+1] = 1;//put a 1 in lsb of the shift

  resout = fractS[104:96];//9 bits
  d_out = fractS[95:0];//96 bits */
  //$display ("OUT OF U1_denorm\n\n");
end

endmodule
  
  
  
