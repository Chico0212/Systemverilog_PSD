module tb();
  bit ud, rst;
  bit clk;
  bit[7:0] count;
  
  counter cont(.clk(clk), .rst(rst), .ud(ud), .count(count));
  
  initial begin
    ud = 1;
    rst = 0;
    
    for(byte i=0; i < 25;i++) begin
      #1
      clk = 1;
      #1
      $display("subindo %d", count);
      clk = 0;
    end
    ud = 0;
    #1
    for(byte i=2; i < 23;i++) begin
      #1
      clk = 1;
      #1
      $display("descendo %d", count);
      clk = 0;
    end
    rst = 1;
    #1
    $display("reset %d", count);
  end
endmodule