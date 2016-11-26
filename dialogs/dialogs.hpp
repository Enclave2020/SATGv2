class shopVehicle
{
    idd = 1337;
    movingEnable = true;
	onLoad = "uiNameSpace setVariable ['shopVehicle', _this select 0]; call SHOP_vehicleInit;";
    class Controls
    {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by HoS, v1.063, #Naqyqy)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 4.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 31 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "VEHICLE SHOP"; //--- ToDo: Localize;
			x = 17 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0};
		};
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "0 call SHOP_buyVehicle";
		};
		class RscPicture_1201: RscPicture
		{
			idc = 1201;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1202: RscPicture
		{
			idc = 1202;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1203: RscPicture
		{
			idc = 1203;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1204: RscPicture
		{
			idc = 1204;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "1 call SHOP_buyVehicle";
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "2 call SHOP_buyVehicle";
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "3 call SHOP_buyVehicle";
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "4 call SHOP_buyVehicle";
		};
		class RscPicture_1205: RscPicture
		{
			idc = 1205;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1206: RscPicture
		{
			idc = 1206;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1207: RscPicture
		{
			idc = 1207;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1208: RscPicture
		{
			idc = 1208;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1209: RscPicture
		{
			idc = 1209;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1210: RscPicture
		{
			idc = 1210;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1211: RscPicture
		{
			idc = 1211;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1212: RscPicture
		{
			idc = 1212;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1213: RscPicture
		{
			idc = 1213;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1214: RscPicture
		{
			idc = 1214;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1215: RscPicture
		{
			idc = 1215;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1216: RscPicture
		{
			idc = 1216;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1217: RscPicture
		{
			idc = 1217;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1218: RscPicture
		{
			idc = 1218;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1219: RscPicture
		{
			idc = 1219;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "5 call SHOP_buyVehicle";
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "6 call SHOP_buyVehicle";
		};
		class RscButton_1607: RscButton
		{
			idc = 1607;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "7 call SHOP_buyVehicle";
		};
		class RscButton_1608: RscButton
		{
			idc = 1608;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "8 call SHOP_buyVehicle";
		};
		class RscButton_1609: RscButton
		{
			idc = 1609;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "9 call SHOP_buyVehicle";
		};
		class RscButton_1610: RscButton
		{
			idc = 1610;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "10 call SHOP_buyVehicle";
		};
		class RscButton_1611: RscButton
		{
			idc = 1611;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "11 call SHOP_buyVehicle";
		};
		class RscButton_1612: RscButton
		{
			idc = 1612;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "12 call SHOP_buyVehicle";
		};
		class RscButton_1613: RscButton
		{
			idc = 1613;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "13 call SHOP_buyVehicle";
		};
		class RscButton_1614: RscButton
		{
			idc = 1614;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "14 call SHOP_buyVehicle";
		};
		class RscButton_1615: RscButton
		{
			idc = 1615;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "15 call SHOP_buyVehicle";
		};
		class RscButton_1616: RscButton
		{
			idc = 1616;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "16 call SHOP_buyVehicle";
		};
		class RscButton_1617: RscButton
		{
			idc = 1617;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "17 call SHOP_buyVehicle";
		};
		class RscButton_1618: RscButton
		{
			idc = 1618;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "18 call SHOP_buyVehicle";
		};
		class RscButton_1619: RscButton
		{
			idc = 1619;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "19 call SHOP_buyVehicle";
		};
		class RscButton_1620: RscButton
		{
			idc = 1620;
			text = "CLOSE"; //--- ToDo: Localize;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "closeDialog 0";
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

    };
};

class shopSight
{
    idd = 1338;
    movingEnable = true;
	onLoad = "uiNameSpace setVariable ['shopSight', _this select 0]; call SHOP_sightInit;";
    class Controls
    {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by HoS, v1.063, #Naqyqy)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 4.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 31 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "SIGHT SHOP"; //--- ToDo: Localize;
			x = 17 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0};
		};
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "0 call SHOP_buySight";
		};
		class RscPicture_1201: RscPicture
		{
			idc = 1201;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1202: RscPicture
		{
			idc = 1202;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1203: RscPicture
		{
			idc = 1203;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1204: RscPicture
		{
			idc = 1204;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "1 call SHOP_buySight";
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "2 call SHOP_buySight";
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "3 call SHOP_buySight";
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "4 call SHOP_buySight";
		};
		class RscPicture_1205: RscPicture
		{
			idc = 1205;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1206: RscPicture
		{
			idc = 1206;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1207: RscPicture
		{
			idc = 1207;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1208: RscPicture
		{
			idc = 1208;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1209: RscPicture
		{
			idc = 1209;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1210: RscPicture
		{
			idc = 1210;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1211: RscPicture
		{
			idc = 1211;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1212: RscPicture
		{
			idc = 1212;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1213: RscPicture
		{
			idc = 1213;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1214: RscPicture
		{
			idc = 1214;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1215: RscPicture
		{
			idc = 1215;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1216: RscPicture
		{
			idc = 1216;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1217: RscPicture
		{
			idc = 1217;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1218: RscPicture
		{
			idc = 1218;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1219: RscPicture
		{
			idc = 1219;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "5 call SHOP_buySight";
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "6 call SHOP_buySight";
		};
		class RscButton_1607: RscButton
		{
			idc = 1607;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "7 call SHOP_buySight";
		};
		class RscButton_1608: RscButton
		{
			idc = 1608;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "8 call SHOP_buySight";
		};
		class RscButton_1609: RscButton
		{
			idc = 1609;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "9 call SHOP_buySight";
		};
		class RscButton_1610: RscButton
		{
			idc = 1610;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "10 call SHOP_buySight";
		};
		class RscButton_1611: RscButton
		{
			idc = 1611;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "11 call SHOP_buySight";
		};
		class RscButton_1612: RscButton
		{
			idc = 1612;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "12 call SHOP_buySight";
		};
		class RscButton_1613: RscButton
		{
			idc = 1613;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "13 call SHOP_buySight";
		};
		class RscButton_1614: RscButton
		{
			idc = 1614;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "14 call SHOP_buySight";
		};
		class RscButton_1615: RscButton
		{
			idc = 1615;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "15 call SHOP_buySight";
		};
		class RscButton_1616: RscButton
		{
			idc = 1616;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "16 call SHOP_buySight";
		};
		class RscButton_1617: RscButton
		{
			idc = 1617;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "17 call SHOP_buySight";
		};
		class RscButton_1618: RscButton
		{
			idc = 1618;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "18 call SHOP_buySight";
		};
		class RscButton_1619: RscButton
		{
			idc = 1619;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "19 call SHOP_buySight";
		};
		class RscButton_1620: RscButton
		{
			idc = 1620;
			text = "CLOSE"; //--- ToDo: Localize;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "closeDialog 0";
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

    };
};

class shopWeapon
{
    idd = 1339;
    movingEnable = true;
	onLoad = "uiNameSpace setVariable ['shopWeapon', _this select 0]; call SHOP_weaponInit;";
    class Controls
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by HoS, v1.063, #Syhija)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 4.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = -1 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 31 * GUI_GRID_WEAPON_W;
			h = 41 * GUI_GRID_WEAPON_H;
		};

		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "WEAPON SHOP"; //--- ToDo: Localize;
			x = 16.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = -1 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 7 * GUI_GRID_WEAPON_W;
			h = 2.5 * GUI_GRID_WEAPON_H;
			colorBackground[] = {-1,-1,-1,0};
		};
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 0.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 4.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "0 call SHOP_buyWeapon";
		};
		class RscPicture_1201: RscPicture
		{
			idc = 1201;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 0.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1202: RscPicture
		{
			idc = 1202;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 0.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1203: RscPicture
		{
			idc = 1203;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 0.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1204: RscPicture
		{
			idc = 1204;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 0.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 4.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "1 call SHOP_buyWeapon";
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 4.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "2 call SHOP_buyWeapon";
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 4.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "3 call SHOP_buyWeapon";
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 4.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "4 call SHOP_buyWeapon";
		};
		class RscPicture_1205: RscPicture
		{
			idc = 1205;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 8 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1206: RscPicture
		{
			idc = 1206;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 8 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1207: RscPicture
		{
			idc = 1207;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 8 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1208: RscPicture
		{
			idc = 1208;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 8 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1209: RscPicture
		{
			idc = 1209;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 8 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1210: RscPicture
		{
			idc = 1210;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 15.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1211: RscPicture
		{
			idc = 1211;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 15.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1212: RscPicture
		{
			idc = 1212;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 15.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1213: RscPicture
		{
			idc = 1213;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 15.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1214: RscPicture
		{
			idc = 1214;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 15.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1215: RscPicture
		{
			idc = 1215;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 23 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1216: RscPicture
		{
			idc = 1216;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 23 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1217: RscPicture
		{
			idc = 1217;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 23 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1218: RscPicture
		{
			idc = 1218;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 23 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1219: RscPicture
		{
			idc = 1219;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 23 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 12 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "5 call SHOP_buyWeapon";
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 12 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "6 call SHOP_buyWeapon";
		};
		class RscButton_1607: RscButton
		{
			idc = 1607;
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 12 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "7 call SHOP_buyWeapon";
		};
		class RscButton_1608: RscButton
		{
			idc = 1608;
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 12 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "8 call SHOP_buyWeapon";
		};
		class RscButton_1609: RscButton
		{
			idc = 1609;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 12 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "9 call SHOP_buyWeapon";
		};
		class RscButton_1610: RscButton
		{
			idc = 1610;
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 19.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "10 call SHOP_buyWeapon";
		};
		class RscButton_1611: RscButton
		{
			idc = 1611;
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 19.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "11 call SHOP_buyWeapon";
		};
		class RscButton_1612: RscButton
		{
			idc = 1612;
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 19.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "12 call SHOP_buyWeapon";
		};
		class RscButton_1613: RscButton
		{
			idc = 1613;
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 19.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "13 call SHOP_buyWeapon";
		};
		class RscButton_1614: RscButton
		{
			idc = 1614;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 19.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "14 call SHOP_buyWeapon";
		};
		class RscButton_1615: RscButton
		{
			idc = 1615;
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 27 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "15 call SHOP_buyWeapon";
		};
		class RscButton_1616: RscButton
		{
			idc = 1616;
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 27 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "16 call SHOP_buyWeapon";
		};
		class RscButton_1617: RscButton
		{
			idc = 1617;
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 27 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "17 call SHOP_buyWeapon";
		};
		class RscButton_1618: RscButton
		{
			idc = 1618;
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 27 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "18 call SHOP_buyWeapon";
		};
		class RscButton_1619: RscButton
		{
			idc = 1619;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 27 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "19 call SHOP_buyWeapon";
		};
		class RscPicture_1220: RscPicture
		{
			idc = 1220;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 30.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1221: RscPicture
		{
			idc = 1221;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 30.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1222: RscPicture
		{
			idc = 1222;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 30.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1223: RscPicture
		{
			idc = 1223;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 30.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscPicture_1224: RscPicture
		{
			idc = 1224;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 30.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 4 * GUI_GRID_WEAPON_H;
		};
		class RscButton_1620: RscButton
		{
			idc = 1620;
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 34.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "20 call SHOP_buyWeapon";
		};
		class RscButton_1621: RscButton
		{
			idc = 1621;
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 34.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "21 call SHOP_buyWeapon";
		};
		class RscButton_1622: RscButton
		{
			idc = 1622;
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 34.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "22 call SHOP_buyWeapon";
		};
		class RscButton_1623: RscButton
		{
			idc = 1623;
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 34.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "23 call SHOP_buyWeapon";
		};
		class RscButton_1624: RscButton
		{
			idc = 1624;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 34.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "24 call SHOP_buyWeapon";
		};
		class RscButton_1625: RscButton
		{
			idc = 1625;
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 6 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "0 call SHOP_buyAmmo";
		};
		class RscButton_1626: RscButton
		{
			idc = 1626;
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 6 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "1 call SHOP_buyAmmo";
		};
		class RscButton_1627: RscButton
		{
			idc = 1627;
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 6 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "2 call SHOP_buyAmmo";
		};
		class RscButton_1628: RscButton
		{
			idc = 1628;
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 6 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "3 call SHOP_buyAmmo";
		};
		class RscButton_1629: RscButton
		{
			idc = 1629;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 6 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "4 call SHOP_buyAmmo";
		};
		class RscButton_1630: RscButton
		{
			idc = 1630;
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 13.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "5 call SHOP_buyAmmo";
		};
		class RscButton_1631: RscButton
		{
			idc = 1631;
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 13.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "6 call SHOP_buyAmmo";
		};
		class RscButton_1632: RscButton
		{
			idc = 1632;
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 13.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "7 call SHOP_buyAmmo";
		};
		class RscButton_1633: RscButton
		{
			idc = 1633;
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 13.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "8 call SHOP_buyAmmo";
		};
		class RscButton_1634: RscButton
		{
			idc = 1634;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 13.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "9 call SHOP_buyAmmo";
		};
		class RscButton_1635: RscButton
		{
			idc = 1635;
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 21 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "10 call SHOP_buyAmmo";
		};
		class RscButton_1636: RscButton
		{
			idc = 1636;
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 21 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "11 call SHOP_buyAmmo";
		};
		class RscButton_1637: RscButton
		{
			idc = 1637;
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 21 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "12 call SHOP_buyAmmo";
		};
		class RscButton_1638: RscButton
		{
			idc = 1638;
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 21 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "13 call SHOP_buyAmmo";
		};
		class RscButton_1639: RscButton
		{
			idc = 1639;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 21 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "14 call SHOP_buyAmmo";
		};
		class RscButton_1640: RscButton
		{
			idc = 1640;
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 28.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "15 call SHOP_buyAmmo";
		};
		class RscButton_1641: RscButton
		{
			idc = 1641;
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 28.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "16 call SHOP_buyAmmo";
		};
		class RscButton_1642: RscButton
		{
			idc = 1642;
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 28.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "17 call SHOP_buyAmmo";
		};
		class RscButton_1643: RscButton
		{
			idc = 1643;
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 28.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "18 call SHOP_buyAmmo";
		};
		class RscButton_1644: RscButton
		{
			idc = 1644;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 28.5 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "19 call SHOP_buyAmmo";
		};
		class RscButton_1645: RscButton
		{
			idc = 1645;
			x = 5.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 36 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "20 call SHOP_buyAmmo";
		};
		class RscButton_1646: RscButton
		{
			idc = 1646;
			x = 11.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 36 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "21 call SHOP_buyAmmo";
		};
		class RscButton_1647: RscButton
		{
			idc = 1647;
			x = 17.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 36 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "22 call SHOP_buyAmmo";
		};
		class RscButton_1648: RscButton
		{
			idc = 1648;
			x = 23.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 36 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "23 call SHOP_buyAmmo";
		};
		class RscButton_1649: RscButton
		{
			idc = 1649;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 36 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "24 call SHOP_buyAmmo";
		};
		class RscButton_1650: RscButton
		{
			idc = 1650;
			text = "CLOSE"; //--- ToDo: Localize;
			x = 29.5 * GUI_GRID_WEAPON_W + GUI_GRID_WEAPON_X;
			y = 38 * GUI_GRID_WEAPON_H + GUI_GRID_WEAPON_Y;
			w = 5 * GUI_GRID_WEAPON_W;
			h = 1.33333 * GUI_GRID_WEAPON_H;
			action  = "closeDialog 0";
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

    };
};

class shopItems
{
    idd = 1340;
    movingEnable = true;
	onLoad = "uiNameSpace setVariable ['shopItems', _this select 0]; call SHOP_itemsInit;";
    class Controls
    {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by HoS, v1.063, #Naqyqy)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 4.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 31 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "ITEMS SHOP"; //--- ToDo: Localize;
			x = 17 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0};
		};
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "0 call SHOP_buyItem";
		};
		class RscPicture_1201: RscPicture
		{
			idc = 1201;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1202: RscPicture
		{
			idc = 1202;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1203: RscPicture
		{
			idc = 1203;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1204: RscPicture
		{
			idc = 1204;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "1 call SHOP_buyItem";
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "2 call SHOP_buyItem";
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "3 call SHOP_buyItem";
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "4 call SHOP_buyItem";
		};
		class RscPicture_1205: RscPicture
		{
			idc = 1205;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1206: RscPicture
		{
			idc = 1206;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1207: RscPicture
		{
			idc = 1207;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1208: RscPicture
		{
			idc = 1208;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1209: RscPicture
		{
			idc = 1209;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1210: RscPicture
		{
			idc = 1210;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1211: RscPicture
		{
			idc = 1211;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1212: RscPicture
		{
			idc = 1212;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1213: RscPicture
		{
			idc = 1213;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1214: RscPicture
		{
			idc = 1214;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1215: RscPicture
		{
			idc = 1215;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1216: RscPicture
		{
			idc = 1216;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1217: RscPicture
		{
			idc = 1217;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1218: RscPicture
		{
			idc = 1218;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscPicture_1219: RscPicture
		{
			idc = 1219;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "5 call SHOP_buyItem";
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "6 call SHOP_buyItem";
		};
		class RscButton_1607: RscButton
		{
			idc = 1607;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "7 call SHOP_buyItem";
		};
		class RscButton_1608: RscButton
		{
			idc = 1608;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "8 call SHOP_buyItem";
		};
		class RscButton_1609: RscButton
		{
			idc = 1609;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "9 call SHOP_buyItem";
		};
		class RscButton_1610: RscButton
		{
			idc = 1610;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "10 call SHOP_buyItem";
		};
		class RscButton_1611: RscButton
		{
			idc = 1611;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "11 call SHOP_buyItem";
		};
		class RscButton_1612: RscButton
		{
			idc = 1612;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "12 call SHOP_buyItem";
		};
		class RscButton_1613: RscButton
		{
			idc = 1613;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "13 call SHOP_buyItem";
		};
		class RscButton_1614: RscButton
		{
			idc = 1614;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "14 call SHOP_buyItem";
		};
		class RscButton_1615: RscButton
		{
			idc = 1615;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "15 call SHOP_buyItem";
		};
		class RscButton_1616: RscButton
		{
			idc = 1616;
			x = 11.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "16 call SHOP_buyItem";
		};
		class RscButton_1617: RscButton
		{
			idc = 1617;
			x = 17.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "17 call SHOP_buyItem";
		};
		class RscButton_1618: RscButton
		{
			idc = 1618;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "18 call SHOP_buyItem";
		};
		class RscButton_1619: RscButton
		{
			idc = 1619;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "19 call SHOP_buyItem";
		};
		class RscButton_1620: RscButton
		{
			idc = 1620;
			text = "CLOSE"; //--- ToDo: Localize;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			action  = "closeDialog 0";
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

    };
};