/* #Mokyva
$[
	1.063,
	["shopUnified",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[2200,"",[2,"",["1 * GUI_GRID_W + GUI_GRID_X","1 * GUI_GRID_H + GUI_GRID_Y","38 * GUI_GRID_W","23 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1500,"",[2,"",["2 * GUI_GRID_W + GUI_GRID_X","2 * GUI_GRID_H + GUI_GRID_Y","10.5 * GUI_GRID_W","21 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1200,"",[2,"#(argb,8,8,3)color(1,1,1,1)",["19 * GUI_GRID_W + GUI_GRID_X","4.5 * GUI_GRID_H + GUI_GRID_Y","12 * GUI_GRID_W","7.5 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[2,"BUY",["13 * GUI_GRID_W + GUI_GRID_X","21 * GUI_GRID_H + GUI_GRID_Y","7.5 * GUI_GRID_W","2 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1601,"",[2,"CLOSE",["30.5 * GUI_GRID_W + GUI_GRID_X","21 * GUI_GRID_H + GUI_GRID_Y","7.5 * GUI_GRID_W","2 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1100,"",[2,"",["12.5 * GUI_GRID_W + GUI_GRID_X","12 * GUI_GRID_H + GUI_GRID_Y","25.5 * GUI_GRID_W","6 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1101,"",[2,"CAPTION",["12.5 * GUI_GRID_W + GUI_GRID_X","2 * GUI_GRID_H + GUI_GRID_Y","25.5 * GUI_GRID_W","2 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1602,"",[2,"AMMO",["21.5 * GUI_GRID_W + GUI_GRID_X","21 * GUI_GRID_H + GUI_GRID_Y","8 * GUI_GRID_W","2 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/


// onLBSelChanged = "(lbCurSel 1500) call SHOP_loadItem";

class shopUnified
{
    idd = 1400;
    movingEnable = true;
	onLoad = "uiNameSpace setVariable ['shopUnified', _this select 0]; [] spawn SHOP_Init;";
    class Controls
    {
		
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by HoS, v1.063, #Kiqedi)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 1 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 38 * GUI_GRID_W;
			h = 23 * GUI_GRID_H;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 10.5 * GUI_GRID_W;
			h = 21 * GUI_GRID_H;
			onLBSelChanged = "(lbCurSel 1500) call SHOP_loadItem";
		};
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 19 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "BUY"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			action = "1 call SHOP_buyItem";
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "CLOSE"; //--- ToDo: Localize;
			x = 30.5 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			action = "closeDialog 0";
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 25.5 * GUI_GRID_W;
			h = 6 * GUI_GRID_H;
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;
			text = "CAPTION"; //--- ToDo: Localize;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 25.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "AMMO"; //--- ToDo: Localize;
			x = 21.5 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			action = "2 call SHOP_buyItem";
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

    };
};