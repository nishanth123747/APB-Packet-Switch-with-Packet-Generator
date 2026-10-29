class apb_coverage extends uvm_subscriber #(apb_seq_item);

  `uvm_component_utils(apb_coverage)

  apb_seq_item tr;

  typedef enum bit {READ = 0, WRITE = 1} acc_e;
  acc_e acc;

  real input_cov;
  real output_cov;

  // ---------------- INPUT COVERAGE ---------------- //
  covergroup apb_input_cg;

    // Register address coverage
    addr_cp : coverpoint tr.addr {
      bins DEVICE_ID     = {16'h0000};
      bins VERSION       = {16'h0004};
      bins SWITCH_STATUS = {16'h0008};
      bins PORT_STATUS   = {16'h000C};
      bins GEN_STATUS    = {16'h0010};
      bins STAT_RX       = {16'h0014};
      bins STAT_TX       = {16'h0018};
      bins STAT_DROP     = {16'h001C};
      bins SWITCH_CTRL   = {16'h0020};
      bins PORT_ENABLE   = {16'h0024};
      bins FWD_ENABLE    = {16'h0028};
      bins GEN_CTRL      = {16'h002C};
      bins GEN_PKT_CFG   = {16'h0030};
      bins GEN_INTERVAL  = {16'h0034};
      bins GEN_COUNT     = {16'h0038};
      bins IRQ_STATUS    = {16'h003C};
      bins IRQ_ENABLE    = {16'h0040};
      bins IRQ_FORCE     = {16'h0044};
      bins ERR_STATUS    = {16'h0048};
      bins ERR_ENABLE    = {16'h004C};
      bins ERR_INJECT    = {16'h0050};
      bins ERR_COUNT     = {16'h0054};
      bins ERR_INFO      = {16'h0058};
      bins LOCK          = {16'h005C};
      bins SOFT_RESET    = {16'h0060};
      bins INVALID_ADDR  = default;
    }

    // Access type coverage
    access_cp : coverpoint acc {
      bins READ  = {READ};
      bins WRITE = {WRITE};
    }

    // Write data coverage
    wdata_cp : coverpoint tr.data iff (tr.write) {
      bins write_data = {[32'h00000000:32'hFFFFFFFF]};
    }

    // Register address crossed with read/write access
    addr_x_access : cross addr_cp, access_cp;

  endgroup


  // ---------------- OUTPUT COVERAGE ---------------- //
  covergroup apb_output_cg;

    // Read data coverage
    rdata_cp : coverpoint tr.data iff (!tr.write) {
      bins read_data = {[32'h00000000:32'hFFFFFFFF]};
    }

    // APB error response coverage
    error_cp : coverpoint tr.error {
      bins PASS = {0};
      bins FAIL = {1};
    }

  endgroup


  // ---------------- CONSTRUCTOR ---------------- //
  function new(string name = "apb_coverage",
               uvm_component parent = null);
    super.new(name, parent);

    apb_input_cg  = new();
    apb_output_cg = new();
  endfunction


  // ---------------- SAMPLE COVERAGE ---------------- //
  function void write(apb_seq_item t);

    tr = t;
    acc = t.write ? WRITE : READ;

    apb_input_cg.sample();
    apb_output_cg.sample();

  endfunction


  // ---------------- EXTRACT PHASE ---------------- //
  function void extract_phase(uvm_phase phase);
    super.extract_phase(phase);

    input_cov  = apb_input_cg.get_coverage();
    output_cov = apb_output_cg.get_coverage();

  endfunction


  // ---------------- REPORT PHASE ---------------- //
  function void report_phase(uvm_phase phase);
    super.report_phase(phase);

    `uvm_info(get_type_name(),
      $sformatf("APB INPUT COVERAGE  = %0.2f%%", input_cov),
      UVM_MEDIUM)

    `uvm_info(get_type_name(),
      $sformatf("APB OUTPUT COVERAGE = %0.2f%%", output_cov),
      UVM_MEDIUM)

  endfunction

endclass
