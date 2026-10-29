class apb_driver extends uvm_driver #(apb_seq_item);

  virtual apb_if vif;

  `uvm_component_utils(apb_driver)

  function new(string name = "apb_driver",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    if (!uvm_config_db #(virtual apb_if)::get(this, "", "vif", vif))
      `uvm_fatal("APB_DRV", "APB interface not found")
  endfunction

  virtual task run_phase(uvm_phase phase);

    apb_seq_item tr;

    vif.psel    <= 0;
    vif.penable <= 0;
    vif.pwrite  <= 0;
    vif.paddr   <= 0;
    vif.pwdata  <= 0;

    forever begin

      seq_item_port.get_next_item(tr);

      drive_transfer(tr);

      seq_item_port.item_done();

    end

  endtask

  virtual task drive_transfer(apb_seq_item tr);

    // APB setup phase
    @(posedge vif.pclk);

    vif.psel   <= 1;
    vif.pwrite <= tr.write;
    vif.paddr  <= tr.addr;
    vif.pwdata <= tr.data;

    // APB access phase
    @(posedge vif.pclk);

    vif.penable <= 1;

    // wait for PREADY
    while (!vif.pready)
      @(posedge vif.pclk);

    //  response
    if (!tr.write)
      tr.data = vif.prdata;

    tr.error = vif.pslverr;

    // return to idle
    @(posedge vif.pclk);

    vif.psel    <= 0;
    vif.penable <= 0;
    vif.pwrite  <= 0;
    vif.paddr   <= 0;
    vif.pwdata  <= 0;

  endtask

    endclass
