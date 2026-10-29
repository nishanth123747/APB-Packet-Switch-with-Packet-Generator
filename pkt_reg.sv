class device_id_reg extends uvm_reg;

  uvm_reg_field revision;
  uvm_reg_field vendor_id;
  uvm_reg_field product_id;

  `uvm_object_utils(device_id_reg)

  function new(string name = "device_id");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    revision = uvm_reg_field::type_id::create("revision");
    revision.configure(this, 8, 24, "RO", 0, 8'h02, 1, 0, 0);

    vendor_id = uvm_reg_field::type_id::create("vendor_id");
    vendor_id.configure(this, 8, 16, "RO", 0, 8'hA5, 1, 0, 0);

    product_id = uvm_reg_field::type_id::create("product_id");
    product_id.configure(this, 16, 0, "RO", 0, 16'h5357, 1, 0, 0);

  endfunction

endclass

class version_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field major;
  uvm_reg_field minor;
  uvm_reg_field patch;

  `uvm_object_utils(version_reg)

  function new(string name = "version_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 8, 24, "RO", 0, 8'h00, 1, 0, 0);

    major = uvm_reg_field::type_id::create("major");
    major.configure(this, 8, 16, "RO", 0, 8'h01, 1, 0, 0);

    minor = uvm_reg_field::type_id::create("minor");
    minor.configure(this, 8, 8, "RO", 0, 8'h02, 1, 0, 0);

    patch = uvm_reg_field::type_id::create("patch");
    patch.configure(this, 8, 0, "RO", 0, 8'h00, 1, 0, 0);

  endfunction

endclass

class switch_status_reg extends uvm_reg;

  uvm_reg_field reserved_31_18;
  uvm_reg_field gen_fsm;
  uvm_reg_field reserved_15_10;
  uvm_reg_field err_pending;
  uvm_reg_field gen_running;
  uvm_reg_field port_enabled;
  uvm_reg_field locked;
  uvm_reg_field switch_enabled;
  uvm_reg_field busy;
  uvm_reg_field ready;

  `uvm_object_utils(switch_status_reg)

  function new(string name = "switch_status_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved_31_18 = uvm_reg_field::type_id::create("reserved_31_18");
    reserved_31_18.configure(this, 14, 18, "RO", 0, 14'h0, 1, 0, 0);

    gen_fsm = uvm_reg_field::type_id::create("gen_fsm");
    gen_fsm.configure(this, 2, 16, "RO", 1, 2'h0, 1, 0, 0);

    reserved_15_10 = uvm_reg_field::type_id::create("reserved_15_10");
    reserved_15_10.configure(this, 6, 10, "RO", 0, 6'h0, 1, 0, 0);

    err_pending = uvm_reg_field::type_id::create("err_pending");
    err_pending.configure(this, 1, 9, "RO", 1, 1'h0, 1, 0, 0);

    gen_running = uvm_reg_field::type_id::create("gen_running");
    gen_running.configure(this, 1, 8, "RO", 1, 1'h0, 1, 0, 0);

    port_enabled = uvm_reg_field::type_id::create("port_enabled");
    port_enabled.configure(this, 4, 4, "RO", 1, 4'hF, 1, 0, 0);

    locked = uvm_reg_field::type_id::create("locked");
    locked.configure(this, 1, 3, "RO", 1, 1'h1, 1, 0, 0);

    switch_enabled = uvm_reg_field::type_id::create("switch_enabled");
    switch_enabled.configure(this, 1, 2, "RO", 1, 1'h0, 1, 0, 0);

    busy = uvm_reg_field::type_id::create("busy");
    busy.configure(this, 1, 1, "RO", 1, 1'h0, 1, 0, 0);

    ready = uvm_reg_field::type_id::create("ready");
    ready.configure(this, 1, 0, "RO", 1, 1'h1, 1, 0, 0);

  endfunction

endclass

class port_status_reg extends uvm_reg;

  uvm_reg_field port3_level;
  uvm_reg_field port2_level;
  uvm_reg_field port1_level;
  uvm_reg_field port0_level;

  `uvm_object_utils(port_status_reg)

  function new(string name = "port_status_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    port3_level = uvm_reg_field::type_id::create("port3_level");
    port3_level.configure(this, 8, 24, "RO", 0, 8'h00, 1, 0, 0);

    port2_level = uvm_reg_field::type_id::create("port2_level");
    port2_level.configure(this, 8, 16, "RO", 0, 8'h00, 1, 0, 0);

    port1_level = uvm_reg_field::type_id::create("port1_level");
    port1_level.configure(this, 8, 8, "RO", 0, 8'h00, 1, 0, 0);

    port0_level = uvm_reg_field::type_id::create("port0_level");
    port0_level.configure(this, 8, 0, "RO", 0, 8'h00, 1, 0, 0);

  endfunction

endclass

class gen_status_reg extends uvm_reg;

  uvm_reg_field reserved_31_24;
  uvm_reg_field remaining;
  uvm_reg_field reserved_7_4;
  uvm_reg_field fsm;
  uvm_reg_field done;
  uvm_reg_field running;

  `uvm_object_utils(gen_status_reg)

  function new(string name = "gen_status_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved_31_24 = uvm_reg_field::type_id::create("reserved_31_24");
    reserved_31_24.configure(this, 8, 24, "RO", 0, 8'h00, 1, 0, 0);

    remaining = uvm_reg_field::type_id::create("remaining");
    remaining.configure(this, 16, 8, "RO", 0, 16'h0000, 1, 0, 0);

    reserved_7_4 = uvm_reg_field::type_id::create("reserved_7_4");
    reserved_7_4.configure(this, 4, 4, "RO", 0, 4'h0, 1, 0, 0);

    fsm = uvm_reg_field::type_id::create("fsm");
    fsm.configure(this, 2, 2, "RO", 0, 2'h0, 1, 0, 0);

    done = uvm_reg_field::type_id::create("done");
    done.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);

    running = uvm_reg_field::type_id::create("running");
    running.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);

  endfunction

endclass

class stat_rx_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field rx_packets;

  `uvm_object_utils(stat_rx_reg)

  function new(string name = "stat_rx_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 16, 16, "RO", 0, 16'h0000, 1, 0, 0);

    rx_packets = uvm_reg_field::type_id::create("rx_packets");
    rx_packets.configure(this, 16, 0, "RO", 1, 16'h0000, 1, 0, 0);

  endfunction

endclass

class stat_tx_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field tx_packets;

  `uvm_object_utils(stat_tx_reg)

  function new(string name = "stat_tx_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 16, 16, "RO", 0, 16'h0000, 1, 0, 0);

    tx_packets = uvm_reg_field::type_id::create("tx_packets");
    tx_packets.configure(this, 16, 0, "RO", 1, 16'h0000, 1, 0, 0);

  endfunction

endclass

class stat_drop_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field dropped_packets;

  `uvm_object_utils(stat_drop_reg)

  function new(string name = "stat_drop_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 16, 16, "RO", 0, 16'h0000, 1, 0, 0);

    dropped_packets = uvm_reg_field::type_id::create("dropped_packets");
    dropped_packets.configure(this, 16, 0, "RO", 1, 16'h0000, 1, 0, 0);

  endfunction

endclass

class switch_ctrl_reg extends uvm_reg;

  uvm_reg_field reserved_31_4;
  uvm_reg_field irq_global_en;
  uvm_reg_field reserved_2;
  uvm_reg_field stat_clear;
  uvm_reg_field enable;

  `uvm_object_utils(switch_ctrl_reg)

  function new(string name = "switch_ctrl_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved_31_4 = uvm_reg_field::type_id::create("reserved_31_4");
    reserved_31_4.configure(this, 28, 4, "RO", 0, 28'h0, 1, 0, 0);

    irq_global_en = uvm_reg_field::type_id::create("irq_global_en");
    irq_global_en.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);

    reserved_2 = uvm_reg_field::type_id::create("reserved_2");
    reserved_2.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);

    stat_clear = uvm_reg_field::type_id::create("stat_clear");
    stat_clear.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);

    enable = uvm_reg_field::type_id::create("enable");
    enable.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);

  endfunction

endclass

class port_enable_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field port3_en;
  uvm_reg_field port2_en;
  uvm_reg_field port1_en;
  uvm_reg_field port0_en;

  `uvm_object_utils(port_enable_reg)

  function new(string name = "port_enable_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 28, 4, "RO", 0, 28'h0, 1, 0, 0);

    port3_en = uvm_reg_field::type_id::create("port3_en");
    port3_en.configure(this, 1, 3, "RW", 0, 1'h1, 1, 0, 0);

    port2_en = uvm_reg_field::type_id::create("port2_en");
    port2_en.configure(this, 1, 2, "RW", 0, 1'h1, 1, 0, 0);

    port1_en = uvm_reg_field::type_id::create("port1_en");
    port1_en.configure(this, 1, 1, "RW", 0, 1'h1, 1, 0, 0);

    port0_en = uvm_reg_field::type_id::create("port0_en");
    port0_en.configure(this, 1, 0, "RW", 0, 1'h1, 1, 0, 0);

  endfunction

endclass

class fwd_enable_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field fwd3_en;
  uvm_reg_field fwd2_en;
  uvm_reg_field fwd1_en;
  uvm_reg_field fwd0_en;

  `uvm_object_utils(fwd_enable_reg)

  function new(string name = "fwd_enable_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 28, 4, "RO", 0, 28'h0, 1, 0, 0);

    fwd3_en = uvm_reg_field::type_id::create("fwd3_en");
    fwd3_en.configure(this, 1, 3, "RW", 0, 1'h1, 1, 0, 0);

    fwd2_en = uvm_reg_field::type_id::create("fwd2_en");
    fwd2_en.configure(this, 1, 2, "RW", 0, 1'h1, 1, 0, 0);

    fwd1_en = uvm_reg_field::type_id::create("fwd1_en");
    fwd1_en.configure(this, 1, 1, "RW", 0, 1'h1, 1, 0, 0);

    fwd0_en = uvm_reg_field::type_id::create("fwd0_en");
    fwd0_en.configure(this, 1, 0, "RW", 0, 1'h1, 1, 0, 0);

  endfunction
endclass

class gen_ctrl_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field continuous;
  uvm_reg_field stop;
  uvm_reg_field start;
  uvm_reg_field enable;

  `uvm_object_utils(gen_ctrl_reg)

  function new(string name = "gen_ctrl_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 28, 4, "RO", 0, 28'h0, 1, 0, 0);

    continuous = uvm_reg_field::type_id::create("continuous");
    continuous.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);

    stop = uvm_reg_field::type_id::create("stop");
    stop.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);

    start = uvm_reg_field::type_id::create("start");
    start.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);

    enable = uvm_reg_field::type_id::create("enable");
    enable.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);

  endfunction
endclass

class gen_pkt_cfg_reg extends uvm_reg;

  uvm_reg_field reserved_31_24;
  uvm_reg_field seed;
  uvm_reg_field length;
  uvm_reg_field reserved_7_4;
  uvm_reg_field src_port;
  uvm_reg_field dst_port;

  `uvm_object_utils(gen_pkt_cfg_reg)

  function new(string name = "gen_pkt_cfg_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved_31_24 = uvm_reg_field::type_id::create("reserved_31_24");
    reserved_31_24.configure(this, 8, 24, "RO", 0, 8'h0, 1, 0, 0);

    seed = uvm_reg_field::type_id::create("seed");
    seed.configure(this, 8, 16, "RW", 0, 8'h00, 1, 0, 0);

    length = uvm_reg_field::type_id::create("length");
    length.configure(this, 8, 8, "RW", 0, 8'h04, 1, 0, 0);

    reserved_7_4 = uvm_reg_field::type_id::create("reserved_7_4");
    reserved_7_4.configure(this, 4, 4, "RO", 0, 4'h0, 1, 0, 0);

    src_port = uvm_reg_field::type_id::create("src_port");
    src_port.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);

    dst_port = uvm_reg_field::type_id::create("dst_port");
    dst_port.configure(this, 2, 0, "RW", 0, 2'h1, 1, 0, 0);

  endfunction
endclass

class gen_interval_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field interval;

  `uvm_object_utils(gen_interval_reg)

  function new(string name = "gen_interval_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 0);

    interval = uvm_reg_field::type_id::create("interval");
    interval.configure(this, 16, 0, "RW", 0, 16'h0002, 1, 0, 0);

  endfunction
endclass

class gen_count_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field packet_count;

  `uvm_object_utils(gen_count_reg)

  function new(string name = "gen_count_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 0);

    packet_count = uvm_reg_field::type_id::create("packet_count");
    packet_count.configure(this, 16, 0, "RW", 0, 16'h0004, 1, 0, 0);

  endfunction
endclass

class irq_status_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field sw_event;
  uvm_reg_field start_ack;
  uvm_reg_field queue_almost_full;
  uvm_reg_field packet_forwarded;
  uvm_reg_field packet_dropped;
  uvm_reg_field queue_overflow;
  uvm_reg_field error;
  uvm_reg_field gen_done;

  `uvm_object_utils(irq_status_reg)

  function new(string name = "irq_status_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 24, 8, "RO", 0, 24'h0, 1, 0, 0);

    sw_event = uvm_reg_field::type_id::create("sw_event");
    sw_event.configure(this, 1, 7, "W1C", 0, 1'h0, 1, 0, 0);

    start_ack = uvm_reg_field::type_id::create("start_ack");
    start_ack.configure(this, 1, 6, "W1C", 0, 1'h0, 1, 0, 0);

    queue_almost_full = uvm_reg_field::type_id::create("queue_almost_full");
    queue_almost_full.configure(this, 1, 5, "W1C", 0, 1'h0, 1, 0, 0);

    packet_forwarded = uvm_reg_field::type_id::create("packet_forwarded");
    packet_forwarded.configure(this, 1, 4, "W1C", 0, 1'h0, 1, 0, 0);

    packet_dropped = uvm_reg_field::type_id::create("packet_dropped");
    packet_dropped.configure(this, 1, 3, "W1C", 0, 1'h0, 1, 0, 0);

    queue_overflow = uvm_reg_field::type_id::create("queue_overflow");
    queue_overflow.configure(this, 1, 2, "W1C", 0, 1'h0, 1, 0, 0);

    error = uvm_reg_field::type_id::create("error");
    error.configure(this, 1, 1, "W1C", 0, 1'h0, 1, 0, 0);

    gen_done = uvm_reg_field::type_id::create("gen_done");
    gen_done.configure(this, 1, 0, "W1C", 0, 1'h0, 1, 0, 0);

  endfunction
endclass

class irq_enable_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field sw_event_en;
  uvm_reg_field start_ack_en;
  uvm_reg_field queue_af_en;
  uvm_reg_field packet_fwd_en;
  uvm_reg_field packet_drop_en;
  uvm_reg_field overflow_en;
  uvm_reg_field error_en;
  uvm_reg_field gen_done_en;

  `uvm_object_utils(irq_enable_reg)

  function new(string name = "irq_enable_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 24, 8, "RO", 0, 24'h0, 1, 0, 0);

    sw_event_en = uvm_reg_field::type_id::create("sw_event_en");
    sw_event_en.configure(this, 1, 7, "RW", 0, 1'h0, 1, 0, 0);

    start_ack_en = uvm_reg_field::type_id::create("start_ack_en");
    start_ack_en.configure(this, 1, 6, "RW", 0, 1'h0, 1, 0, 0);

    queue_af_en = uvm_reg_field::type_id::create("queue_af_en");
    queue_af_en.configure(this, 1, 5, "RW", 0, 1'h0, 1, 0, 0);

    packet_fwd_en = uvm_reg_field::type_id::create("packet_fwd_en");
    packet_fwd_en.configure(this, 1, 4, "RW", 0, 1'h0, 1, 0, 0);

    packet_drop_en = uvm_reg_field::type_id::create("packet_drop_en");
    packet_drop_en.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);

    overflow_en = uvm_reg_field::type_id::create("overflow_en");
    overflow_en.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);

    error_en = uvm_reg_field::type_id::create("error_en");
    error_en.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);

    gen_done_en = uvm_reg_field::type_id::create("gen_done_en");
    gen_done_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);

  endfunction
endclass

class irq_force_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field force_field;

  `uvm_object_utils(irq_force_reg)

  function new(string name = "irq_force_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 24, 8, "RO", 0, 24'h0, 1, 0, 0);

    force_field = uvm_reg_field::type_id::create("force_field");
    force_field.configure(this, 8, 0, "WO", 0, 8'h00, 1, 0, 0);

  endfunction

endclass

class err_status_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field injected;
  uvm_reg_field length_error;
  uvm_reg_field crc_error;
  uvm_reg_field protocol_error;
  uvm_reg_field undersize;
  uvm_reg_field queue_overflow;
  uvm_reg_field dest_error;
  uvm_reg_field bus_error;

  `uvm_object_utils(err_status_reg)

  function new(string name = "err_status_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 24, 8, "RO", 0, 24'h0, 1, 0, 0);

    injected = uvm_reg_field::type_id::create("injected");
    injected.configure(this, 1, 7, "W1C", 0, 1'h0, 1, 0, 0);

    length_error = uvm_reg_field::type_id::create("length_error");
    length_error.configure(this, 1, 6, "W1C", 0, 1'h0, 1, 0, 0);

    crc_error = uvm_reg_field::type_id::create("crc_error");
    crc_error.configure(this, 1, 5, "W1C", 0, 1'h0, 1, 0, 0);

    protocol_error = uvm_reg_field::type_id::create("protocol_error");
    protocol_error.configure(this, 1, 4, "W1C", 0, 1'h0, 1, 0, 0);

    undersize = uvm_reg_field::type_id::create("undersize");
    undersize.configure(this, 1, 3, "W1C", 0, 1'h0, 1, 0, 0);

    queue_overflow = uvm_reg_field::type_id::create("queue_overflow");
    queue_overflow.configure(this, 1, 2, "W1C", 0, 1'h0, 1, 0, 0);

    dest_error = uvm_reg_field::type_id::create("dest_error");
    dest_error.configure(this, 1, 1, "W1C", 0, 1'h0, 1, 0, 0);

    bus_error = uvm_reg_field::type_id::create("bus_error");
    bus_error.configure(this, 1, 0, "W1C", 0, 1'h0, 1, 0, 0);

  endfunction
endclass

class err_enable_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field injected_en;
  uvm_reg_field length_en;
  uvm_reg_field crc_en;
  uvm_reg_field protocol_en;
  uvm_reg_field undersize_en;
  uvm_reg_field overflow_en;
  uvm_reg_field dest_en;
  uvm_reg_field bus_en;

  `uvm_object_utils(err_enable_reg)

  function new(string name = "err_enable_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 24, 8, "RO", 0, 24'h0, 1, 0, 0);

    injected_en = uvm_reg_field::type_id::create("injected_en");
    injected_en.configure(this, 1, 7, "RW", 0, 1'h0, 1, 0, 0);

    length_en = uvm_reg_field::type_id::create("length_en");
    length_en.configure(this, 1, 6, "RW", 0, 1'h0, 1, 0, 0);

    crc_en = uvm_reg_field::type_id::create("crc_en");
    crc_en.configure(this, 1, 5, "RW", 0, 1'h0, 1, 0, 0);

    protocol_en = uvm_reg_field::type_id::create("protocol_en");
    protocol_en.configure(this, 1, 4, "RW", 0, 1'h0, 1, 0, 0);

    undersize_en = uvm_reg_field::type_id::create("undersize_en");
    undersize_en.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);

    overflow_en = uvm_reg_field::type_id::create("overflow_en");
    overflow_en.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);

    dest_en = uvm_reg_field::type_id::create("dest_en");
    dest_en.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);

    bus_en = uvm_reg_field::type_id::create("bus_en");
    bus_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);

  endfunction
endclass

class err_inject_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field clear_count;
  uvm_reg_field injected;
  uvm_reg_field length_error;
  uvm_reg_field crc_error;
  uvm_reg_field protocol_error;
  uvm_reg_field undersize;
  uvm_reg_field queue_overflow;
  uvm_reg_field dest_error;
  uvm_reg_field bus_error;

  `uvm_object_utils(err_inject_reg)

  function new(string name = "err_inject_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 23, 8, "RO", 0, 23'h0, 1, 0, 0);

    clear_count = uvm_reg_field::type_id::create("clear_count");
    clear_count.configure(this, 1, 31, "WO", 0, 1'h0, 1, 0, 0);

    injected = uvm_reg_field::type_id::create("injected");
    injected.configure(this, 1, 7, "WO", 0, 1'h0, 1, 0, 0);

    length_error = uvm_reg_field::type_id::create("length_error");
    length_error.configure(this, 1, 6, "WO", 0, 1'h0, 1, 0, 0);

    crc_error = uvm_reg_field::type_id::create("crc_error");
    crc_error.configure(this, 1, 5, "WO", 0, 1'h0, 1, 0, 0);

    protocol_error = uvm_reg_field::type_id::create("protocol_error");
    protocol_error.configure(this, 1, 4, "WO", 0, 1'h0, 1, 0, 0);

    undersize = uvm_reg_field::type_id::create("undersize");
    undersize.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);

    queue_overflow = uvm_reg_field::type_id::create("queue_overflow");
    queue_overflow.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);

    dest_error = uvm_reg_field::type_id::create("dest_error");
    dest_error.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);

    bus_error = uvm_reg_field::type_id::create("bus_error");
    bus_error.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);

  endfunction
endclass

class err_info_reg extends uvm_reg;

  uvm_reg_field tx_snapshot;
  uvm_reg_field reserved;
  uvm_reg_field dest_port;
  uvm_reg_field source;
  uvm_reg_field last_code;

  `uvm_object_utils(err_info_reg)

  function new(string name = "err_info_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    tx_snapshot = uvm_reg_field::type_id::create("tx_snapshot");
    tx_snapshot.configure(this, 12, 20, "RO", 0, 12'h000, 1, 0, 0);

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 2, 18, "RO", 0, 2'h0, 1, 0, 0);

    dest_port = uvm_reg_field::type_id::create("dest_port");
    dest_port.configure(this, 2, 16, "RO", 0, 2'h0, 1, 0, 0);

    source = uvm_reg_field::type_id::create("source");
    source.configure(this, 8, 8, "RO", 0, 8'h00, 1, 0, 0);

    last_code = uvm_reg_field::type_id::create("last_code");
    last_code.configure(this, 8, 0, "RO", 0, 8'h00, 1, 0, 0);

  endfunction

endclass

class lock_reg extends uvm_reg;

  uvm_reg_field key;
  uvm_reg_field locked;

  `uvm_object_utils(lock_reg)

  function new(string name = "lock_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    key = uvm_reg_field::type_id::create("key");
    key.configure(this, 31, 1, "WO", 0, 31'h0, 1, 0, 0);

    locked = uvm_reg_field::type_id::create("locked");
    locked.configure(this, 1, 0, "RO", 1, 1'h1, 1, 0, 0);

  endfunction
endclass

class soft_reset_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field pulse;

  `uvm_object_utils(soft_reset_reg)

  function new(string name = "soft_reset_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 31, 1, "RO", 0, 31'h0, 1, 0, 0);

    pulse = uvm_reg_field::type_id::create("pulse");
    pulse.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);

  endfunction
endclass

class err_count_reg extends uvm_reg;

  uvm_reg_field reserved;
  uvm_reg_field count;

  `uvm_object_utils(err_count_reg)

  function new(string name = "err_count_reg");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();

    reserved = uvm_reg_field::type_id::create("reserved");
    reserved.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 0);

    count = uvm_reg_field::type_id::create("count");
    count.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 0);

  endfunction

endclass

