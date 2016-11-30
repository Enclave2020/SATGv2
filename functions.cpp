class CfgFunctions
{
	class SATGv2_Save
	{
		class systemSave
		{
			class autoSave {};
			class vehicles {};
			class vehicleDestroyed {};
			class clearCargo {};
			class saveWorld {};
			class saveVehicles {};
			class savePlayer {};
			class saveDamage {};
			class saveCargo {};
			class save {};
			class reset {};
			class loadVehicles {};
			class loadPlayer {};
			class loadDamage {};
			class loadCargoItemCount {};
			class loadCargoItem {};
			class loadCargo {};
			class load {};
			class init {postInit = 1;};		
		};
	};
	
	class SATGv2_Sector
	{
		class systemSector
		{
			class buildingClass {};
			class chaosCost {};
			class createLogic {};
			class createMarker {};
			class gradeCost {};
			class setClear {};
			class triggerOwner {};
			class triggerSetOwner {};
			class tryDeSpawn {};
			class trySpawn {};
			class init {preInit = 1;};		
		};
	};	
	
	class SATGv2_Hud
	{
		class hud
		{
			class showMoney {};
			class showMoneySub {};
			class update {};
			class init {postInit = 1;};		
		};
	};	
	
	class SATGv2_Weather
	{
		class weather
		{
			class changer {};
			class fogAndSnow  {};
			class load {};
			class init {preInit = 1;};		
		};
	};	
	
	class SATGv2_Temperature
	{
		class temperature
		{
			class saturation {};
			class world  {};
			class init {postInit = 1;};		
		};
	};
	
	class SATGv2_Score
	{
		class score
		{
			class callBack {};
			class increase  {};
			class init {};		
		};
	};
	
	class SATGv2_RandomEquip
	{
		class randomEquip
		{
			class ammoType {};
			class probUnit  {};
			class probWeapon {};		
			class random {};
			class randomEquip  {};
			class randomEquipCrate {};		
			class randomizeSide {};
			class randomSight  {};
			class randomWeapon {};		
			class removeMagazines {};
			class selectRandom  {};
			class sights {};		
			class weapons {};
		};
	};
	
	class SATGv2_Shop
	{
		class shop
		{
			class ammoType {};
			class buyItem {};
			class buyVehicle {};
			class canBuy {};
			class itemConfig {};
			class itemInfo {};
			class loadItem {};
			class show {};
			class update {};
			class init {postInit = 1;};		
		};
	};	
	
	class SATGv2_DynamicMusic
	{
		class dynamicMusic
		{
			class eventInit {};
			class handler {};
			class nextMusic {};
			class status {};
			class init {postInit = 1;};		
		};
	};	
	
	class SATGv2
	{
		class main
		{
			class bodyClear {};
			class bodyInit  {};
			class friendlyFire  {};
			class friendlyFireEx  {};
			class makeCamp  {};
			class randomVehicles  {};
			class repackMagazines  {};
			class shareMoney  {};
			class shareMoneyServer  {};
			class spawnSquad  {};
			class unitKilled  {};
			class campCreate  {};
			class campInit  {};
			class addMoney  {};
			class showMoney  {};
			class subMoney  {};
			class init {postInit = 1;};								
		};
	};	
};