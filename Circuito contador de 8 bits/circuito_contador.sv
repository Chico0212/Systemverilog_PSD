// Code your design here
module counter(clk, rst, ud, count);
  input bit ud, rst;
  input bit clk;
  output bit[7:0] count;
  
  always_ff @(posedge clk, ud, rst) begin
    if(rst) begin
      count = 0;
    end else begin
      if(!ud) begin
        count = count - 1;
      end else begin
        count = count + 1;
      end
    end
  end
endmodule: counter