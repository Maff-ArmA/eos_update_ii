
EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";
Bastion_Spawn = compile preprocessfilelinenumbers "eos\core\b_launch.sqf";
null = [] execVM "eos\core\spawn_fnc.sqf";

onPlayerConnected { [] execVM "eos\Functions\EOS_Markers.sqf"; };


/*
EOS 1.98 by BangaBob 

GROUP SIZES
	0 = 1
	1 = 2,4
	2 = 4,8
	3 = 8,12
	4 = 12,16
	5 = 16,20

	EXAMPLE CALL - EOS
	null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
	null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

	EXAMPLE CALL - BASTION
	null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
	null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/

VictoryColor = "colorGreen";				// Colour of marker after completion
hostileColor = "colorRed";					// Default colour when enemies active
bastionColor = "colorOrange";				// Colour for bastion marker
EOS_DAMAGE_MULTIPLIER = 10;					// 1 is default
EOS_KILLCOUNTER = false;					// Counts killed units


null =
[
	["EOSinf_1"],							//	Marker Array
	[2,3,75],								//	House Groups, Count.
	[4,2,50],								//	Patrol Groups, Count, Probability.
	[0,0,0],								//	Light Vehicles.
	[0,0],									//	Armoured Vehicles.
	[0,0],									//	Static Vehicles.
	[0,0,0],								//	Helicopters.
	[2, 1, 500, INDEPENDENT, false, false]	//	Faction, MarkerType, Distance, Side, Height Limit, Debug.
] call EOS_Spawn;

null =
[
	["EOSinf_1"],							//	Marker Array
	[2,3,75],								//	House Groups, Count.
	[4,2,50],								//	Patrol Groups, Count, Probability.
	[0,0,0],								//	Light Vehicles.
	[0,0],									//	Armoured Vehicles.
	[0,0],									//	Static Vehicles.
	[0,0,0],								//	Helicopters.
	[1, 1, 500, WEST, false, false]			//	Faction, MarkerType, Distance, Side, Height Limit, Debug.
] call EOS_Spawn;


/*
//	Bastion isn't what I thought it was.
//	Look at changing initial pause time to unit count.
null =
[
	["EOSinf_1"],							//	Marker Array.
	[3,2],									//	patrol groups,size of groups
	[2,1],									//	light vehicles,size of cargo
	[2],									//	armoured vehicles
	[2,2],									//	helicopters,size of helicopter cargo
	[2, 1, INDEPENDENT, false, false],		//	faction, markertype, side, heightlimit, debug
	[0, 2, 30, false, false]				//	initial pause, number of waves, delay between waves, integrate eos, show hints
] call Bastion_Spawn;
*/



//null = [["EOSinf_1","EOSinf_2"],[3,1],[2,3,75],[0,0],[0],[0],[0,0],[0,0,350,EAST,TRUE]] call EOS_Spawn;
//null = [["EOSmot_1","EOSmot_2"],[0,0],[0,0],[3,1,90],[2,60],[0],[1,0,90],[0,0,350,EAST,FALSE]] call EOS_Spawn;
//null = [["BAS_zone_1"],[0,1],[0,2],[0],[1,2],[0,0,EAST,TRUE],[0,2,120,TRUE,FALSE]] call Bastion_Spawn;