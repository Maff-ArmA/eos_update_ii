
_grp = (_this select 0);
_skillArray = (_this select 1);

_skillset = server getVariable _skillArray;
{
	_unit = _x;
	_unit setSkill 1;
	{
		//_skillvalue = (_skillset select _forEachIndex) + (random 0.2) - (random 0.2);
		_skillvalue = (_skillset select _forEachIndex);
		_unit setSkill [_x,_skillvalue];
	} forEach ['aimingAccuracy','aimingShake','aimingSpeed','spotDistance','spotTime','courage','reloadSpeed','commanding','general'];


	if (EOS_DAMAGE_MULTIPLIER != 1) then
	{
		_unit removeAllEventHandlers "HandleDamage";
		_unit addEventHandler
		[
			"HandleDamage",
			{
				_damage = (_this select 2) * EOS_DAMAGE_MULTIPLIER;
				_damage
			}
		];
	};

	if (EOS_KILLCOUNTER) then
	{
		_unit addEventHandler
		[
			"killed",
			"null=[] execVM ""eos\functions\EOS_KillCounter.sqf"";"
		]
	};


	// ADD CUSTOM SCRIPTS TO UNIT HERE


	_unit disableAI "ALL";
	{ _unit enableAI _x; } count
		[
			"TARGET",
			"AUTOTARGET",
			"MOVE",
			"ANIM",
			"TEAMSWITCH",
			"FSM",
			"WEAPONAIM",
			"SUPPRESSION",
			"CHECKVISIBLE",
			"COVER",
			"AUTOCOMBAT",
			"PATH"
		];


	_unit setUnitTrait ["camouflageCoef", 1];
	_unit setUnitTrait ["audibleCoef", 1];
	_unit setAnimSpeedCoef 1.2;
	_unit setUnloadInCombat [true, false];


	_unit addEventHandler
	[
		"FiredMan",
		{
			params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_vehicle"];
			_unit setWeaponReloadingTime [_unit, _muzzle, 0.1];
			_unit suppressFor 1e+012;
		}
	];

	_unit addEventHandler
	[
		"Fired",
		{
			params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
			_unit setWeaponReloadingTime [_gunner, _muzzle, 0.1];
			_unit suppressFor 1e+012;
		}
	];

	//	Remove weapon attachments and NVG.
	_unit unlinkItem (hmd _unit);
	removeAllPrimaryWeaponItems _unit;

	_unit allowFleeing 0;

} forEach (units _grp);
