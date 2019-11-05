/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_10 (
    input [5:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] bool
  );
  
  
  
  integer i;
  
  always @* begin
    for (i = 1'h0; i < 5'h10; i = i + 1) begin
      
      case (alufn[0+3-:4])
        4'h8: begin
          bool[(i)*1+0-:1] = a[(i)*1+0-:1] & b[(i)*1+0-:1];
        end
        4'he: begin
          bool[(i)*1+0-:1] = a[(i)*1+0-:1] | b[(i)*1+0-:1];
        end
        4'h6: begin
          bool[(i)*1+0-:1] = a[(i)*1+0-:1] ^ b[(i)*1+0-:1];
        end
        4'ha: begin
          bool[(i)*1+0-:1] = a[(i)*1+0-:1];
        end
        4'hc: begin
          bool[(i)*1+0-:1] = b[(i)*1+0-:1];
        end
        4'h1: begin
          bool[(i)*1+0-:1] = ~(a[(i)*1+0-:1] | b[(i)*1+0-:1]);
        end
        4'h7: begin
          bool[(i)*1+0-:1] = ~(a[(i)*1+0-:1] & b[(i)*1+0-:1]);
        end
        default: begin
          bool[(i)*1+0-:1] = 1'h0;
        end
      endcase
    end
  end
endmodule
