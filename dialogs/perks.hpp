/* #Bymuqi
$[
	1.063,
	["Perks",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[2200,"",[1,"",["0.222865 * safezoneW + safezoneX","0.164 * safezoneH + safezoneY","0.55427 * safezoneW","0.42 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1800,"",[1,"",["0.222865 * safezoneW + safezoneX","0.164 * safezoneH + safezoneY","0.55427 * safezoneW","0.42 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[1,"ONE MAN ARMY",["0.317674 * safezoneW + safezoneX","0.192 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1601,"",[1,"PROB HEAL",["0.237451 * safezoneW + safezoneX","0.262 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1100,"",[1,"",["0.222865 * safezoneW + safezoneX","0.514 * safezoneH + safezoneY","0.55427 * safezoneW","0.07 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1602,"",[1,"PROB HEAL",["0.237451 * safezoneW + safezoneX","0.332 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1603,"",[1,"PROB HEAL",["0.237451 * safezoneW + safezoneX","0.402 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1604,"",[1,"PROB HEAL",["0.397898 * safezoneW + safezoneX","0.262 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1605,"",[1,"PROB HEAL",["0.397898 * safezoneW + safezoneX","0.332 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1606,"",[1,"PROB HEAL",["0.397898 * safezoneW + safezoneX","0.402 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1607,"",[1,"PROB HEAL",["0.587516 * safezoneW + safezoneX","0.192 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1608,"",[1,"PROB HEAL",["0.507293 * safezoneW + safezoneX","0.262 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1609,"",[1,"PROB HEAL",["0.507293 * safezoneW + safezoneX","0.332 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1610,"",[1,"PROB HEAL",["0.507293 * safezoneW + safezoneX","0.402 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1611,"",[1,"PROB HEAL",["0.675032 * safezoneW + safezoneX","0.262 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1612,"",[1,"PROB HEAL",["0.675032 * safezoneW + safezoneX","0.332 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1613,"",[1,"PROB HEAL",["0.675032 * safezoneW + safezoneX","0.402 * safezoneH + safezoneY","0.0948093 * safezoneW","0.056 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

class SATGv2Perks
{
    idd = 1700;
    movingEnable = true;
	onLoad = "uiNameSpace setVariable ['dialogPerks', _this select 0]; 0 spawn SATGv2_Perks_fnc_show";
    class Controls
    {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by HoS, v1.063, #Bymuqi)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 0.222865 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.55427 * safezoneW;
			h = 0.42 * safezoneH;
		};
		class RscFrame_1800: RscFrame
		{
			idc = 1800;
			x = 0.222865 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.55427 * safezoneW;
			h = 0.42 * safezoneH;
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			x = 0.222865 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.55427 * safezoneW;
			h = 0.07 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "ONE MAN ARMY"; //--- ToDo: Localize;
			x = 0.317674 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.237451 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.237451 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.237451 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.397898 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.397898 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.397898 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1607: RscButton
		{
			idc = 1607;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.587516 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1608: RscButton
		{
			idc = 1608;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.507293 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1609: RscButton
		{
			idc = 1609;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.507293 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1610: RscButton
		{
			idc = 1610;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.507293 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1611: RscButton
		{
			idc = 1611;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.675032 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1612: RscButton
		{
			idc = 1612;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.675032 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		class RscButton_1613: RscButton
		{
			idc = 1613;
			text = "PROB HEAL"; //--- ToDo: Localize;
			x = 0.675032 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0948093 * safezoneW;
			h = 0.056 * safezoneH;
			onButtonDown = "[2, _this] call SATGv2_Perks_fnc_show";
			onMouseEnter = "[1, _this] call SATGv2_Perks_fnc_show";
			sizeEx = 0.03;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
    };
};