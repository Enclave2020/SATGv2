	waitUntil {not (displayNull isEqualTo (uiNameSpace getVariable "shopUnified"))};
	{
		lbAdd [1500, [_x select 0, "displayName"] call SATGv2_Shop_fnc_itemInfo];
		lbSetPicture [1500, _forEachIndex, [_x select 0, "picture"] call SATGv2_Shop_fnc_itemInfo];
	} forEach shopContent;
	
	lbSetCurSel [1500, 0];