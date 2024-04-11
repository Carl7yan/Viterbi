// ===================================================================
// Copyright (c) 2023 Carl Yan
// Owner      : carl.shengjie.yan@gmail.com
// Date       :
// Filename   :
// Abstract   :
//
// ===================================================================

// ===================================================================
// initial
initial begin
  for(int i=0; i<1000; i++) begin
    @(posedge clk)
    en <= $random;
  end

  #10000
  $finish;
end

// ===================================================================
// assertion
`ifdef SOC_ASSERT_ON

`endif
