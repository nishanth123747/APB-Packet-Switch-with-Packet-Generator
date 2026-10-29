
`ifndef PKT_TESTS_SV
`define PKT_TESTS_SV


class pkt_test extends uvm_test;

  `uvm_component_utils(pkt_test)

  pkt_env env;

  function new(string name = "pkt_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = pkt_env::type_id::create("env", this);
  endfunction

  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction

endclass


//==============================================================================
// RESET TEST
//==============================================================================
class pkt_reset_test extends pkt_test;

  `uvm_component_utils(pkt_reset_test)

  pkt_reset_seq rst_seq;

  function new(string name = "pkt_reset_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    rst_seq = pkt_reset_seq::type_id::create("rst_seq");
    rst_seq.regbk = env.reg_model;
    rst_seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass

// pkt_device_id_tes

class pkt_device_id_test extends pkt_test;

  `uvm_component_utils(pkt_device_id_test)

  pkt_device_id_seq seq;

  function new(string name = "pkt_device_id_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_device_id_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_version_test 

class pkt_version_test extends pkt_test;

  `uvm_component_utils(pkt_version_test)

  pkt_version_seq seq;

  function new(string name = "pkt_version_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_version_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_switch_status_test 

class pkt_switch_status_test extends pkt_test;

  `uvm_component_utils(pkt_switch_status_test)

  pkt_switch_status_seq seq;

  function new(string name = "pkt_switch_status_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_switch_status_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_port_status_test 
class pkt_port_status_test extends pkt_test;

  `uvm_component_utils(pkt_port_status_test)

  pkt_port_status_seq seq;

  function new(string name = "pkt_port_status_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_port_status_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_gen_status_test 

class pkt_gen_status_test extends pkt_test;

  `uvm_component_utils(pkt_gen_status_test)

  pkt_gen_status_seq seq;

  function new(string name = "pkt_gen_status_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_gen_status_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_stat_rx_test 
class pkt_stat_rx_test extends pkt_test;

  `uvm_component_utils(pkt_stat_rx_test)

  pkt_stat_rx_seq seq;

  function new(string name = "pkt_stat_rx_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_stat_rx_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_stat_tx_test : runs pkt_stat_tx_seq


class pkt_stat_tx_test extends pkt_test;

  `uvm_component_utils(pkt_stat_tx_test)

  pkt_stat_tx_seq seq;

  function new(string name = "pkt_stat_tx_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_stat_tx_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass

// pkt_stat_drop_test

class pkt_stat_drop_test extends pkt_test;

  `uvm_component_utils(pkt_stat_drop_test)

  pkt_stat_drop_seq seq;

  function new(string name = "pkt_stat_drop_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_stat_drop_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_switch_ctrl_test 

class pkt_switch_ctrl_test extends pkt_test;

  `uvm_component_utils(pkt_switch_ctrl_test)

  pkt_switch_ctrl_seq seq;

  function new(string name = "pkt_switch_ctrl_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_switch_ctrl_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_port_enable_test 

class pkt_port_enable_test extends pkt_test;

  `uvm_component_utils(pkt_port_enable_test)

  pkt_port_enable_seq seq;

  function new(string name = "pkt_port_enable_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_port_enable_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_fwd_enable_test 
class pkt_fwd_enable_test extends pkt_test;

  `uvm_component_utils(pkt_fwd_enable_test)

  pkt_fwd_enable_seq seq;

  function new(string name = "pkt_fwd_enable_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_fwd_enable_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_gen_ctrl_test 

class pkt_gen_ctrl_test extends pkt_test;

  `uvm_component_utils(pkt_gen_ctrl_test)

  pkt_gen_ctrl_seq seq;

  function new(string name = "pkt_gen_ctrl_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_gen_ctrl_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_gen_pkt_cfg_test 

class pkt_gen_pkt_cfg_test extends pkt_test;

  `uvm_component_utils(pkt_gen_pkt_cfg_test)

  pkt_gen_pkt_cfg_seq seq;

  function new(string name = "pkt_gen_pkt_cfg_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_gen_pkt_cfg_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_gen_interval_test 

class pkt_gen_interval_test extends pkt_test;

  `uvm_component_utils(pkt_gen_interval_test)

  pkt_gen_interval_seq seq;

  function new(string name = "pkt_gen_interval_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_gen_interval_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_gen_count_test 
class pkt_gen_count_test extends pkt_test;

  `uvm_component_utils(pkt_gen_count_test)

  pkt_gen_count_seq seq;

  function new(string name = "pkt_gen_count_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_gen_count_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_irq_status_test 
class pkt_irq_status_test extends pkt_test;

  `uvm_component_utils(pkt_irq_status_test)

  pkt_irq_status_seq seq;

  function new(string name = "pkt_irq_status_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_irq_status_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_irq_enable_test 
class pkt_irq_enable_test extends pkt_test;

  `uvm_component_utils(pkt_irq_enable_test)

  pkt_irq_enable_seq seq;

  function new(string name = "pkt_irq_enable_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_irq_enable_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_irq_force_test
class pkt_irq_force_test extends pkt_test;

  `uvm_component_utils(pkt_irq_force_test)

  pkt_irq_force_seq seq;

  function new(string name = "pkt_irq_force_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_irq_force_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_err_status_test
class pkt_err_status_test extends pkt_test;

  `uvm_component_utils(pkt_err_status_test)

  pkt_err_status_seq seq;

  function new(string name = "pkt_err_status_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_err_status_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_err_enable_test : 
class pkt_err_enable_test extends pkt_test;
  `uvm_component_utils(pkt_err_enable_test)

  pkt_err_enable_seq seq;

  function new(string name = "pkt_err_enable_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_err_enable_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_err_inject_test
class pkt_err_inject_test extends pkt_test;

  `uvm_component_utils(pkt_err_inject_test)

  pkt_err_inject_seq seq;

  function new(string name = "pkt_err_inject_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_err_inject_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_err_count_test 
class pkt_err_count_test extends pkt_test;
  `uvm_component_utils(pkt_err_count_test)

  pkt_err_count_seq seq;

  function new(string name = "pkt_err_count_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_err_count_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_err_info_test
class pkt_err_info_test extends pkt_test;

  `uvm_component_utils(pkt_err_info_test)

  pkt_err_info_seq seq;

  function new(string name = "pkt_err_info_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_err_info_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass



// pkt_lock_test
class pkt_lock_test extends pkt_test;

  `uvm_component_utils(pkt_lock_test)

  pkt_lock_seq seq;

  function new(string name = "pkt_lock_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_lock_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


// pkt_soft_reset_test 
class pkt_soft_reset_test extends pkt_test;

  `uvm_component_utils(pkt_soft_reset_test)

  pkt_soft_reset_seq seq;

  function new(string name = "pkt_soft_reset_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    seq = pkt_soft_reset_seq::type_id::create("seq");
    seq.regmodel = env.reg_model;
    seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass


//==============================================================================
// REGRESSION TEST
//==============================================================================
class pkt_regression_test extends pkt_test;

  `uvm_component_utils(pkt_regression_test)

  pkt_regression_seq reg_seq;

  function new(string name = "pkt_regression_test",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);

    reg_seq = pkt_regression_seq::type_id::create("reg_seq");
    reg_seq.regbk = env.reg_model;
    reg_seq.start(env.apb_agt.sequencer);

    phase.drop_objection(this);
  endtask

endclass

`endif // PKT_TESTS_SV
