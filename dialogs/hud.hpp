class RscTitles
{
    class SATGv2Hud
    {
        idd = 1000000;
        duration     =  1e10;
		onLoad = "uiNamespace setVariable ['SATGv2Hud', _this select 0]";
		onUnload = "uiNamespace setVariable ['SATGv2Hud', nil]";
		class controls 
			{
				class structuredText
				{
					access = 0;
					type = 13;
					idc = 1001;
					style = 0x00;
					lineSpacing = 1;
					x = safeZoneX + safeZoneW * 0.5;
					y = safeZoneY + safeZoneH - 0.1;
					w = safeZoneW * 0.5; 
					h = 0.1;
					size = 0.020;
					colorBackground[] = {0,0,0,0};
					colorText[] = {1,1,1,1};
					text = "";
					font = "PuristaSemiBold";
					class Attributes{
						font = "PuristaSemiBold";
						color = "#FFFFFF";
						align = "RIGHT";
						valign = "top";
						shadow = false;
						shadowColor = "#000000";
						underline = false;
						size = "4";
					}; 
				};
				class moneyText
				{
					access = 0;
					type = 13;
					idc = 1002;
					style = 0x00;
					lineSpacing = 1;
					x = safeZoneX + safeZoneW * 0.7;
					y = safeZoneY + safeZoneH - 0.24;
					w = safeZoneW * 0.3; 
					h = 0.1;
					size = 0.020;
					colorBackground[] = {0,0,0,0};
					colorText[] = {1,1,1,1};
					text = "";
					font = "PuristaSemiBold";
					class Attributes{
						font = "PuristaSemiBold";
						color = "#3a7c00";
						align = "RIGHT";
						valign = "top";
						shadow = false;
						shadowColor = "#000000";
						underline = false;
						size = "4";
					}; 
				};
				class versionText
				{
					access = 0;
					type = 13;
					idc = 1003;
					style = 0x00;
					lineSpacing = 1;
					x = safeZoneX;
					y = safeZoneY;
					w = safeZoneW * 0.5; 
					h = 0.1;
					size = 0.020;
					colorBackground[] = {0,0,0,0};
					colorText[] = {1,1,1,1};
					text = "SATGv2";
					font = "PuristaSemiBold";
					class Attributes{
						font = "PuristaSemiBold";
						color = "#FFFFFF";
						align = "LEFT";
						valign = "top";
						shadow = false;
						shadowColor = "#000000";
						underline = false;
						size = "4";
					}; 
				};
				class xpText
				{
					access = 0;
					type = 13;
					idc = 1004;
					style = 0x00;
					lineSpacing = 1;
					x = safeZoneX + safeZoneW * 0.7;
					y = safeZoneY + safeZoneH - 0.18;
					w = safeZoneW * 0.3; 
					h = 0.1;
					size = 0.020;
					colorBackground[] = {0,0,0,0};
					colorText[] = {1,1,1,1};
					text = "";
					font = "PuristaSemiBold";
					class Attributes{
						font = "PuristaSemiBold";
						color = "#FFFFFF";
						align = "RIGHT";
						valign = "top";
						shadow = false;
						shadowColor = "#000000";
						underline = false;
						size = "4";
					}; 
				};
		};
	};
};