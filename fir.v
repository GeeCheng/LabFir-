module fir 
#(  parameter pADDR_WIDTH = 12,
    parameter pDATA_WIDTH = 32,
    parameter Tape_Num    = 32
)
(
    output  wire                     awready,
    output  wire                     wready,
    input   wire                     awvalid,
    input   wire [(pADDR_WIDTH-1):0] awaddr,
    input   wire                     wvalid,
    input   wire [(pDATA_WIDTH-1):0] wdata,
    output  wire                     arready,
    input   wire                     rready,
    input   wire                     arvalid,
    input   wire [(pADDR_WIDTH-1):0] araddr,
    output  wire                     rvalid,
    output  wire [(pDATA_WIDTH-1):0] rdata,    
    input   wire                     ss_tvalid, 
    input   wire [(pDATA_WIDTH-1):0] ss_tdata, 
    input   wire                     ss_tlast, 
    output  wire                     ss_tready, 
    input   wire                     sm_tready, 
    output  wire                     sm_tvalid, 
    output  wire [(pDATA_WIDTH-1):0] sm_tdata, 
    output  wire                     sm_tlast, 
    
    // bram for tap RAM
    output  wire [3:0]               tap_WE,
    output  wire                     tap_EN,
    output  wire [(pDATA_WIDTH-1):0] tap_Di,
    output  wire [(pADDR_WIDTH-1):0] tap_A,
    input   wire [(pDATA_WIDTH-1):0] tap_Do,

    // bram for data RAM
    output  wire [3:0]               data_WE,
    output  wire                     data_EN,
    output  wire [(pDATA_WIDTH-1):0] data_Di,
    output  wire [(pADDR_WIDTH-1):0] data_A,
    input   wire [(pDATA_WIDTH-1):0] data_Do,

    input   wire                     axis_clk,
    input   wire                     axis_rst_n,
    
    output                           k_wire,
    output                           x_cnt_wire,
    output                           h_wire,
    output                           x_wire,
    output                           m_tmp_wire,
    output                           ss_idle_wire,
    output                           ap_idle_wire
);

    wire ss_idle_wire;
    wire ap_idle_wire;

    
    assign ss_idle_wire = ss_idle;
    assign ap_idle_wire = ap_idle;
    
    
    //--------------------------------------------------------------------
    // Data and Coeff Length
    //--------------------------------------------------------------------
    
    reg [31:0] data_len;
    always @(posedge axis_clk or negedge axis_rst_n ) begin
        if (~axis_rst_n) begin
            data_len <= 0;
        end else begin
            data_len <= (awaddr == 12'h10) ? wdata : data_len;
        end
    end
    
    reg [31:0] coeff_len;
    always @(posedge axis_clk or negedge axis_rst_n ) begin
        if (~axis_rst_n) begin
            coeff_len <= 0;
        end else begin
            coeff_len <= (awaddr == 12'h14) ? wdata: coeff_len;
        end
    end
    //--------------------------------------------------------------------
    // Axi Lite Interface for Tap RAM
    //--------------------------------------------------------------------
    
    assign tap_EN = (ap_idle) ? (awaddr[11:8] == 4'd0 && awaddr[7] == 1'b1) || (tap_AR[11:8] == 4'd0 && tap_AR[7] == 1'b1)
                          : (k > 33) || (k == 0) ? 0 : 1;    
    assign tap_WE = (awvalid && wvalid ==  1'b1 && (awaddr[11:8] == 4'd0 && awaddr[7] == 1'b1)) ? 4'b1111 : 4'b0000;
    assign tap_A  = (wvalid && wready) ? awaddr[6:0] : tap_AR[6:0];
    assign tap_Di = wdata;
    
    assign rdata = (araddr == 0) ? ap_control : tap_Do;
    
    
    reg [5:0] number_of_tap_data;
    always @(posedge axis_clk or negedge axis_rst_n ) begin
        if (~axis_rst_n) begin
            number_of_tap_data <= 0;
        end else begin
            number_of_tap_data <= (number_of_tap_data == 31) ? 31: (wready && wvalid && awaddr[11:8] == 6'd0 && awaddr[7] == 1'b1)
             ? number_of_tap_data + 1 : number_of_tap_data;
        end
    end
    
    reg awready_reg;
    assign  awready = awready_reg ;
    always @(posedge axis_clk or negedge axis_rst_n ) begin
        if (~axis_rst_n) begin
            awready_reg <= 0;
        end else begin
            awready_reg <= (awready && awvalid) ? 0 : (number_of_tap_data < 6'd32) ? 1 : 0;
        end
    end
    
    reg arready_reg;
    assign  arready = arready_reg ;
    always @(posedge axis_clk or negedge axis_rst_n ) begin
        if (~axis_rst_n) begin
            arready_reg <= 0;
        end else begin
            arready_reg <= (arready && arvalid) ? 0 : (number_of_tap_data > 0 && arvalid && ap_idle) ? 1 : 0;
        end
    end
    
    reg wready_reg;
    assign wready = wready_reg ;
    always @(posedge axis_clk or negedge axis_rst_n ) begin
        if (~axis_rst_n) begin
            wready_reg <= 0;
        end else begin
            wready_reg <= (wready && wvalid) ? 0 : (number_of_tap_data < 6'd32) ? 1 : 0;
        end
    end
    
    reg rvalid_reg;
    assign  rvalid = rvalid_reg;
    always @(posedge axis_clk or negedge axis_rst_n ) begin
        if (~axis_rst_n) begin
            rvalid_reg <= 0;
        end else begin
            rvalid_reg <= (rready && rvalid) ? 0 : (number_of_tap_data > 0 && rready && ap_idle) ? 1 : 0;
        end
    end
    
    //--------------------------------------------------------------------
    // ALL FSM
    //--------------------------------------------------------------------
    
    ////////////////////////
    // implementation reg //
    ////////////////////////
    
    reg [1:0]   ap_state;
    reg [1:0]   ap_state_next;
    
    reg [2:0]   ap_control;
    reg [2:0]   ap_control_next;
    
    wire        ap_start;
    wire        ap_done;
    wire        ap_idle;
    assign      ap_start = ap_control[0];
    assign      ap_done  = ap_control[1];
    assign      ap_idle  = ap_control[2];
    ////////////////////////
    // fsm for ap_control //
    ////////////////////////
    
    parameter [1:0] APINIT = 2'b00;
    parameter [1:0] APIDLE = 2'b01;
    parameter [1:0] APDONE = 2'b10;
    
    always @* begin
        case (ap_state)
            APINIT: begin
                if (wdata[0] == 1 && awaddr == 0) begin
                    ap_state_next      = APIDLE;
                    ap_control_next = 3'b001;
                end else begin
                    ap_state_next      = APINIT;
                    ap_control_next = 3'b100;
                end
            end
            APIDLE: begin
                if (sm_tlast) begin 
                    ap_state_next      = APDONE;
                    ap_control_next = 3'b010;
                end else begin
                    ap_state_next      = APIDLE;
                    ap_control_next = 3'b000;
                end
            end
            APDONE: begin
                if (araddr == 0 && rdata == 32'h0000_0002 && rready && rvalid) begin
                    ap_state_next       = APINIT;
                    ap_control_next = 3'b100;
                end else begin
                    ap_state_next = APDONE;
                    ap_control_next = 3'b110;
                end
            end
            default: begin
                ap_state_next      = APINIT;
                ap_control_next = 3'b100;
            end
        endcase
    end

    always @ (posedge axis_clk  or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            ap_state        <= 0;
            ap_control      <= 3'b100;
        end else begin
            ap_state        <= ap_state_next;
            ap_control      <= ap_control_next;
        end
    end
    
    /////////////////////
    // fsm for ss_idle //
    /////////////////////
    
    reg ss_state;
    reg ss_state_next;
    
    reg ss_idle;
    
    parameter SSIDLE = 1'b0;
    parameter SSDONE = 1'b1;
    
    always @* begin
        case (ss_state)
            SSDONE: begin
                if (ss_tvalid) begin
                    ss_idle         = 1;
                    ss_state_next   = SSIDLE;
                end else begin
                    ss_idle         = 0;
                    ss_state_next   = SSDONE;
                end
            end
            SSIDLE: begin
                if (ss_tlast) begin
                    ss_idle         = 1;
                    ss_state_next   = SSDONE;
                end else begin
                    ss_idle         = 1;
                    ss_state_next   = SSIDLE;
                end
            end
            default: begin
                ss_idle             = 0;
                ss_state_next       = SSDONE;
            end
        endcase 
    end
    
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            ss_state <= SSDONE;
        end else begin
            ss_state <= ss_state_next;
        end
    end
    
    ////////////////
    // fsm for SM // 
    ////////////////
    
    reg sm_state;
    reg sm_state_next;
    reg sm_tlast_reg;
    reg sm_tlast_reg_next;
    assign sm_tlast = sm_tlast_reg;
    assign final_Y = data_output_length == data_len ;
    
    parameter SMIDLE = 0;
    parameter SMDONE = 1;
    
    always @* begin
        case (sm_state)
            SMDONE: begin
                if (sm_tvalid) begin
                    sm_tlast_reg_next       = 0;
                    sm_state_next           = SMIDLE;
                end else begin
                    sm_tlast_reg_next       = 0;
                    sm_state_next           = SMDONE;
                end
            end
            SMIDLE: begin
                if (final_Y) begin
                    sm_tlast_reg_next       = 1;
                    sm_state_next           = SMDONE;
                end else begin
                    sm_tlast_reg_next       = 0;
                    sm_state_next           = SMIDLE;
                end
            end
            default: begin
                    sm_tlast_reg_next       = 0;
                    sm_state_next           = SMDONE;
            end
        endcase 
    end
    
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            sm_state            <= SMDONE;
            sm_tlast_reg        <= 0;
        end else begin
            sm_state            <= sm_state_next;
            sm_tlast_reg        <= sm_tlast_reg_next;
        end
    end     
    
    //--------------------------------------------------------------------
    // axi_stream for Data RAM
    //--------------------------------------------------------------------
    
    reg [11:0]   init_addr;
    
    assign data_EN       = data_en_reg;
    assign data_WE       = ap_idle ? (init_addr  < 12'h80) ? 4'b1111 : 4'b0000
                            : (ss_tvalid && ss_idle && k == 0) ? 4'b1111 : 0;
    assign data_A        = ap_idle && (init_addr  < 12'h80) ? init_addr : data_A_tmp;
    assign data_Di       = ap_idle ? 0 : ss_tdata;
    assign data_read_reg = data_Do;
    
    reg    ss_tready_reg;
    assign ss_tready     = ss_tready_reg ;
    
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            ss_tready_reg <= 0;
        end else begin
            ss_tready_reg <= (ap_idle) ? 0 : ((ap_idle == 0 && k == 0) ? 1 : 0);
        end
    end
    
    reg data_en_reg;
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            data_en_reg <= 0;
        end else begin
            data_en_reg <= (ss_tvalid && ss_tready) ? 0 : 1;
        end
    end   
    
    //--------------------------------------------------------------------
    // address generator for data_ram and pointer control
    //--------------------------------------------------------------------  
    
    assign k_wire = k;
    assign x_cnt_wire = x_cnt;
    
    reg [5:0] k;
    wire [5:0] k_wire; 
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            k <= 0;
        end else begin
            k <=  (ap_idle == 0) ? ((k == 35) ? 0 : k + 1) : 0;
        end
    end
    
    wire [11:0] tap_AR;
    assign tap_AR = (ap_idle == 0) ? (k != 0) ? 12'h80 + 4*(k - 1) : 0 : araddr ;
    
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            init_addr <= 0;
        end else begin
            init_addr <= (ap_idle && init_addr < 12'h80) ? init_addr + 4 : init_addr;
        end
    end
    
    reg [31:0] x_cnt;
    wire [31:0] x_cnt_wire;
    
    
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            x_cnt <= 0;
        end else begin
            x_cnt <= (ap_idle==0) && (k == 32) ? ((x_cnt == 31)? 0 : x_cnt + 1) : x_cnt ;
        end
    end

    wire [11:0] data_A_tmp;
    assign data_A_tmp = (k > 33) ? 0 : (k != 0) ? ( (k - 1 <= x_cnt) ? 4*(x_cnt + 1 - k) : 4*(32 + x_cnt + 1 - k) ) 
                                    : 4*x_cnt;
    
    //--------------------------------------------------------------------
    // convolution calculation
    //--------------------------------------------------------------------  
    
    reg [31:0] h_reg;
    reg [31:0] x_reg;
    
    wire [31:0] h_wire;
    wire [31:0] x_wire;
    
    assign h_wire = h_reg;
    assign x_wire = x_reg;
    assign m_tmp_wire = m_tmp_reg;
    
    wire [31:0] m_tmp_wire;
    
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            h_reg   <= 0;
            x_reg   <= 0;
        end else begin
            h_reg   <= (ap_idle == 0) ? (k > 33) ? 0 : tap_Do  : 0;
            x_reg   <= (ap_idle == 0) ? (k > 33) ? 0 : data_Do : 0;
        end
    end
    
    reg [31:0] m_tmp_reg;
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            m_tmp_reg   <= 0;
        end else begin
            m_tmp_reg   <= ss_idle  ? h_reg * x_reg : 0;
        end
    end
    
    reg [31:0] y_tmp_reg;
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            y_tmp_reg   <= 0;
        end else begin
            y_tmp_reg   <= (k == 0) ? m_tmp_reg : ss_idle ? m_tmp_reg + y_tmp_reg : 0;
        end
    end
    
    reg sm_tvalid_reg;
    assign sm_tvalid = sm_tvalid_reg ;
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            sm_tvalid_reg   <= 0;
        end else begin
            sm_tvalid_reg   <= ap_idle == 0 && (k == 35) ? 1 : 0;
        end
    end
    
    assign sm_tdata = y_tmp_reg;
    
    reg [31:0] data_input_length;
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            data_input_length   <= 0;
        end else begin
            data_input_length   <= (ss_tvalid && ss_tready) ? data_input_length + 1 : data_input_length;
        end
    end
    
    reg [31:0] data_output_length;
    wire [31:0] data_output;
    assign  data_output  = data_output_length ;
    always @ (posedge axis_clk or negedge axis_rst_n) begin    
        if (~axis_rst_n) begin
            data_output_length   <= 0;
        end else begin
            data_output_length   <= (sm_tvalid && sm_tready) ? data_output_length + 1 : data_output_length;
        end
    end
endmodule