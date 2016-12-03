	params ["_group", "_position", "_count", "_defendRadius"];	

	for "_i" from 1 to _count do {"B_Soldier_F" createUnit [_position, _group]};	
	
	WEST call SATGv2_RandomEquip_fnc_RandomizeSide;
	call SATGv2_Score_fnc_Init;
	
	[_group, _position, _defendRadius] call CBA_fnc_taskDefend;
	
	{
		_x addEventHandler ["Killed", {call SATGv2_fnc_unitKilled}];
		_x call SATGv2_fnc_bodyInit;
	} forEach units _group;