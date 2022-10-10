//* * * * * * * * * * * * * * * * * * * * * * * * *//
//
//	Company		:	AO "ZASLON"
//	Engineer	:	Popov Artyom
//	e-mail		:	warlok1996@yandex.ru 
//  Design Name :   TPO_UKS_2
//  Module Name :   TPO_UKS_2
//  File Name   :   TPO_UKS_2.sv
//	Device		:	EP3c40 (Cyclone-III)

//  Function    :   Top module
//  Description :   Решает задачи: 
//                  - pin's                  
//                      
//  Dependencies:   =========

//  $Revision:  v_0.1
//
//  $HeadURL :  $
//
//	$Id      :  $
//	
//* * * * * * * * * * * * * * * * * * * * * * * * *//
module TPO_UKS_2 (
	input	pin_clk_50MHz,
	
	output	pin_enable,
	output	pin_NRESET,
	
		// Connector XS1 "Упр"	
	input	[TPO_UKS_2_heart::MSB_ADDR: LSB_ADDR]	pin_ADDR,			//TTL to TTL 6-13	Com: pin_I_ADDR [7: 4] = pin_ADDR [3: 0]; pin_I_ADDR [3: 0] = pin_ADDR [7: 4];
	input			pin_DATAIN_OSN,		//TTL toLVDS 24-25
	input			pin_DATAIN_REZ,		//TTL toLVDS 30-31
	//input			pin_IZP,			//TTL toLVDS 33-34
	//input			pin_TI,				//TTL toLVDS 36-37
	
	output			pin_DATAOUT_OSN,	//TTL toLVDS 27-28
	output			pin_DATAOUT_REZ,	//TTL toLVDS 3-4
	
		// Connector XP16-XP1 "M16"-"M1"
	input	[TPO_UKS_2_heart::MSB_DATA: LSB_DATA]	pin_DIN_REZ,		//TTL to LVDS 3-4

	output	[TPO_UKS_2_heart::MSB_DATA: LSB_DATA]	pin_DOUT_OSN,		//TTL to LVDS 24-25
	input	[TPO_UKS_2_heart::MSB_DATA: LSB_DATA]	pin_DIN_OSN,		//TTL to LVDS 27-28
	output	[TPO_UKS_2_heart::MSB_DATA: LSB_DATA]	pin_DOUT_REZ,		//TTL to LVDS 30-31
	
	//Tranzit
	//output	[3:	 0]	pin_I_ADDR,			//TTL to TTL 6-9 Tranzit
	//output	[15: 0] pin_IZP,			//LVDS to LVDS 33-34
	//output	[15: 0] pin_TI,				//LVDS to LVDS 36-37

	
		// Point for test
	output	pin_X18, pin_X19, pin_X20, pin_X21, pin_X22, pin_X23, pin_X24, pin_X25,
	output	[TPO_UKS_2_heart::MSB_LED: LSB_LED]	pin_LED
	



);
	//choose channel
	assign pin_DATAOUT_OSN 	= pin_DIN_OSN;
	assign pin_DATAOUT_REZ 	= pin_DIN_REZ;
	

	
	assign pin_DOUT_OSN [NUMBER_OF_POINT_0]		= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_0]		= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_1]		= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_1]		= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_2]		= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_2]		= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_3]		= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_3]		= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_4]		= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_4]		= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_5]		= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_5]		= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_6]		= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_6]		= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_7]		= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_7]		= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_8]		= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_8]		= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_9]		= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_9]		= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_10]	= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_10]	= pin_DATAIN_REZ;	
	assign pin_DOUT_OSN [NUMBER_OF_POINT_11]	= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_11]	= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_12]	= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_12]	= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_13]	= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_13]	= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_14]	= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_14]	= pin_DATAIN_REZ;
	assign pin_DOUT_OSN [NUMBER_OF_POINT_15]	= pin_DATAIN_OSN;
	assign pin_DOUT_REZ	[NUMBER_OF_POINT_15]	= pin_DATAIN_REZ;
	

	import TPO_UKS_2_heart::*;

initial
begin
	pin_enable 	= PARAM_ONE;
	pin_LED		= PARAM_ONE;

end

pll_50_MHz pll (
	.inclk0 	(pin_clk_50MHz),
	.c0 	 	(clk_50_MHz),
	.c1			(clk_1_MHz)
);

	logic [MSB_TIMER: LSB_TIMER] cnt_LED_TIME;

always @(posedge clk_1_MHz)
begin
	if (cnt_LED_TIME == (ONE_CNT_OPER - PARAM_ONE))
		pin_LED [MSB_LED: LSB_LED] <= {pin_LED [0], pin_LED [4: 1]};
	else
		cnt_LED_TIME <= cnt_LED_TIME + ONE_TACT;


end





endmodule