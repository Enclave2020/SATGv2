	_result = vehicles select {(_x isKindOf "Car") or (_x isKindOf "Air") or (_x isKindOf "Tank")};
	(_result select {side _x != WEST})