	params ["_unit"];
	if ({alive _x} count units group _unit < 2) then {
		_logic = group _unit getVariable ["OwnerLogic", objNull];
		_logic call SATGv2_Sector_fnc_setClear;
	};