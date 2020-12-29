
`timescale 1 ns / 1 ps

	module cpci_ip_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M00_AXI
		parameter  C_M00_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 32,
		parameter integer C_M00_AXI_TRANSACTIONS_NUM	= 4,

		// Parameters of Axi Master Bus Interface M01_AXI
		parameter  C_M01_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M01_AXI_BURST_LEN	= 16,
		parameter integer C_M01_AXI_ID_WIDTH	= 1,
		parameter integer C_M01_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M01_AXI_DATA_WIDTH	= 32,
		parameter integer C_M01_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_M01_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_M01_AXI_WUSER_WIDTH	= 0,
		parameter integer C_M01_AXI_RUSER_WIDTH	= 0,
		parameter integer C_M01_AXI_BUSER_WIDTH	= 0,

		// Parameters of Axi Slave Bus Interface S_AXI_INTR
		parameter integer C_S_AXI_INTR_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_INTR_ADDR_WIDTH	= 5,
		parameter integer C_NUM_OF_INTR	= 1,
		parameter  C_INTR_SENSITIVITY	= 32'hFFFFFFFF,
		parameter  C_INTR_ACTIVE_STATE	= 32'hFFFFFFFF,
		parameter integer C_IRQ_SENSITIVITY	= 1,
		parameter integer C_IRQ_ACTIVE_STATE	= 1
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M00_AXI
		input wire  m00_axi_init_axi_txn,
		output wire  m00_axi_error,
		output wire  m00_axi_txn_done,
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output wire [2 : 0] m00_axi_awprot,
		output wire  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		output wire  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [1 : 0] m00_axi_bresp,
		input wire  m00_axi_bvalid,
		output wire  m00_axi_bready,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		output wire [2 : 0] m00_axi_arprot,
		output wire  m00_axi_arvalid,
		input wire  m00_axi_arready,
		input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		input wire [1 : 0] m00_axi_rresp,
		input wire  m00_axi_rvalid,
		output wire  m00_axi_rready,

		// Ports of Axi Master Bus Interface M01_AXI
		input wire  m01_axi_init_axi_txn,
		output wire  m01_axi_txn_done,
		output wire  m01_axi_error,
		input wire  m01_axi_aclk,
		input wire  m01_axi_aresetn,
		output wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_awid,
		output wire [C_M01_AXI_ADDR_WIDTH-1 : 0] m01_axi_awaddr,
		output wire [7 : 0] m01_axi_awlen,
		output wire [2 : 0] m01_axi_awsize,
		output wire [1 : 0] m01_axi_awburst,
		output wire  m01_axi_awlock,
		output wire [3 : 0] m01_axi_awcache,
		output wire [2 : 0] m01_axi_awprot,
		output wire [3 : 0] m01_axi_awqos,
		output wire [C_M01_AXI_AWUSER_WIDTH-1 : 0] m01_axi_awuser,
		output wire  m01_axi_awvalid,
		input wire  m01_axi_awready,
		output wire [C_M01_AXI_DATA_WIDTH-1 : 0] m01_axi_wdata,
		output wire [C_M01_AXI_DATA_WIDTH/8-1 : 0] m01_axi_wstrb,
		output wire  m01_axi_wlast,
		output wire [C_M01_AXI_WUSER_WIDTH-1 : 0] m01_axi_wuser,
		output wire  m01_axi_wvalid,
		input wire  m01_axi_wready,
		input wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_bid,
		input wire [1 : 0] m01_axi_bresp,
		input wire [C_M01_AXI_BUSER_WIDTH-1 : 0] m01_axi_buser,
		input wire  m01_axi_bvalid,
		output wire  m01_axi_bready,
		output wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_arid,
		output wire [C_M01_AXI_ADDR_WIDTH-1 : 0] m01_axi_araddr,
		output wire [7 : 0] m01_axi_arlen,
		output wire [2 : 0] m01_axi_arsize,
		output wire [1 : 0] m01_axi_arburst,
		output wire  m01_axi_arlock,
		output wire [3 : 0] m01_axi_arcache,
		output wire [2 : 0] m01_axi_arprot,
		output wire [3 : 0] m01_axi_arqos,
		output wire [C_M01_AXI_ARUSER_WIDTH-1 : 0] m01_axi_aruser,
		output wire  m01_axi_arvalid,
		input wire  m01_axi_arready,
		input wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_rid,
		input wire [C_M01_AXI_DATA_WIDTH-1 : 0] m01_axi_rdata,
		input wire [1 : 0] m01_axi_rresp,
		input wire  m01_axi_rlast,
		input wire [C_M01_AXI_RUSER_WIDTH-1 : 0] m01_axi_ruser,
		input wire  m01_axi_rvalid,
		output wire  m01_axi_rready,

		// Ports of Axi Slave Bus Interface S_AXI_INTR
		input wire  s_axi_intr_aclk,
		input wire  s_axi_intr_aresetn,
		input wire [C_S_AXI_INTR_ADDR_WIDTH-1 : 0] s_axi_intr_awaddr,
		input wire [2 : 0] s_axi_intr_awprot,
		input wire  s_axi_intr_awvalid,
		output wire  s_axi_intr_awready,
		input wire [C_S_AXI_INTR_DATA_WIDTH-1 : 0] s_axi_intr_wdata,
		input wire [(C_S_AXI_INTR_DATA_WIDTH/8)-1 : 0] s_axi_intr_wstrb,
		input wire  s_axi_intr_wvalid,
		output wire  s_axi_intr_wready,
		output wire [1 : 0] s_axi_intr_bresp,
		output wire  s_axi_intr_bvalid,
		input wire  s_axi_intr_bready,
		input wire [C_S_AXI_INTR_ADDR_WIDTH-1 : 0] s_axi_intr_araddr,
		input wire [2 : 0] s_axi_intr_arprot,
		input wire  s_axi_intr_arvalid,
		output wire  s_axi_intr_arready,
		output wire [C_S_AXI_INTR_DATA_WIDTH-1 : 0] s_axi_intr_rdata,
		output wire [1 : 0] s_axi_intr_rresp,
		output wire  s_axi_intr_rvalid,
		input wire  s_axi_intr_rready,
		output wire  irq,
		input wire LCLK_9056,
		input wire LRESET,
		input wire ADS9056,
		input wire LWR9056,
		input wire LHOLD,
		inout [15:0] ld,
        input [17:0] la,
		output READY9056,
		output LHOLDA,
		output o_pcidir		
		
		
	);
	
	
	wire [15:0] o_ld;
	wire o_axi_write_star;
	wire o_axi_read_star;
	wire i_axi_read_end;
	wire i_axi_write_end;
	cpci_ctrl uut_cpci_ctrl(
     .rstn(m00_axi_aresetn),
     .i_clk100m(m00_axi_aclk),
     .LCLK_9056(LCLK_9056),
     .LRESET(LRESET),
     .ADS9056(ADS9056),
     .LWR9056(LWR9056),
     .LHOLD(LHOLD),
     .i_ld(ld),
     .o_ld(o_ld),
     .la(la),
     .READY9056(READY9056),
     .LHOLDA(LHOLDA),
     .o_pcidir(o_pcidir),
     .o_axi_write_star(o_axi_write_star),     
     .o_axi_read_star(o_axi_read_star),
     .i_axi_read_end(i_axi_read_end),
     .i_axi_write_end(i_axi_write_end)
       
    );
	
	assign ld = o_pcidir ?  16'bz:o_ld;
	
	
	       wire o_axi_write_star;     
           wire o_axi_read_star;
           wire i_axi_read_end;
           wire i_axi_write_end;
// Instantiation of Axi Bus Interface M00_AXI
	cpci_ip_v1_0_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M00_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M00_AXI_TRANSACTIONS_NUM)
	) cpci_ip_v1_0_M00_AXI_inst (
		.INIT_AXI_TXN(m00_axi_init_axi_txn),
		.ERROR(m00_axi_error),
		.TXN_DONE(m00_axi_txn_done),
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m00_axi_awaddr),
		.M_AXI_AWPROT(m00_axi_awprot),
		.M_AXI_AWVALID(m00_axi_awvalid),
		.M_AXI_AWREADY(m00_axi_awready),
		.M_AXI_WDATA(m00_axi_wdata),
		.M_AXI_WSTRB(m00_axi_wstrb),
		.M_AXI_WVALID(m00_axi_wvalid),
		.M_AXI_WREADY(m00_axi_wready),
		.M_AXI_BRESP(m00_axi_bresp),
		.M_AXI_BVALID(m00_axi_bvalid),
		.M_AXI_BREADY(m00_axi_bready),
		.M_AXI_ARADDR(m00_axi_araddr),
		.M_AXI_ARPROT(m00_axi_arprot),
		.M_AXI_ARVALID(m00_axi_arvalid),
		.M_AXI_ARREADY(m00_axi_arready),
		.M_AXI_RDATA(m00_axi_rdata),
		.M_AXI_RRESP(m00_axi_rresp),
		.M_AXI_RVALID(m00_axi_rvalid),
		.M_AXI_RREADY(m00_axi_rready),
		.o_axi_write_star(o_axi_write_star),     
        .o_axi_read_star(o_axi_read_star),
        .i_axi_read_end(i_axi_read_end),
        .i_axi_write_end(i_axi_write_end)
	);

// Instantiation of Axi Bus Interface M01_AXI
	cpci_ip_v1_0_M01_AXI # ( 
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M01_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN(C_M01_AXI_BURST_LEN),
		.C_M_AXI_ID_WIDTH(C_M01_AXI_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH(C_M01_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M01_AXI_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH(C_M01_AXI_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH(C_M01_AXI_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH(C_M01_AXI_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH(C_M01_AXI_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH(C_M01_AXI_BUSER_WIDTH)
	) cpci_ip_v1_0_M01_AXI_inst (
		.INIT_AXI_TXN(m01_axi_init_axi_txn),
		.TXN_DONE(m01_axi_txn_done),
		.ERROR(m01_axi_error),
		.M_AXI_ACLK(m01_axi_aclk),
		.M_AXI_ARESETN(m01_axi_aresetn),
		.M_AXI_AWID(m01_axi_awid),
		.M_AXI_AWADDR(m01_axi_awaddr),
		.M_AXI_AWLEN(m01_axi_awlen),
		.M_AXI_AWSIZE(m01_axi_awsize),
		.M_AXI_AWBURST(m01_axi_awburst),
		.M_AXI_AWLOCK(m01_axi_awlock),
		.M_AXI_AWCACHE(m01_axi_awcache),
		.M_AXI_AWPROT(m01_axi_awprot),
		.M_AXI_AWQOS(m01_axi_awqos),
		.M_AXI_AWUSER(m01_axi_awuser),
		.M_AXI_AWVALID(m01_axi_awvalid),
		.M_AXI_AWREADY(m01_axi_awready),
		.M_AXI_WDATA(m01_axi_wdata),
		.M_AXI_WSTRB(m01_axi_wstrb),
		.M_AXI_WLAST(m01_axi_wlast),
		.M_AXI_WUSER(m01_axi_wuser),
		.M_AXI_WVALID(m01_axi_wvalid),
		.M_AXI_WREADY(m01_axi_wready),
		.M_AXI_BID(m01_axi_bid),
		.M_AXI_BRESP(m01_axi_bresp),
		.M_AXI_BUSER(m01_axi_buser),
		.M_AXI_BVALID(m01_axi_bvalid),
		.M_AXI_BREADY(m01_axi_bready),
		.M_AXI_ARID(m01_axi_arid),
		.M_AXI_ARADDR(m01_axi_araddr),
		.M_AXI_ARLEN(m01_axi_arlen),
		.M_AXI_ARSIZE(m01_axi_arsize),
		.M_AXI_ARBURST(m01_axi_arburst),
		.M_AXI_ARLOCK(m01_axi_arlock),
		.M_AXI_ARCACHE(m01_axi_arcache),
		.M_AXI_ARPROT(m01_axi_arprot),
		.M_AXI_ARQOS(m01_axi_arqos),
		.M_AXI_ARUSER(m01_axi_aruser),
		.M_AXI_ARVALID(m01_axi_arvalid),
		.M_AXI_ARREADY(m01_axi_arready),
		.M_AXI_RID(m01_axi_rid),
		.M_AXI_RDATA(m01_axi_rdata),
		.M_AXI_RRESP(m01_axi_rresp),
		.M_AXI_RLAST(m01_axi_rlast),
		.M_AXI_RUSER(m01_axi_ruser),
		.M_AXI_RVALID(m01_axi_rvalid),
		.M_AXI_RREADY(m01_axi_rready)
	);

// Instantiation of Axi Bus Interface S_AXI_INTR
	cpci_ip_v1_0_S_AXI_INTR # ( 
		.C_S_AXI_DATA_WIDTH(C_S_AXI_INTR_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_AXI_INTR_ADDR_WIDTH),
		.C_NUM_OF_INTR(C_NUM_OF_INTR),
		.C_INTR_SENSITIVITY(C_INTR_SENSITIVITY),
		.C_INTR_ACTIVE_STATE(C_INTR_ACTIVE_STATE),
		.C_IRQ_SENSITIVITY(C_IRQ_SENSITIVITY),
		.C_IRQ_ACTIVE_STATE(C_IRQ_ACTIVE_STATE)
	) cpci_ip_v1_0_S_AXI_INTR_inst (
		.S_AXI_ACLK(s_axi_intr_aclk),
		.S_AXI_ARESETN(s_axi_intr_aresetn),
		.S_AXI_AWADDR(s_axi_intr_awaddr),
		.S_AXI_AWPROT(s_axi_intr_awprot),
		.S_AXI_AWVALID(s_axi_intr_awvalid),
		.S_AXI_AWREADY(s_axi_intr_awready),
		.S_AXI_WDATA(s_axi_intr_wdata),
		.S_AXI_WSTRB(s_axi_intr_wstrb),
		.S_AXI_WVALID(s_axi_intr_wvalid),
		.S_AXI_WREADY(s_axi_intr_wready),
		.S_AXI_BRESP(s_axi_intr_bresp),
		.S_AXI_BVALID(s_axi_intr_bvalid),
		.S_AXI_BREADY(s_axi_intr_bready),
		.S_AXI_ARADDR(s_axi_intr_araddr),
		.S_AXI_ARPROT(s_axi_intr_arprot),
		.S_AXI_ARVALID(s_axi_intr_arvalid),
		.S_AXI_ARREADY(s_axi_intr_arready),
		.S_AXI_RDATA(s_axi_intr_rdata),
		.S_AXI_RRESP(s_axi_intr_rresp),
		.S_AXI_RVALID(s_axi_intr_rvalid),
		.S_AXI_RREADY(s_axi_intr_rready),
		.irq(irq)
	);

	// Add user logic here

	// User logic ends

	endmodule
