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
    input   wire                     axis_rst_n
);

    //--------------------------------------------------------------------
    // Axi Lite Interface for Tap RAM
    //--------------------------------------------------------------------
    
    reg [11:0]  awaddr_buffer;
    reg         awaddr_buffer_is_full;
    reg         awready_reg;
    assign      awready = awready_reg;
    reg         wready_reg;
    assign      wready = wready_reg;
    reg         arready_reg;
    assign      arready = arready_reg;
    reg [11:0]  araddr_buffer;
    reg         araddr_buffer_is_full;
    reg [11:0]  rvalid_reg;
    assign      rvalid = rvalid_reg;
    
    reg [31:0]  y_buffer;
    reg         y_buffer_is_full;
    reg [31:0] data_buffer;
    reg        data_buffer_is_full;
    reg [31:0] RAM_0x10;
    reg [5:0] RAM_0x14;
    reg [5:0] tap_input_len;
    
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
    
    parameter [1:0] APINIT = 2'b00;
    parameter [1:0] APIDLE = 2'b01;
    parameter [1:0] APDONE = 2'b10;
    
    reg ss_state;
    reg ss_state_next;
    
    reg ss_idle;
    
    parameter SSIDLE = 1'b0;
    parameter SSDONE = 1'b1;

    reg [2:0] poll_cnt;
    
    reg sm_state;
    reg sm_state_next;
    reg sm_tlast_reg;
    reg sm_tlast_reg_next;

    
    parameter SMIDLE = 0;
    parameter SMDONE = 1;

    reg [11:0]   init_addr;
    
    reg    ss_tready_reg;
    assign ss_tready     = ss_tready_reg ;
    
    reg [5:0] k;
    reg [5:0] k_next;
    
    wire [11:0] tap_AR;

    
    reg refresh_done_f;
    
    reg [31:0] x_cnt;
    
    wire [11:0] data_A_tmp;
    
    reg [31:0] h_reg;
    reg [31:0] x_reg;
    
    reg [31:0] m_tmp_reg;
    reg [31:0] y_tmp_reg;
    reg sm_tvalid_reg;
    reg [31:0] data_input_length;
    
    reg [31:0] data_output_length;
    wire [31:0] data_output;

    assign sm_tlast = sm_tlast_reg;
    assign final_Y = data_output_length == RAM_0x10;

    assign tap_EN = (ap_idle) ? (awaddr_buffer[11:8] == 4'd0 && awaddr_buffer[7] == 1'b1) || (tap_AR[11:8] == 4'd0 && tap_AR[7] == 1'b1)
                          :1;    
    assign tap_WE = (ap_idle && wready && wvalid && (awaddr_buffer[11:8] == 4'd0 && awaddr_buffer[7] == 1'b1)) ? 4'b1111 : 4'b0000;
    assign tap_A  = (wready && wvalid && ap_idle) ? awaddr_buffer[6:0] : tap_AR[6:0];
    assign tap_Di = wdata;
    
    assign rdata = (araddr_buffer == 12'h10) ? RAM_0x10 :
                   (araddr_buffer == 12'h14) ? RAM_0x14 :
                   (araddr_buffer == 12'h00) ? ap_control:
                                               tap_Do;

    assign tap_AR = (ap_idle == 0) ? (12'h80 + 4*(k)): araddr_buffer;
    assign data_A_tmp = (k != 0) ? ( (k <= x_cnt) ? 4*(x_cnt - k) : 4*(RAM_0x14 + x_cnt - k) ) 
                                    : 4*x_cnt ;
    assign data_WE       = ap_idle ? (~refresh_done_f) ? 4'b1111 : 4'b0000
                            : (k == 0) ? 4'b1111 : 0;
    assign data_EN      = 1'b1;
    assign data_A        = ap_idle ? init_addr : data_A_tmp;
    assign data_Di       = ap_idle ? 0 : data_buffer;
    
    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            awaddr_buffer           <= 0;
            awaddr_buffer_is_full   <= 0;
        end else begin
            awaddr_buffer           <= (awready && awvalid && ~awaddr_buffer_is_full) ? awaddr : awaddr_buffer;
            if      (awaddr_buffer_is_full == 0 && awready && awvalid) awaddr_buffer_is_full <= 1;
            else if (awaddr_buffer_is_full == 0)                       awaddr_buffer_is_full <= 0;
            else if (awaddr_buffer_is_full == 1 && wready && wvalid  ) awaddr_buffer_is_full <= 0;
            else if (awaddr_buffer_is_full == 1)                       awaddr_buffer_is_full <= 1;
            else                                                       awaddr_buffer_is_full <= awaddr_buffer_is_full;
        end
    end
    

    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            awready_reg <= 0;
        end else begin
            awready_reg <= (awvalid && awready) ? 0 : (ap_idle) ? ~awaddr_buffer_is_full : 0;
        end
    end
    
    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            wready_reg  <= 0;
        end else begin
            wready_reg  <= (wready && wvalid) ? 0 : (ap_idle) ? awaddr_buffer_is_full : 0;
        end
    end
    
    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            arready_reg <= 0;
        end else begin
            arready_reg <= (arvalid && arready) ? 0 : (ap_idle) ? ~araddr_buffer_is_full : 0;
        end
    end
   
    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            araddr_buffer           <= 0;
            araddr_buffer_is_full   <= 0;
        end else begin
            araddr_buffer           <= (arready && arvalid && ~araddr_buffer_is_full) ? araddr : araddr_buffer;
            if      (araddr_buffer_is_full == 0 && arready && arvalid) araddr_buffer_is_full <= 1;
            else if (araddr_buffer_is_full == 0)                       araddr_buffer_is_full <= 0;
            else if (araddr_buffer_is_full == 1 && rready && rvalid  ) araddr_buffer_is_full <= 0;
            else if (araddr_buffer_is_full == 1)                       araddr_buffer_is_full <= 1;
            else                                                       araddr_buffer_is_full <= araddr_buffer_is_full;
        end
    end
    
    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            rvalid_reg  <= 0;
        end else begin
            rvalid_reg  <= (rready && rvalid) ? 0 : (ap_idle) ? araddr_buffer_is_full : 0;
        end
    end
    
    //--------------------------------------------------------------------
    // Register for data_len
    //--------------------------------------------------------------------

    
    //data length

    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            RAM_0x10  <= 0;
        end else begin
            RAM_0x10  <= (awaddr_buffer == 12'h10 && wready && wvalid) ? wdata : RAM_0x10;
        end
    end
    
    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            RAM_0x14  <= 0;
        end else begin
            RAM_0x14  <= (awaddr_buffer == 12'h14 && wready && wvalid) ? wdata : RAM_0x14;
        end
    end
    
    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            tap_input_len  <= 0;
        end else begin
            tap_input_len  <= (~ ap_idle) ? 0 :
                              (tap_input_len == 31) ? 31 : 
                              (wready && wvalid && awaddr_buffer[11:8] == 0 && awaddr_buffer[7] == 1) ? tap_input_len + 1 : tap_input_len;
        end
    end
    
    //--------------------------------------------------------------------
    // ALL FSM
    //--------------------------------------------------------------------
    
    always @* begin
        case (ap_state)
            APINIT: begin
                if (wdata[0] == 1 && awaddr_buffer == 0) begin
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
                    ap_control_next = 3'b110;
                end else begin
                    ap_state_next      = APIDLE;
                    ap_control_next     = 3'b000;
                end
            end
            APDONE: begin     
                if (refresh_done_f && poll_cnt != 0) begin
                    ap_state_next      = APDONE;
                    ap_control_next    = 3'b110;
                end else if (refresh_done_f && poll_cnt == 0) begin
                    ap_state_next      = APINIT; 
                    ap_control_next    = 3'b100;
                end else begin
                    ap_state_next      = APDONE; 
                    ap_control_next    = 3'b100;
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
            poll_cnt        <= 5;
        end else begin
            poll_cnt        <= ap_start ? 5 : refresh_done_f ? poll_cnt - 1 : 5;
        end
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
    
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            ss_tready_reg <= 0;
        end else begin
            ss_tready_reg <= (ss_tready && ss_tvalid) ? 0 : (~refresh_done_f) ? 0 : ((~data_buffer_is_full && data_input_length != RAM_0x10 ) ? 1 : 0);
        end
    end

    //--------------------------------------------------------------------
    // address generator for data_ram and pointer control
    //--------------------------------------------------------------------  
    
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            k <= 0;
        end else begin
            if (k == 0)                     k <= (ap_idle) ? 0 : (data_output_length == RAM_0x10 - 1) ? k + 1 : (data_buffer_is_full) ? k + 1 : k;
            else if (k == RAM_0x14 - 1)     k <= (ap_idle) ? 0 : (y_buffer_is_full) ? k : 0 ;
            else                            k <= (ap_idle) ? 0 : (k == RAM_0x14 - 1) ? 0 : k + 1;

            //k <= (ap_idle) ? 0 :(k == RAM_0x14 - 1 && y_buffer_is_full) ? k : (k == RAM_0x14 - 1) ? 0 : k + 1;
        end
    end


    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            init_addr           <= 0;
            refresh_done_f      <= 0;
        end else begin
            init_addr           <= (sm_tlast) ? 0 : (ap_idle) ? ((init_addr < 12'h7C) ? init_addr + 4 : init_addr) : init_addr;
            refresh_done_f      <= sm_tlast  ? 0 : init_addr == 12'h7C;
        end
    end
    
    reg block_first_data;
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            x_cnt <= 0;
            block_first_data <= 1;
        end else begin
            x_cnt <= ap_done ? 0 : (ap_idle==0) && (k == RAM_0x14 - 1) ? (y_buffer_is_full) ? x_cnt : ((x_cnt == RAM_0x14 - 1)? 0 : x_cnt + 1) : x_cnt ;
            block_first_data <= ap_done ? 1 : k == 3 ? 0 : block_first_data;
        end
    end
    
    //--------------------------------------------------------------------
    // convolution calculation
    //--------------------------------------------------------------------  
    

    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            h_reg   <= 0;
            x_reg   <= 0;
        end else begin
            h_reg   <= (ap_idle == 0) ? tap_Do  : 0;
            x_reg   <= (ap_idle == 0) ? data_Do : 0;
        end
    end
    
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            m_tmp_reg   <= 0;
        end else begin
            m_tmp_reg   <= ap_idle == 0  ? h_reg * x_reg : 0;
        end
    end

    reg [5:0] y_counter;
    reg [5:0] step_counter;
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            y_tmp_reg    <= 0;
            y_counter    <= 0;
            step_counter <= 0;
        end else begin
            y_tmp_reg    <= (k == 3) ? m_tmp_reg : ap_idle == 0 ? (y_counter == 4) ? y_tmp_reg :  m_tmp_reg + y_tmp_reg : 0;
            step_counter <= (k == 3) ? 0 : ap_idle == 0 ? (y_counter == 4) ? step_counter : (step_counter == RAM_0x14 - 1) ? 0 : step_counter + 1 : 0;
            y_counter    <= (ap_idle) ? 0 : (k == RAM_0x14 - 1 || k == 0) ? (y_counter < 4) ? y_counter + 1 : y_counter : (k == 3) ? 0 : y_counter;
        end
    end
    
    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            y_buffer           <= 0;
            y_buffer_is_full   <= 0;
        end else begin
            y_buffer           <= (~y_buffer_is_full && (k == 3 ) && ~block_first_data) ? y_tmp_reg : y_buffer;
            if (ap_idle)                                                        y_buffer_is_full <= 0;
            else if (y_buffer_is_full == 0 && k == 3 && ~ block_first_data)     y_buffer_is_full <= 1;
            else if (y_buffer_is_full == 0   )                                  y_buffer_is_full <= 0;
            else if (y_buffer_is_full == 1 && sm_tvalid && sm_tready )          y_buffer_is_full <= 0;
            else if (y_buffer_is_full == 1)                                     y_buffer_is_full <= 1;
            else                                                                y_buffer_is_full <= y_buffer_is_full;
        end
    end

    always @(posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            data_buffer           <= 0;
            data_buffer_is_full   <= 0;
        end else begin
            data_buffer           <= (~data_buffer_is_full && refresh_done_f && ss_tvalid && ss_tready) ?    ss_tdata : data_buffer;
            if      (data_buffer_is_full == 0 && ss_tready && ss_tvalid)            data_buffer_is_full <= 1;
            else if (data_buffer_is_full == 0)                                      data_buffer_is_full <= 0;
            else if (data_buffer_is_full == 1 && refresh_done_f && data_WE == 4'hf) data_buffer_is_full <= 0;
            else if (data_buffer_is_full == 1)                                      data_buffer_is_full <= 1;
            else                                                                    data_buffer_is_full <= data_buffer_is_full;
        end
    end

    assign sm_tvalid = sm_tvalid_reg ;
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            sm_tvalid_reg   <= 0;
        end else begin
            sm_tvalid_reg   <= ap_idle || sm_tvalid && sm_tready ? 0 : y_buffer_is_full;
        end
    end
    
    assign sm_tdata = (data_output_length == RAM_0x10) ? 0 : y_buffer;
    
    always @ (posedge axis_clk or negedge axis_rst_n) begin
        if (~axis_rst_n) begin
            data_input_length   <= 0;
        end else begin
            data_input_length   <= ap_done ? 0 :(ss_tvalid && ss_tready) ? data_input_length + 1 : data_input_length;
        end
    end

    always @ (posedge axis_clk or negedge axis_rst_n) begin    
        if (~axis_rst_n) begin
            data_output_length   <= 0;
        end else begin
            data_output_length   <= ap_done  ? 0 :(sm_tvalid && sm_tready) ? data_output_length + 1 : data_output_length;
        end
    end
endmodule
