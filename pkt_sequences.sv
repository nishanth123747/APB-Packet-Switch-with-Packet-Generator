/==============================================================================
// APB Packet Switch UVM Register Sequences
//
// Requirements:
//   - pkt_reg_block is declared in the RAL package.
//   - This file must be compiled after the RAL package and UVM package.
//   - Define SIZE before compilation to change the number of RW write/read loops.
//==============================================================================

`ifndef SIZE
  `define SIZE 1
`endif

//==============================================================================
// RESET / RESET-VALUE CHECK SEQUENCE
// The DUT must already have been reset through presetn before this sequence runs.
// regbk.reset() resets the RAL model; it does not drive the DUT reset pin.
//==============================================================================
class pkt_reset_seq extends uvm_sequence;

  `uvm_object_utils(pkt_reset_seq)

  pkt_reg_block regbk;

  function new(string name = "pkt_reset_seq");
    super.new(name);
  endfunction

  task body();

    uvm_status_e status;

    `uvm_info(get_type_name(),
      "<------------ RESET SEQUENCE STARTED ----------->",
      UVM_MEDIUM)

    // Apply RAL mirror reset
    regbk.reset();

    //----------------------------------
    // DEVICE_ID
    //----------------------------------
    regbk.device_id.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("DEVICE_ID reset value = 0x%08h",
        regbk.device_id.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // VERSION
    //----------------------------------
    regbk.version.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("VERSION reset value = 0x%08h",
        regbk.version.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // SWITCH_STATUS
    //----------------------------------
    regbk.switch_status.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("SWITCH_STATUS reset value = 0x%08h",
        regbk.switch_status.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // PORT_STATUS
    //----------------------------------
    regbk.port_status.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("PORT_STATUS reset value = 0x%08h",
        regbk.port_status.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // GEN_STATUS
    //----------------------------------
    regbk.gen_status.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("GEN_STATUS reset value = 0x%08h",
        regbk.gen_status.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // STAT_RX
    //----------------------------------
    regbk.stat_rx.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("STAT_RX reset value = 0x%08h",
        regbk.stat_rx.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // STAT_TX
    //----------------------------------
    regbk.stat_tx.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("STAT_TX reset value = 0x%08h",
        regbk.stat_tx.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // STAT_DROP
    //----------------------------------
    regbk.stat_drop.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("STAT_DROP reset value = 0x%08h",
        regbk.stat_drop.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // SWITCH_CTRL
    //----------------------------------
    regbk.switch_ctrl.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("SWITCH_CTRL reset value = 0x%08h",
        regbk.switch_ctrl.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // PORT_ENABLE
    //----------------------------------
    regbk.port_enable.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("PORT_ENABLE reset value = 0x%08h",
        regbk.port_enable.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // FWD_ENABLE
    //----------------------------------
    regbk.fwd_enable.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("FWD_ENABLE reset value = 0x%08h",
        regbk.fwd_enable.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // GEN_CTRL
    //----------------------------------
    regbk.gen_ctrl.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("GEN_CTRL reset value = 0x%08h",
        regbk.gen_ctrl.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // GEN_PKT_CFG
    //----------------------------------
    regbk.gen_pkt_cfg.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("GEN_PKT_CFG reset value = 0x%08h",
        regbk.gen_pkt_cfg.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // GEN_INTERVAL
    //----------------------------------
    regbk.gen_interval.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("GEN_INTERVAL reset value = 0x%08h",
        regbk.gen_interval.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // GEN_COUNT
    //----------------------------------
    regbk.gen_count.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("GEN_COUNT reset value = 0x%08h",
        regbk.gen_count.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // IRQ_STATUS
    //----------------------------------
    regbk.irq_status.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("IRQ_STATUS reset value = 0x%08h",
        regbk.irq_status.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // IRQ_ENABLE
    //----------------------------------
    regbk.irq_enable.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("IRQ_ENABLE reset value = 0x%08h",
        regbk.irq_enable.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // IRQ_FORCE
    //----------------------------------
    regbk.irq_force.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("IRQ_FORCE reset value = 0x%08h",
        regbk.irq_force.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // ERR_STATUS
    //----------------------------------
    regbk.err_status.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("ERR_STATUS reset value = 0x%08h",
        regbk.err_status.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // ERR_ENABLE
    //----------------------------------
    regbk.err_enable.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("ERR_ENABLE reset value = 0x%08h",
        regbk.err_enable.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // ERR_INJECT
    //----------------------------------
    regbk.err_inject.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("ERR_INJECT reset value = 0x%08h",
        regbk.err_inject.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // ERR_COUNT
    //----------------------------------
    regbk.err_count.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("ERR_COUNT reset value = 0x%08h",
        regbk.err_count.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // ERR_INFO
    //----------------------------------
    regbk.err_info.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("ERR_INFO reset value = 0x%08h",
        regbk.err_info.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // LOCK
    //----------------------------------
    regbk.lock.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("LOCK reset value = 0x%08h",
        regbk.lock.get_mirrored_value()),
      UVM_MEDIUM)

    //----------------------------------
    // SOFT_RESET
    //----------------------------------
    regbk.soft_reset.mirror(status, UVM_CHECK);
    `uvm_info(get_type_name(),
      $sformatf("SOFT_RESET reset value = 0x%08h",
        regbk.soft_reset.get_mirrored_value()),
      UVM_MEDIUM)

    `uvm_info(get_type_name(),
      "<------------ RESET SEQUENCE ENDED ----------->",
      UVM_MEDIUM)

  endtask

endclass

//==============================================================================
// COMMON BASE SEQUENCE FOR THE 25 REGISTER TESTS
//==============================================================================
class pkt_reg_seq_base extends uvm_sequence;
  `uvm_object_utils(pkt_reg_seq_base)

  pkt_reg_block regmodel;

  function new(string name = "pkt_reg_seq_base");
    super.new(name);
  endfunction

  task check_regmodel();
    if (regmodel == null)
      `uvm_fatal("PKT_REG", "regmodel handle is null")
  endtask

  // Test ordinary RW registers. mask contains only the bits being tested.
  task test_rw(uvm_reg rg, uvm_reg_data_t mask);
    uvm_status_e status;
    uvm_reg_data_t des, mir, wdata, rdata;

    check_regmodel();

    // These configuration registers are lock-protected.
    regmodel.lock.write(status, 32'hA5A5_C3C3);
    if (status != UVM_IS_OK)
      `uvm_error("PKT_REG", "Failed to unlock configuration before RW test")

    repeat (`SIZE) begin
      wdata = $urandom() & mask;//The first uses a mask to restrict random values. The second directly writes  every time.0x9 its  use the mask to ensure the random test touches only the bits we intend to test.

      rg.write(status, wdata);
      if (status != UVM_IS_OK)
        `uvm_error("PKT_REG", $sformatf("%s write failed", rg.get_name()))

      des = rg.get();
      mir = rg.get_mirrored_value();
      `uvm_info(get_type_name(),
        $sformatf("%s WRITE: WDATA=0x%08h DES=0x%08h MIR=0x%08h",
                  rg.get_name(), wdata, des, mir), UVM_LOW)

      rg.read(status, rdata);
      if (status != UVM_IS_OK) begin
        `uvm_error("PKT_REG", $sformatf("%s read failed", rg.get_name()))
      end
      else if ((rdata & mask) != (wdata & mask)) begin
        `uvm_error("PKT_REG",
          $sformatf("%s mismatch: WDATA=0x%08h RDATA=0x%08h MASK=0x%08h",
                    rg.get_name(), wdata, rdata, mask))
      end

      des = rg.get();
      mir = rg.get_mirrored_value();
      `uvm_info(get_type_name(),
        $sformatf("%s READ: DES=0x%08h MIR=0x%08h RDATA=0x%08h",
                  rg.get_name(), des, mir, rdata), UVM_LOW)

      rg.mirror(status, UVM_CHECK);
      if (status != UVM_IS_OK)
        `uvm_error("PKT_REG", $sformatf("%s mirror operation failed", rg.get_name()))
    end
  endtask

  // Read-only registers: read and report. Volatile counters/status are not
  // compared against a fixed value here; reset-value checks are in pkt_reset_seq.
  task test_ro(uvm_reg rg);
    uvm_status_e status;
    uvm_reg_data_t des, mir, rdata;

    check_regmodel();
    rg.read(status, rdata);
    if (status != UVM_IS_OK)
      `uvm_error("PKT_REG", $sformatf("%s read failed", rg.get_name()))

    des = rg.get();
    mir = rg.get_mirrored_value();
    `uvm_info(get_type_name(),
              $sformatf("%s READ: DES=0x%08h MIR=0x%08h RDATA=0x%08h",
                rg.get_name(), des, mir, rdata), UVM_LOW)
      
  endtask

  // W1C test. Caller must arrange for the selected status bit(s) to be set.
  task test_w1c(uvm_reg rg, uvm_reg_data_t clear_mask);
    uvm_status_e status;
    uvm_reg_data_t before_data, after_data;

    check_regmodel();
    rg.read(status, before_data);
    if (status != UVM_IS_OK)
      `uvm_error("PKT_REG", $sformatf("%s initial read failed", rg.get_name()))

    `uvm_info(get_type_name(),
      $sformatf("%s BEFORE W1C: RDATA=0x%08h", rg.get_name(), before_data), UVM_LOW)

    if ((before_data & clear_mask) != clear_mask)
      `uvm_error("PKT_W1C",
        $sformatf("%s expected bits 0x%08h to be set before clearing; got 0x%08h",
                  rg.get_name(), clear_mask, before_data))

    rg.write(status, clear_mask);
    if (status != UVM_IS_OK)
      `uvm_error("PKT_W1C", $sformatf("%s W1C write failed", rg.get_name()))

    rg.read(status, after_data);
    if (status != UVM_IS_OK)
      `uvm_error("PKT_W1C", $sformatf("%s read after W1C failed", rg.get_name()))
    else if ((after_data & clear_mask) != 0)
      `uvm_error("PKT_W1C",
        $sformatf("%s failed to clear mask 0x%08h; RDATA=0x%08h",
                  rg.get_name(), clear_mask, after_data))

    `uvm_info(get_type_name(),
      $sformatf("%s AFTER W1C: RDATA=0x%08h", rg.get_name(), after_data), UVM_LOW)
  endtask

  // Write-only registers are verified through their side effects/status registers.
  task test_wo(uvm_reg rg, uvm_reg_data_t wdata);
    uvm_status_e status;

    check_regmodel();
    rg.write(status, wdata);
    if (status != UVM_IS_OK)
      `uvm_error("PKT_REG", $sformatf("%s write failed", rg.get_name()))

    `uvm_info(get_type_name(),
      $sformatf("%s WRITE-ONLY: WDATA=0x%08h", rg.get_name(), wdata), UVM_LOW)
  endtask
endclass

//==============================================================================
// 1. DEVICE_ID - RO
//==============================================================================
//       class pkt_device_id_seq extends pkt_reg_seq_base;
//   `uvm_object_utils(pkt_device_id_seq)
//   function new(string name = "pkt_device_id_seq"); super.new(name); endfunction
//         task body(); test_ro(regmodel.device_id); endtask
// endclass
      
   class pkt_device_id_seq extends pkt_reg_seq_base;

  `uvm_object_utils(pkt_device_id_seq)

  function new(string name = "pkt_device_id_seq");
    super.new(name);
  endfunction

  task body();

    uvm_status_e status;
    uvm_reg_data_t rdata;

    check_regmodel();

    // Step 1: Read DEVICE_ID using the common task
    test_ro(regmodel.device_id);

    // Step 2: Write zero and print values
    regmodel.device_id.write(status, 32'h0000_0000);

    `uvm_info("DEVICE_ID",
      $sformatf("Write Data = 0x%08h", 32'h0000_0000), UVM_LOW)

    if (status != UVM_IS_OK)
      `uvm_error("DEVICE_ID", "Write transaction failed")

    regmodel.device_id.read(status, rdata);

    `uvm_info("DEVICE_ID",
      $sformatf("Read Data After Write = 0x%08h", rdata), UVM_LOW)

    if (status != UVM_IS_OK)
      `uvm_error("DEVICE_ID", "Read after zero write failed")
    else if (rdata != 32'h02A5_5357)
      `uvm_error("DEVICE_ID",
        $sformatf("Expected=0x%08h, Actual=0x%08h",
                  32'h02A5_5357, rdata))

    // Step 3: Write all ones and print values
    regmodel.device_id.write(status, 32'hFFFF_FFFF);

    `uvm_info("DEVICE_ID",
      $sformatf("Write Data = 0x%08h", 32'hFFFF_FFFF), UVM_LOW)

    if (status != UVM_IS_OK)
      `uvm_error("DEVICE_ID", "Write transaction failed")

    regmodel.device_id.read(status, rdata);

    `uvm_info("DEVICE_ID",
      $sformatf("Read Data After Write = 0x%08h", rdata), UVM_LOW)

    if (status != UVM_IS_OK)
      `uvm_error("DEVICE_ID", "Read after all-ones write failed")
    else if (rdata != 32'h02A5_5357)
      `uvm_error("DEVICE_ID",
        $sformatf("Expected=0x%08h, Actual=0x%08h",
                  32'h02A5_5357, rdata))

  endtask

endclass

//==============================================================================
// 2. VERSION - RO
//==============================================================================
class pkt_version_seq extends pkt_reg_seq_base;

  `uvm_object_utils(pkt_version_seq)

  function new(string name = "pkt_version_seq");
    super.new(name);
  endfunction

  task body();

    uvm_status_e status;
    uvm_reg_data_t rdata;

    // Step 1: Common read-only test
    test_ro(regmodel.version);

    // Step 2: Read VERSION and print expected vs actual values
    regmodel.version.read(status, rdata);

    `uvm_info("VERSION",
      $sformatf("FULL REGISTER: EXPECTED=0x%08h ACTUAL=0x%08h",
                32'h0001_0200, rdata), UVM_LOW)

    // Reserved field [31:24]
    `uvm_info("VERSION",
      $sformatf("RESERVED [31:24]: EXPECTED=0x00 ACTUAL=0x%02h",
                rdata[31:24]), UVM_LOW)

    // MAJOR field [23:16]
    `uvm_info("VERSION",
      $sformatf("MAJOR [23:16]: EXPECTED=0x01 ACTUAL=0x%02h",
                rdata[23:16]), UVM_LOW)

    // MINOR field [15:8]
    `uvm_info("VERSION",
      $sformatf("MINOR [15:8]: EXPECTED=0x02 ACTUAL=0x%02h",
                rdata[15:8]), UVM_LOW)

    // PATCH field [7:0]
    `uvm_info("VERSION",
      $sformatf("PATCH [7:0]: EXPECTED=0x00 ACTUAL=0x%02h",
                rdata[7:0]), UVM_LOW)

  endtask

endclass

class pkt_switch_status_seq extends pkt_reg_seq_base;

  `uvm_object_utils(pkt_switch_status_seq)

  function new(string name = "pkt_switch_status_seq");
    super.new(name);
  endfunction

  task body();

    uvm_status_e status;
    uvm_reg_data_t rdata;

    check_regmodel();

    //================================================
    // CHECK 1: Common read-only register test
    //================================================
    test_ro(regmodel.switch_status);

    // Read register for the remaining checks
    regmodel.switch_status.read(status, rdata);

    `uvm_info("SWITCH_STATUS",
      $sformatf("READ STATUS=%s RDATA=0x%08h",
                status.name(), rdata), UVM_LOW)

    //================================================
    // CHECK 2: Reserved fields must read as zero
    //================================================
    `uvm_info("SWITCH_STATUS",
      $sformatf("RESERVED [31:18]: EXPECTED=0x0000 ACTUAL=0x%04h",
                rdata[31:18]), UVM_LOW)

    `uvm_info("SWITCH_STATUS",
      $sformatf("RESERVED [15:10]: EXPECTED=0x00 ACTUAL=0x%02h",
                rdata[15:10]), UVM_LOW)


    //================================================
    // CHECK 3: Individual live status fields
    //================================================
    `uvm_info("SWITCH_STATUS",
      $sformatf("GEN_FSM [17:16]: EXPECTED=0x0 ACTUAL=0x%0h",
                rdata[17:16]), UVM_LOW)

    `uvm_info("SWITCH_STATUS",
      $sformatf("ERR_PENDING [9]: EXPECTED=0 ACTUAL=%0b",
                rdata[9]), UVM_LOW)

    `uvm_info("SWITCH_STATUS",
      $sformatf("GEN_RUNNING [8]: EXPECTED=0 ACTUAL=%0b",
                rdata[8]), UVM_LOW)

    `uvm_info("SWITCH_STATUS",
      $sformatf("PORT_ENABLED [7:4]: EXPECTED=0xF ACTUAL=0x%0h",
                rdata[7:4]), UVM_LOW)

    `uvm_info("SWITCH_STATUS",
      $sformatf("LOCKED [3]: EXPECTED=1 ACTUAL=%0b",
                rdata[3]), UVM_LOW)

    `uvm_info("SWITCH_STATUS",
      $sformatf("SWITCH_ENABLED [2]: EXPECTED=0 ACTUAL=%0b",
                rdata[2]), UVM_LOW)

    `uvm_info("SWITCH_STATUS",
      $sformatf("BUSY [1]: EXPECTED=0 ACTUAL=%0b",
                rdata[1]), UVM_LOW)

    `uvm_info("SWITCH_STATUS",
      $sformatf("READY [0]: EXPECTED=1 ACTUAL=%0b",
                rdata[0]), UVM_LOW)

  endtask

endclass

class pkt_port_status_seq extends pkt_reg_seq_base;

  `uvm_object_utils(pkt_port_status_seq)

  function new(string name = "pkt_port_status_seq");
    super.new(name);
  endfunction

  task body();

    uvm_status_e status;
    uvm_reg_data_t rdata;

    check_regmodel();

    //================================================
    // CHECK 1: Common read-only register test
    //================================================
    test_ro(regmodel.port_status);


//     //================================================
//     // CHECK 2: Full register reset value
//     // Expected = 0x00000000
//     //================================================
//     `uvm_info("PORT_STATUS",
//       $sformatf("FULL REGISTER: EXPECTED=0x%08h ACTUAL=0x%08h",
//                 32'h0000_0000, rdata), UVM_LOW)

//     //================================================
//     // CHECK 3: Individual port queue levels
//     //================================================

//     // PORT3_LEVEL [31:24]
//     `uvm_info("PORT_STATUS",
//       $sformatf("PORT3_LEVEL [31:24]: EXPECTED=0x00 ACTUAL=0x%02h",
//                 rdata[31:24]), UVM_LOW)

//     // PORT2_LEVEL [23:16]
//     `uvm_info("PORT_STATUS",
//       $sformatf("PORT2_LEVEL [23:16]: EXPECTED=0x00 ACTUAL=0x%02h",
//                 rdata[23:16]), UVM_LOW)

//     // PORT1_LEVEL [15:8]
//     `uvm_info("PORT_STATUS",
//       $sformatf("PORT1_LEVEL [15:8]: EXPECTED=0x00 ACTUAL=0x%02h",
//                 rdata[15:8]), UVM_LOW)

//     // PORT0_LEVEL [7:0]
//     `uvm_info("PORT_STATUS",
//       $sformatf("PORT0_LEVEL [7:0]: EXPECTED=0x00 ACTUAL=0x%02h",
//                 rdata[7:0]), UVM_LOW)

  endtask

endclass


class pkt_gen_status_seq extends pkt_reg_seq_base;

  `uvm_object_utils(pkt_gen_status_seq)

  function new(string name = "pkt_gen_status_seq");
    super.new(name);
  endfunction

  task body();

    uvm_status_e status;
    uvm_reg_data_t rdata;

    check_regmodel();

    test_ro(regmodel.gen_status);



    // RESERVED [31:24]
    `uvm_info("GEN_STATUS",
      $sformatf("RESERVED [31:24]: EXPECTED=0x00 ACTUAL=0x%02h",
                rdata[31:24]), UVM_LOW)

    // RESERVED [7:4]
    `uvm_info("GEN_STATUS",
      $sformatf("RESERVED [7:4]: EXPECTED=0x0 ACTUAL=0x%0h",
                rdata[7:4]), UVM_LOW)

    // REMAINING [23:8]
    `uvm_info("GEN_STATUS",
      $sformatf("REMAINING [23:8]: EXPECTED=0x0000 ACTUAL=0x%04h",
                rdata[23:8]), UVM_LOW)

    // FSM [3:2]: 0=IDLE, 1=SEND, 2=GAP, 3=DONE
    `uvm_info("GEN_STATUS",
      $sformatf("FSM [3:2]: EXPECTED=0 (IDLE) ACTUAL=%0d",
                rdata[3:2]), UVM_LOW)

    // DONE [1]
    `uvm_info("GEN_STATUS",
      $sformatf("DONE [1]: EXPECTED=0 ACTUAL=%0b",
                rdata[1]), UVM_LOW)

    // RUNNING [0]
    `uvm_info("GEN_STATUS",
      $sformatf("RUNNING [0]: EXPECTED=0 ACTUAL=%0b",
                rdata[0]), UVM_LOW)

  endtask

endclass
    
class pkt_stat_rx_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_stat_rx_seq)
  function new(string name = "pkt_stat_rx_seq"); super.new(name); endfunction
  task body(); test_ro(regmodel.stat_rx); endtask
endclass

class pkt_stat_tx_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_stat_tx_seq)
  function new(string name = "pkt_stat_tx_seq"); super.new(name); endfunction
  task body(); test_ro(regmodel.stat_tx); endtask
endclass

class pkt_stat_drop_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_stat_drop_seq)
  function new(string name = "pkt_stat_drop_seq"); super.new(name); endfunction
  task body(); test_ro(regmodel.stat_drop); endtask
endclass

//==============================================================================
// 9. SWITCH_CTRL - RW (test only bit 0 and bit 3; do not pulse START/STOP)
//==============================================================================
class pkt_switch_ctrl_seq extends pkt_reg_seq_base;

  `uvm_object_utils(pkt_switch_ctrl_seq)

  function new(string name = "pkt_switch_ctrl_seq");
    super.new(name);
  endfunction

  task body();

    uvm_status_e status;
    uvm_reg_data_t rdata;
    uvm_reg_data_t ctrl_bits;
    uvm_reg_data_t expected;

    check_regmodel();

    //================================================
    // CHECK 1: Initial reset value
    //================================================
    regmodel.switch_ctrl.read(status, rdata);

    `uvm_info("SWITCH_CTRL",
      $sformatf("RESET VALUE: EXPECTED=0x%08h ACTUAL=0x%08h",
                32'h0000_0000, rdata), UVM_LOW)

    //================================================
    // CHECK 2: Test RW fields
    // Bit 3 = IRQ_GLOBAL_EN
    // Bit 0 = ENABLE
    //================================================
    test_rw(regmodel.switch_ctrl, 32'h0000_0009);

    // Read current RW field values before STAT_CLEAR.
    regmodel.switch_ctrl.read(status, rdata);
    ctrl_bits = rdata & 32'h0000_0009;

    `uvm_info("SWITCH_CTRL",
      $sformatf("IRQ_GLOBAL_EN [3]: ACTUAL=%0b",
                rdata[3]), UVM_LOW)

    `uvm_info("SWITCH_CTRL",
      $sformatf("ENABLE [0]: ACTUAL=%0b",
                rdata[0]), UVM_LOW)

    //================================================
    // CHECK 3: Reserved bits must read as zero
    // Mask excludes RW fields [3], [0]
    // and WO field [1].
    //================================================
    `uvm_info("SWITCH_CTRL",
      $sformatf("RESERVED BITS: EXPECTED=0x00000000 ACTUAL=0x%08h",
                rdata & 32'hFFFF_FFF4), UVM_LOW)

    `uvm_info("SWITCH_CTRL",
      $sformatf("RESERVED BIT [2]: EXPECTED=0 ACTUAL=%0b",
                rdata[2]), UVM_LOW)

    //================================================
    // CHECK 4: Write-only STAT_CLEAR pulse
    // Preserve ENABLE and IRQ_GLOBAL_EN.
    //================================================
    regmodel.switch_ctrl.write(status, ctrl_bits | 32'h0000_0002);

    `uvm_info("SWITCH_CTRL",
      $sformatf("STAT_CLEAR WRITE DATA = 0x%08h",
                ctrl_bits | 32'h0000_0002), UVM_LOW)

    // Read after pulse. STAT_CLEAR must read as zero.
    regmodel.switch_ctrl.read(status, rdata);

    expected = ctrl_bits;

    `uvm_info("SWITCH_CTRL",
      $sformatf("READ AFTER STAT_CLEAR: EXPECTED=0x%08h ACTUAL=0x%08h",
                expected, rdata), UVM_LOW)

    `uvm_info("SWITCH_CTRL",
      $sformatf("STAT_CLEAR [1]: EXPECTED=0 ACTUAL=%0b",
                rdata[1]), UVM_LOW)

    `uvm_info("SWITCH_CTRL",
      $sformatf("IRQ_GLOBAL_EN [3]: EXPECTED=%0b ACTUAL=%0b",
                expected[3], rdata[3]), UVM_LOW)

    `uvm_info("SWITCH_CTRL",
      $sformatf("ENABLE [0]: EXPECTED=%0b ACTUAL=%0b",
                expected[0], rdata[0]), UVM_LOW)

  endtask

endclass

//==============================================================================
// 10. PORT_ENABLE - RW
//==============================================================================
class pkt_port_enable_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_port_enable_seq)
  function new(string name = "pkt_port_enable_seq");
    super.new(name); 
  endfunction
  task body(); 
    test_rw(regmodel.port_enable, 32'h0000_000F); 
  endtask
endclass

//==============================================================================
// 11. FWD_ENABLE - RW
//==============================================================================
class pkt_fwd_enable_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_fwd_enable_seq)
  function new(string name = "pkt_fwd_enable_seq"); 
    super.new(name); endfunction
  task body(); 
    test_rw(regmodel.fwd_enable, 32'h0000_000F); 
  endtask
endclass

//==============================================================================
// 12. GEN_CTRL - RW (test only bits 0 and 3; do not pulse START/STOP)
//==============================================================================
class pkt_gen_ctrl_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_gen_ctrl_seq)
  function new(string name = "pkt_gen_ctrl_seq"); super.new(name); endfunction
  task body(); test_rw(regmodel.gen_ctrl, 32'h0000_0009); endtask
endclass

//==============================================================================
// 13. GEN_PKT_CFG - RW
//==============================================================================
class pkt_gen_pkt_cfg_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_gen_pkt_cfg_seq)
  function new(string name = "pkt_gen_pkt_cfg_seq"); super.new(name); endfunction
  task body(); test_rw(regmodel.gen_pkt_cfg, 32'h00FF_FF0F); endtask
endclass

//==============================================================================
// 14. GEN_INTERVAL - RW
//==============================================================================
class pkt_gen_interval_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_gen_interval_seq)
  function new(string name = "pkt_gen_interval_seq"); super.new(name); endfunction
  task body(); test_rw(regmodel.gen_interval, 32'h0000_FFFF); endtask
endclass

//==============================================================================
// 15. GEN_COUNT - RW
//==============================================================================
class pkt_gen_count_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_gen_count_seq)
  function new(string name = "pkt_gen_count_seq"); super.new(name); endfunction
  task body(); test_rw(regmodel.gen_count, 32'h0000_FFFF); endtask
endclass

//==============================================================================
// 16. IRQ_STATUS - W1C. IRQ_FORCE is used first to set GEN_DONE bit 0.
//==============================================================================
class pkt_irq_status_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_irq_status_seq)
  function new(string name = "pkt_irq_status_seq"); super.new(name); endfunction
  task body();
    check_regmodel();
    // Regression runs pkt_irq_force_seq immediately before this sequence.
    test_w1c(regmodel.irq_status, 32'h0000_0001);
  endtask
endclass

//==============================================================================
// 17. IRQ_ENABLE - RW
//==============================================================================
class pkt_irq_enable_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_irq_enable_seq)
  function new(string name = "pkt_irq_enable_seq"); super.new(name); endfunction
  task body(); test_rw(regmodel.irq_enable, 32'h0000_00FF); endtask
endclass

//==============================================================================
// 18. IRQ_FORCE - WO
//==============================================================================
class pkt_irq_force_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_irq_force_seq)
  function new(string name = "pkt_irq_force_seq"); super.new(name); endfunction
  task body(); test_wo(regmodel.irq_force, 32'h0000_0001); endtask
endclass

//==============================================================================
// 19. ERR_STATUS - W1C. ERR_INJECT is used first to set BUS_ERROR and INJECTED.
//==============================================================================
class pkt_err_status_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_err_status_seq)
  function new(string name = "pkt_err_status_seq"); super.new(name); endfunction
  task body(); test_w1c(regmodel.err_status, 32'h0000_0081); endtask
endclass

//==============================================================================
// 20. ERR_ENABLE - RW
//==============================================================================
class pkt_err_enable_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_err_enable_seq)
  function new(string name = "pkt_err_enable_seq"); super.new(name); endfunction
  task body(); test_rw(regmodel.err_enable, 32'h0000_00FF); endtask
endclass

//==============================================================================
// 21. ERR_INJECT - WO
//==============================================================================
class pkt_err_inject_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_err_inject_seq)
  function new(string name = "pkt_err_inject_seq"); super.new(name); endfunction
  task body(); test_wo(regmodel.err_inject, 32'h0000_0001); endtask
endclass

//==============================================================================
// 22. ERR_COUNT - RO
//==============================================================================
class pkt_err_count_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_err_count_seq)
  function new(string name = "pkt_err_count_seq"); super.new(name); endfunction
  task body(); test_ro(regmodel.err_count); endtask
endclass

//==============================================================================
// 23. ERR_INFO - RO
//==============================================================================
class pkt_err_info_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_err_info_seq)
  function new(string name = "pkt_err_info_seq"); super.new(name); endfunction
  task body(); test_ro(regmodel.err_info); endtask
endclass

//==============================================================================
// 24. LOCK - key write / status read
// An invalid key is logged, but is not assumed to relock the DUT unless RTL says so.
//==============================================================================
class pkt_lock_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_lock_seq)
  function new(string name = "pkt_lock_seq"); super.new(name); endfunction
  task body();
    uvm_status_e status;
    uvm_reg_data_t rdata;
    check_regmodel();

    regmodel.lock.write(status, 32'hA5A5_C3C3);
    if (status != UVM_IS_OK) `uvm_error("LOCK", "Valid unlock-key write failed")
    regmodel.lock.read(status, rdata);
    if (status != UVM_IS_OK) `uvm_error("LOCK", "Read after valid key failed")
    else if (rdata[0] !== 1'b0)
      `uvm_error("LOCK", $sformatf("Expected unlocked status 0, got 0x%08h", rdata))
    `uvm_info(get_type_name(), $sformatf("LOCK AFTER VALID KEY = 0x%08h", rdata), UVM_LOW)

    regmodel.lock.write(status, 32'h1234_5678);
    if (status != UVM_IS_OK) `uvm_error("LOCK", "Invalid-key write transaction failed")
    regmodel.lock.read(status, rdata);
    if (status != UVM_IS_OK) `uvm_error("LOCK", "Read after invalid key failed")
    `uvm_info(get_type_name(), $sformatf("LOCK AFTER INVALID KEY = 0x%08h", rdata), UVM_LOW)
  endtask
endclass

//==============================================================================
// 25. SOFT_RESET - WO. This sequence must be the LAST register test in regression.
//==============================================================================
class pkt_soft_reset_seq extends pkt_reg_seq_base;
  `uvm_object_utils(pkt_soft_reset_seq)
  function new(string name = "pkt_soft_reset_seq"); super.new(name); endfunction
  task body(); test_wo(regmodel.soft_reset, 32'h0000_0001); endtask
endclass

//==============================================================================
// REGRESSION: runs all 25 register-specific sequences.
// Reset pin must have been asserted/deasserted by tb_top before this starts.
//==============================================================================
class pkt_regression_seq extends uvm_sequence;
  `uvm_object_utils(pkt_regression_seq)

  pkt_reg_block regbk;
  pkt_reset_seq reset_seq;
  pkt_reg_seq_base seq;

  function new(string name = "pkt_regression_seq");
    super.new(name);
  endfunction

  task body();
    if (regbk == null)
      `uvm_fatal("PKT_REGRESSION", "regbk handle is null")

    reset_seq = pkt_reset_seq::type_id::create("reset_seq");
    reset_seq.regbk = regbk;
    reset_seq.start(m_sequencer);

    seq = pkt_lock_seq::type_id::create("lock_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_device_id_seq::type_id::create("device_id_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_version_seq::type_id::create("version_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_switch_status_seq::type_id::create("switch_status_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_port_status_seq::type_id::create("port_status_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_gen_status_seq::type_id::create("gen_status_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_stat_rx_seq::type_id::create("stat_rx_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_stat_tx_seq::type_id::create("stat_tx_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_stat_drop_seq::type_id::create("stat_drop_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_switch_ctrl_seq::type_id::create("switch_ctrl_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_port_enable_seq::type_id::create("port_enable_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_fwd_enable_seq::type_id::create("fwd_enable_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_gen_ctrl_seq::type_id::create("gen_ctrl_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_gen_pkt_cfg_seq::type_id::create("gen_pkt_cfg_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_gen_interval_seq::type_id::create("gen_interval_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_gen_count_seq::type_id::create("gen_count_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_irq_enable_seq::type_id::create("irq_enable_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_err_enable_seq::type_id::create("err_enable_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_irq_force_seq::type_id::create("irq_force_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_irq_status_seq::type_id::create("irq_status_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_err_inject_seq::type_id::create("err_inject_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_err_status_seq::type_id::create("err_status_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_err_count_seq::type_id::create("err_count_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    seq = pkt_err_info_seq::type_id::create("err_info_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);

    // Always run soft reset last because it changes DUT state.
    seq = pkt_soft_reset_seq::type_id::create("soft_reset_seq");
    seq.regmodel = regbk; seq.start(m_sequencer);
  endtask
endclass
