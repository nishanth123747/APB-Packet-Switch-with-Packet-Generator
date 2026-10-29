class apb_reg_adapter extends uvm_reg_adapter;

  `uvm_object_utils(apb_reg_adapter)

  function new(string name = "apb_reg_adapter");
    super.new(name);
    supports_byte_enable = 0;
    provides_responses = 0;
  endfunction

  virtual function uvm_sequence_item reg2bus(
    const ref uvm_reg_bus_op rw
  );

    apb_seq_item tr;

    tr = apb_seq_item::type_id::create("tr");

    tr.addr  = rw.addr;
    tr.data  = rw.data;
    tr.write = (rw.kind == UVM_WRITE);

    return tr;

  endfunction

  virtual function void bus2reg(
    uvm_sequence_item bus_item,
    ref uvm_reg_bus_op rw
  );

    apb_seq_item tr;

    if (!$cast(tr, bus_item))
      `uvm_fatal("APB_ADAPTER",
                 "Failed to cast bus_item to apb_seq_item")

    rw.kind   = tr.write ? UVM_WRITE : UVM_READ;
    rw.addr   = tr.addr;
    rw.data   = tr.data;
    rw.status = tr.error ? UVM_NOT_OK : UVM_IS_OK;

  endfunction

endclass
