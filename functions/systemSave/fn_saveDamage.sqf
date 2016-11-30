	params ["_vehicle"];
	_hitpoints = getAllHitPointsDamage _vehicle;
	if (count _hitpoints == 0) exitWith {[0]};
	_hitpoints select 2