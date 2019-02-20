// megafunction wizard: %Shift register (RAM-based)%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTSHIFT_TAPS 

// ============================================================
// File Name: WindowBuffer.v
// Megafunction Name(s):
// 			ALTSHIFT_TAPS
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.0.1 Build 232 06/12/2013 SP 1 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2013 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module WindowBuffer (
	aclr,
	clock,
	shiftin,
	shiftout,
	taps0x,
	taps1x,
	taps2x);

	input	  aclr;
	input	  clock;
	input	[8:0]  shiftin;
	output	[8:0]  shiftout;
	output	[8:0]  taps0x;
	output	[8:0]  taps1x;
	output	[8:0]  taps2x;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1	  aclr;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire [8:0] sub_wire0;
	wire [26:0] sub_wire1;
	wire [8:0] shiftout = sub_wire0[8:0];
	wire [17:9] sub_wire5 = sub_wire1[17:9];
	wire [26:18] sub_wire4 = sub_wire1[26:18];
	wire [26:18] sub_wire3 = sub_wire4[26:18];
	wire [8:0] sub_wire2 = sub_wire1[8:0];
	wire [8:0] taps0x = sub_wire2[8:0];
	wire [8:0] taps2x = sub_wire3[26:18];
	wire [8:0] taps1x = sub_wire5[17:9];

	altshift_taps	ALTSHIFT_TAPS_component (
				.aclr (aclr),
				.clock (clock),
				.shiftin (shiftin),
				.shiftout (sub_wire0),
				.taps (sub_wire1)
				// synopsys translate_off
				,
				.clken ()
				// synopsys translate_on
				);
	defparam
		ALTSHIFT_TAPS_component.intended_device_family = "Cyclone II",
		ALTSHIFT_TAPS_component.lpm_hint = "RAM_BLOCK_TYPE=M4K",
		ALTSHIFT_TAPS_component.lpm_type = "altshift_taps",
		ALTSHIFT_TAPS_component.number_of_taps = 3,
		ALTSHIFT_TAPS_component.tap_distance = 800,
		ALTSHIFT_TAPS_component.width = 9;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "1"
// Retrieval info: PRIVATE: CLKEN NUMERIC "0"
// Retrieval info: PRIVATE: GROUP_TAPS NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: PRIVATE: NUMBER_OF_TAPS NUMERIC "3"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: TAP_DISTANCE NUMERIC "800"
// Retrieval info: PRIVATE: WIDTH NUMERIC "9"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: CONSTANT: LPM_HINT STRING "RAM_BLOCK_TYPE=M4K"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altshift_taps"
// Retrieval info: CONSTANT: NUMBER_OF_TAPS NUMERIC "3"
// Retrieval info: CONSTANT: TAP_DISTANCE NUMERIC "800"
// Retrieval info: CONSTANT: WIDTH NUMERIC "9"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT VCC "aclr"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: shiftin 0 0 9 0 INPUT NODEFVAL "shiftin[8..0]"
// Retrieval info: USED_PORT: shiftout 0 0 9 0 OUTPUT NODEFVAL "shiftout[8..0]"
// Retrieval info: USED_PORT: taps0x 0 0 9 0 OUTPUT NODEFVAL "taps0x[8..0]"
// Retrieval info: USED_PORT: taps1x 0 0 9 0 OUTPUT NODEFVAL "taps1x[8..0]"
// Retrieval info: USED_PORT: taps2x 0 0 9 0 OUTPUT NODEFVAL "taps2x[8..0]"
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @shiftin 0 0 9 0 shiftin 0 0 9 0
// Retrieval info: CONNECT: shiftout 0 0 9 0 @shiftout 0 0 9 0
// Retrieval info: CONNECT: taps0x 0 0 9 0 @taps 0 0 9 0
// Retrieval info: CONNECT: taps1x 0 0 9 0 @taps 0 0 9 9
// Retrieval info: CONNECT: taps2x 0 0 9 0 @taps 0 0 9 18
// Retrieval info: GEN_FILE: TYPE_NORMAL WindowBuffer.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL WindowBuffer.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL WindowBuffer.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL WindowBuffer.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL WindowBuffer_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL WindowBuffer_bb.v TRUE
// Retrieval info: LIB_FILE: altera_mf