class apb_monitor extends uvm_monitor;

  virtual apb_if vif;

  uvm_analysis_port #(apb_seq_item) ap;

  `uvm_component_utils(apb_monitor)

  function new(string name = "apb_monitor",
               uvm_component parent = null);
    super.new(name, parent);
    ap = new("ap", this);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    if (!uvm_config_db #(virtual apb_if)::get(this, "", "vif", vif))
      `uvm_fatal("APB_MON", "APB interface not found")
  endfunction

  virtual task run_phase(uvm_phase phase);

    apb_seq_item tr;

    forever begin

      @(posedge vif.pclk);

      if (vif.psel && vif.penable && vif.pready) begin

        tr = apb_seq_item::type_id::create("tr");

        tr.addr  = vif.paddr;
        tr.write = vif.pwrite;
        tr.error = vif.pslverr;

        if (!vif.pwrite)
          tr.data = vif.prdata;
        else
          tr.data = vif.pwdata;
           
        ap.write(tr);

      end

    end

  endtask

endclass
