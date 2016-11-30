if (isServer) then {
	missionNamespace setVariable ["shopMul", 1, True];
	
	// UPDATE ASSORT
	[] spawn {
		while {true} do {
			call SHOP_Update;
			sleep 1800;
			["ShopInfo",["����������� ��������."]] remoteExec ["bis_fnc_showNotification"];
		};
	};
	
	// SALES
	[] spawn {
		while {true} do {
			sleep 1200;
			if (random 1 > 0.7) then {
				_sales = random 0.5;
				["ShopInfo",[Format ["���������� �� 10 �����! -%1%%", _sales]]] remoteExec ["bis_fnc_showNotification"];
				missionNamespace setVariable ["shopMul", 1 - _sales, True];
				sleep 600;
				["ShopInfo",["���������� �����������."]] remoteExec ["bis_fnc_showNotification"];
				missionNamespace setVariable ["shopMul", 1, True];
			};
		};
	};
};

if (hasInterface) then {
	trader addAction ["Trade", {createDialog "shopUnified"}];
};

// EVERYONE
[trader, "SIT3", "ASIS"] call BIS_fnc_ambientAnim;