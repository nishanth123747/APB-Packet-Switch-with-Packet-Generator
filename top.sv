`timescale 1ns/1ps

`include "uvm_macros.svh"

`include "apb_if.sv"

`include "apb_pkt_pkg.sv"
`include "pkt_generator.sv"
`include "pkt_switch.sv"
`include "apb_pkt_switch.sv"

`include "tb_pkg.sv"

import uvm_pkg::*;
import tb_pkg::*;

module tb_top;
  logic pclk;
  logic presetn;

  initial begin
    pclk = 0;
    forever #5 pclk = ~pclk;
  end

  initial begin
    presetn = 0;
    repeat(5) @(posedge pclk);
    presetn = 1;
  end

  apb_if apb_vif(
    .pclk    (pclk),
    .presetn (presetn)
  );

  logic irq;

  apb_pkt_switch dut (
    .pclk    (pclk),
    .presetn (presetn),

    .psel    (apb_vif.psel),
    .penable (apb_vif.penable),
    .pwrite  (apb_vif.pwrite),
    .paddr   (apb_vif.paddr),
    .pwdata  (apb_vif.pwdata),

    .prdata  (apb_vif.prdata),
    .pready  (apb_vif.pready),
    .pslverr (apb_vif.pslverr),

    .irq     (irq)
  );

  initial begin

    uvm_config_db #(virtual apb_if)::set(
      null,
      "uvm_test_top.env.apb_agt.*",
      "vif",
      apb_vif
    );

    run_test("pkt_regression_test");
  end

endmodule
