// Code your design here
module left_shift_register (
							input wire clk, rst,
  							input wire load,
  							input wire [3:0] d,
  							input wire shift_en,  // Shift enable
    						output reg [3:0] q    // Output register
							);
  always @ (posedge clk)
    begin
      if(rst)
        begin
          q <= 4'b0000;
        end
      else if (load)
        begin
          q <= d;
        end
      else if(shift_en)
        begin
          q <= {q[2:0],1'b0};
        end
    end
endmodule
