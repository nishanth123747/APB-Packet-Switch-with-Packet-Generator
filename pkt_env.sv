class pkt_env extends uvm_env;

  pkt_reg_block                 reg_model;
  apb_agent                     apb_agt;
  apb_reg_adapter               adapter;
  uvm_reg_predictor #(apb_seq_item) predictor;
  apb_coverage                  coverage;

  `uvm_component_utils(pkt_env)

  function new(string name = "pkt_env",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction


  // ---------------- BUILD PHASE ---------------- //
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Register model
    reg_model = pkt_reg_block::type_id::create("reg_model");
    reg_model.build();

    // APB agent
    apb_agt = apb_agent::type_id::create("apb_agt", this);
    apb_agt.is_active = UVM_ACTIVE;

    // Register adapter
    adapter = apb_reg_adapter::type_id::create("adapter");

    // Explicit register predictor
    predictor = uvm_reg_predictor #(apb_seq_item)::type_id::create(
                  "predictor", this);

    predictor.map     = reg_model.apb_map;
    predictor.adapter = adapter;

    // APB functional coverage
    coverage = apb_coverage::type_id::create("coverage", this);

  endfunction


  // ---------------- CONNECT PHASE ---------------- //
  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);

    // Connect RAL to APB sequencer
    reg_model.apb_map.set_sequencer(apb_agt.sequencer, adapter);

    // Explicit predictor is used
    reg_model.apb_map.set_auto_predict(0);

    // Monitor to predictor
    apb_agt.monitor.ap.connect(predictor.bus_in);

    // Monitor to coverage
    apb_agt.monitor.ap.connect(coverage.analysis_export);

  endfunction

endclass
