/////////////////////////////////////////////////////////////////////////////////////
//  Packets from the Camera
////////////////////////////////////////////////////////////////////////////////////
localparam
  P_DET_RX_SDP_0 = 12'h969,
  P_DET_RX_SDP_1 = 12'h8F3,
  P_DET_RX_SDP_2 = 12'hA9A,
  P_DET_RX_SDP_3 = 12'hC7D; 

localparam
  P_DET_RX_NOP = 12'h000,
  P_DET_RX_ROW = 12'h001;

/////////////////////////////////////////////////////////////////////////////////////
//  Commands
////////////////////////////////////////////////////////////////////////////////////
// These are for commanding
localparam C_IDLE = 8'h00; // useful for parsing
localparam C_NOP  = 8'h01; 
localparam C_GET  = 8'h02;
localparam C_SET  = 8'h03;
// These are for data streaming
localparam C_EVT  = 8'h04;
localparam C_EVT2 = 8'h05; 

/////////////////////////////////////////////////////////////////////////////////////
//  Parameters
////////////////////////////////////////////////////////////////////////////////////
localparam C_VNUM           = 8'h01;  // version number,                  valid: GET
localparam C_EL_RUN         = 8'h02;  // Event Loader run                 valid: SET
localparam C_EL_TP          = 8'h03;  // Event Loader test patter         valid: SET
localparam C_DE_NOP         = 8'h04;  // Send a detector NOP              valid: SET
localparam C_NSP            = 8'h05;  // Send number of serial prescans   valid: SET
localparam C_NOC            = 8'h06;  // Send number of overclocks        valid: SET
localparam C_X_LOC_MAX      = 8'h07;  // Send maximum x location          valid: SET
localparam C_Y_LOC_MAX      = 8'h08;  // Send maximum y location          valid: SET
localparam C_EL_RUN_2       = 8'h09;  // Event Loader run 2               valid: SET 

/////////////////////////////////////////////////////////////////////////////////////
//  Parameters
////////////////////////////////////////////////////////////////////////////////////
localparam P_CLK_FREQ_HZ = 100000000;
localparam P_WD_TIMEOUT_NS = 2000000000;
localparam P_WD_KICK_NS = 2000;

