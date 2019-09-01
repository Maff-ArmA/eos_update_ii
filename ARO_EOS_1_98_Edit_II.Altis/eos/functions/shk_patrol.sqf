
//	!shk_patrol


params ["_grp","_mrk"];

//_mrk call BIS_fnc_getArea params ["_center", "_a", "_b", "_angle", "_rect"];


//	Keep for compatibility!
switch (typename _this) do
{
	case (typename grpNull): { _grp = _this };
	case (typename objNull): { _grp = group _this };
	case (typename []):
	{
		_grp = _this # 0;
		if (typename _grp == typename objNull) then {_grp = group _grp};
		if (count _this > 1) then {_mrk = _this # 1};
	};
};

_grp setBehaviour "SAFE";
_grp setSpeedMode "LIMITED";
_grp setCombatMode "YELLOW";
_grp setFormation "COLUMN";

//	15% chance of fleeing.
if ((random 100) < 15) then { _grp allowFleeing 1; } else { _grp allowFleeing 0; };

_cnt = 15;	//	15 should be good.
_wpArr = [];

//	Nice! If group is on water then blacklist "ground" positions (only return water positions).
if (surfaceIsWater (getPosATL (leader _grp))) then
{
	for "_i" from 1 to _cnt do
	{
		_p = [ [_mrk],["ground"] ] call BIS_fnc_randomPos;
		_wpArr pushBack _p;
	};
}
else
{
	for "_i" from 1 to _cnt do
	{
		_p = [ [_mrk],["water"] ] call BIS_fnc_randomPos;
		_wpArr pushBack _p;
	};
};

{
    _wp = _grp addWaypoint [_x, 0];
    _wp setWaypointType "MOVE";
    _wp setWaypointCompletionRadius 50;
    _wp setWaypointTimeout [0,0,0];

	//	I like this idea, shk. MORE randomisation with LESS waypoints.
    _wp setWaypointStatements ["true", "if ((random 100) < 50) then { group this setCurrentWaypoint [(group this), (floor (random (count (waypoints (group this)))))]; };"];
} forEach _wpArr;

	_wp = _grp addWaypoint [(_wpArr select 0), 0];
	_wp setWaypointType "CYCLE";
	_wp setWaypointCompletionRadius 50;

