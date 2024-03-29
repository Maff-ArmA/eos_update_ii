// INFANTRY SKILL

/*
_InfskillSet =
[
	0.2,		// aimingAccuracy
	0.2,		// aimingShake
	1,			// aimingSpeed
	1e+012,		// spotDistance
	1e+012,		// spotTime
	0.2,		// courage
	1,			// reloadSpeed
	1,			// commanding
	1			// general
];
*/
_InfskillSet =
[
	0.02,		// aimingAccuracy
	1,			// aimingShake
	0.02,			// aimingSpeed
	1e+012,		// spotDistance
	1e+012,		// spotTime
	1,			// courage
	1,			// reloadSpeed
	1,			// commanding
	1			// general
];

/*
_InfskillSet =
[
	0.25,		// aimingAccuracy
	0.45,		// aimingShake
	0.6,		// aimingSpeed
	0.4,		// spotDistance
	0.4,		// spotTime
	1,			// courage
	1,			// reloadSpeed
	1,			// commanding
	1			// general
];
*/


// ARMOUR SKILL
_ArmSkillSet =
[
	0.25,		// aimingAccuracy
	0.45,		// aimingShake
	0.6,		// aimingSpeed
	0.4,		// spotDistance
	0.4,		// spotTime
	1,			// courage
	1,			// reloadSpeed
	1,			// commanding
	1			// general
];


// LIGHT VEHICLE skill
_LigSkillSet =
[
	0.25,		// aimingAccuracy
	0.45,		// aimingShake
	0.6,		// aimingSpeed
	0.4,		// spotDistance
	0.4,		// spotTime
	1,			// courage
	1,			// reloadSpeed
	1,			// commanding
	1			// general
];


// HELICOPTER SKILL
_AIRskillSet =
[
	0.25,		// aimingAccuracy
	0.45,		// aimingShake
	0.6,        // aimingSpeed
	0.4,		// spotDistance
	0.4,        // spotTime
	1,			// courage
	1,			// reloadSpeed
	1,			// commanding
	1			// general
];


// STATIC SKILL
_STAskillSet =
[
	0.25,		// aimingAccuracy
	0.45,		// aimingShake
	0.6,		// aimingSpeed
	0.4,		// spotDistance
	0.4,		// spotTime
	1,			// courage
	1,			// reloadSpeed
	1,			// commanding
	1			// general
];

server setVariable ["INFskill",_InfskillSet];
server setVariable ["ARMskill",_ArmSkillSet];
server setVariable ["LIGskill",_LigSkillSet];
server setVariable ["AIRskill",_AIRskillSet];
server setVariable ["STAskill",_STAskillSet];