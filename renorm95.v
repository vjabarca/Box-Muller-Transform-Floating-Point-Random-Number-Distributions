
`timescale 1ns/10ps
module renorm95(deltain,deltaout);
//-------------INPUTS & OUTPUTS--------------//
input  [94:0] deltain;
output [63:0] deltaout;
//----------------VARIABLES-----------------//
reg [63:0] d_out;
reg [94:0] d_in;
//----------------ASSIGNMENTS---------------//
assign deltaout = d_out;
//////////////////////////////////////////////
always @ (*) begin
//$display ("IN RENORM95\n");
d_in = deltain;
//$display ("d_in 95: %b\n", d_in);
    casex (d_in)
        95'b1xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-1;
            d_out[51:0]  = d_in[93:42];
			//$display("                1               ");
        end
        95'b01xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-2;
            d_out[51:0]  = d_in[92:41];
        end
        95'b001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-3;
            d_out[51:0]  = d_in[91:40];
        end
        95'b0001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-4;
            d_out[51:0]  = d_in[90:39];
        end
        95'b00001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-5;
            d_out[51:0]  = d_in[89:38];
        end 
        95'b000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-6;
            d_out[51:0]  = d_in[88:37];
        end 
        95'b0000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-7;
            d_out[51:0]  = d_in[87:36];
        end 
        95'b00000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-8;
            d_out[51:0]  = d_in[86:35];
        end 
        95'b000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-9;
            d_out[51:0]  = d_in[85:34];
        end 
        95'b0000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-10;
            d_out[51:0]  = d_in[84:33];
        end 
        95'b00000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-11;
            d_out[51:0]  = d_in[83:32];
        end 
        95'b000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-12;
            d_out[51:0]  = d_in[82:31];
        end 
        95'b0000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-13;
            d_out[51:0]  = d_in[81:30];
        end 
        95'b00000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-14;
            d_out[51:0]  = d_in[80:29];
        end 
        95'b000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-15;
            d_out[51:0]  = d_in[79:28];
        end 
        95'b0000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-16;
            d_out[51:0]  = d_in[78:27];
        end
        95'b00000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-17;
            d_out[51:0]  = d_in[77:26];
        end 
        95'b000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-18;
            d_out[51:0]  = d_in[76:25];
        end 
        95'b0000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-19;
            d_out[51:0]  = d_in[75:24];
        end 
        95'b00000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-20;
            d_out[51:0]  = d_in[74:23];
        end 
        95'b000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-21;
            d_out[51:0]  = d_in[73:22];
        end 
        95'b0000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-22;
            d_out[51:0]  = d_in[72:21];
        end 
        95'b00000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-23;
            d_out[51:0]  = d_in[71:20];
        end 
        95'b000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-24;
            d_out[51:0]  = d_in[70:19];
        end 
        95'b0000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-25;
            d_out[51:0]  = d_in[69:18];
        end 
        95'b00000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-26;
            d_out[51:0]  = d_in[68:17];
        end 
        95'b000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-27;
            d_out[51:0]  = d_in[67:16];
        end 
        95'b0000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-28;
            d_out[51:0]  = d_in[66:15];
        end 
        95'b00000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-29;
            d_out[51:0]  = d_in[65:14];
        end 
        95'b000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-30;
            d_out[51:0]  = d_in[64:13];
        end 
        95'b0000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-31;
            d_out[51:0]  = d_in[63:12];
        end 
        95'b00000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-32;
            d_out[51:0]  = d_in[62:11];
        end 
        95'b000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-33;
            d_out[51:0]  = d_in[61:10];
        end 
        95'b0000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-34;
            d_out[51:0]  = d_in[60:9];
        end 
        95'b00000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-35;
            d_out[51:0]  = d_in[59:8];
        end 
        95'b000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-36;
            d_out[51:0]  = d_in[58:7];
        end 
        95'b0000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-37;
            d_out[51:0]  = d_in[57:6];
        end 
        95'b00000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-38;
            d_out[51:0]  = d_in[56:5];
        end 
        96'b000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-39;
            d_out[51:0]  = d_in[55:4];
        end 
        95'b0000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-40;
            d_out[51:0]  = d_in[54:3];
        end 
        95'b00000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-41;
            d_out[51:0]  = d_in[53:2];
        end
        95'b000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-42;
            d_out[51:0]  = d_in[52:1];
        end
        95'b0000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-43;
            d_out[51:0]  = d_in[51:0];
        end
        95'b00000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-44;
            d_out[51:0]  = { d_in[50:0], 1'b0 } ;
        end
        95'b000000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-45;
            d_out[51:0]  = { d_in[49:0], 2'b0 };
        end
        95'b0000000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-46;
            d_out[51:0]  = { d_in[48:0], 3'b0 };
        end 
        95'b00000000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-47;
            d_out[51:0]  = { d_in[47:0], 4'b0 };
        end 
        95'b000000000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-48;
            d_out[51:0]  = { d_in[46:0], 5'b0 };
        end 
        95'b0000000000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-49;
            d_out[51:0]  = { d_in[45:0], 6'b0 };
        end 
        95'b00000000000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-50;
            d_out[51:0]  = { d_in[44:0], 7'b0 };
        end 
        95'b000000000000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-51;
            d_out[51:0]  = { d_in[43:0], 8'b0 };
        end 
        95'b0000000000000000000000000000000000000000000000000001xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : begin
		    d_out[63]    = 0;
            d_out[62:52] = 1013-52;
            d_out[51:0]  = { d_in[42:0], 9'b0 };
        end 

        default : begin 
		    d_out = 64'b0;
		    //$display("            NOTHING           ");
        end
    endcase
    //$display ("DONE WITH RENORM95\n\n");
end
endmodule
