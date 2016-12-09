	_shopsContent = [
	
		// VEHICLES
		[["B_Quadbike_01_F", 1000],
		["C_Offroad_01_F", 1200],
		["C_SUV_01_F", 1500],
		["C_Hatchback_01_F", 1500],
		["B_Truck_01_transport_F", 2000],
		["B_LSV_01_unarmed_F", 2000],
		["C_Hatchback_01_sport_F", 2500],
		["B_Truck_01_covered_F", 3000],
		["B_LSV_01_armed_F", 3000],
		["B_MRAP_01_F", 4000],
		["B_MRAP_01_hmg_F", 6000],
		["B_MRAP_01_gmg_F", 8000],
		["I_UGV_01_rcws_F", 8000],
		["B_Heli_Light_01_F", 10000],
		["B_Heli_Transport_01_F", 15000],
		["O_APC_Wheeled_02_rcws_F", 15000],
		["B_APC_Wheeled_01_cannon_F", 17000],
		["I_Heli_light_03_F", 20000],
		["I_APC_Wheeled_03_cannon_F", 20000],
		["O_APC_Tracked_02_cannon_F", 25000],
		["I_APC_tracked_03_cannon_F", 30000],
		["B_APC_Tracked_01_rcws_F", 40000],
		["O_MBT_02_cannon_F", 50000],
		["B_MBT_01_cannon_F", 60000],
		["I_MBT_03_cannon_F", 70000],
		["B_MBT_01_TUSK_F", 80000]],
		
		// BACKPACKS
		[["B_AssaultPack_blk", 1000],
		["B_FieldPack_blk", 2000],
		["B_TacticalPack_blk", 3000],
		["B_Kitbag_rgr", 4000],
		["B_Carryall_oli", 5000],
		["I_Mortar_01_support_F", 5000],
		["I_Mortar_01_weapon_F", 5000],
		["I_UAV_01_backpack_F", 7000],
		["B_Bergen_hex_F", 10000]],
		
		// ITEMS
		[["Chemlight_green", 25],
		["Chemlight_blue", 25],
		["Chemlight_red", 25],
		["Chemlight_yellow", 25],
		["ItemCompass", 50],
		["SmokeShell", 50],
		["SmokeShellGreen", 50],
		["SmokeShellOrange", 50],
		["SmokeShellPurple", 50],
		["SmokeShellBlue", 50],
		["SmokeShellRed", 50],
		["SmokeShellYellow", 50],
		["HandGrenade", 80],
		["MiniGrenade", 100],
		["FirstAidKit", 150],
		["acc_flashlight", 250],
		["ItemMap", 500],
		["V_HarnessO_gry", 500],
		["DemoCharge_Remote_Mag", 1000],
		["NVGoggles_OPFOR", 1000],
		["bipod_02_F_blk", 1000],
		["ItemGPS", 1000],
		["ItemRadio", 1000],
		["V_TacVest_blk", 1000],
		["H_HelmetB_light", 1000],
		["B_IR_Grenade", 2000],
		["H_HelmetB", 2000],
		["V_PlateCarrier1_blk", 2000],
		["I_UavTerminal", 3000],
		["Rangefinder", 3000],
		["H_HelmetSpecB", 3000],
		["V_PlateCarrier2_blk", 4000],
		["muzzle_snds_B", 5000],
		["muzzle_snds_58_blk_F", 5000],
		["muzzle_snds_H", 5000],
		["muzzle_snds_65_TI_blk_F", 5000],
		["muzzle_snds_93mmg", 5000],
		["muzzle_snds_338_black", 5000],
		["muzzle_snds_M", 5000],
		["muzzle_snds_L", 5000],
		["muzzle_snds_acp", 5000],
		["Laserdesignator_03", 5000],
		["V_PlateCarrierIA2_dgtl", 6000],
		["V_PlateCarrierSpec_blk", 10000],
		["H_HelmetLeaderO_oucamo", 10000],
		["H_HelmetO_ViperSP_ghex_F", 20000],
		
		// UNIFORMS
		["U_I_CombatUniform", 1000],
		["U_I_pilotCoveralls", 2000],
		["U_I_FullGhillie_sard", 3000]],
		
		// WEAPONS
		((10000 / chaosLevel) call SATGv2_RandomEquip_fnc_weapons apply {[_x select 0, _x select 1, (_x select 1) / 6]}),

		// SIGHTS
		((10000 / chaosLevel) call SATGv2_RandomEquip_fnc_sights)
	];
	(_shopsContent select 2) pushBack ["launch_NLAW_F", 2000, 500];
	
	shopContent = [];
	{
		for "_i" from 0 to floor random count _x do {
			private "_item";
			waitUntil{
				_item = selectRandom _x;
				not (_item in shopContent);
			};
			shopContent pushBack _item;
		};
	} forEach _shopsContent;
	publicVariable "shopContent";