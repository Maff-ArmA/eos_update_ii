
setViewDistance 1000;
setTerrainGrid 12.5;
setObjectViewDistance [1000,50];
//setDetailMapBlendPars [viewDistance / 2, viewDistance];
setDetailMapBlendPars [25, 50];
enableSatNormalOnDetail false;

0 fadeRadio 0;
[player, "NoVoice"] remoteExec ["setSpeaker", 0, true];
enableEngineArtillery false;

[] spawn
{
	waitUntil {time > 0};
	enableEnvironment [false,true];
};

enableRadio false;
enableSentences false;
enableTeamswitch false;
disableMapIndicators [true,true,true,true];
showGPS false;
showRadio false;
showChat false;
showSubtitles false;
player addRating 0;
player allowSprint true;
player disableConversation true;
player enableFatigue false;	//	Returns 'true' after respawn!
player enableStamina false;
player setCustomAimCoef 0.5;
player setAnimSpeedCoef 1.21;	//	1.21 / 1.175
player setUnitTrait ["camouflageCoef", 1];
player setUnitTrait ["audibleCoef", 1];

//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";

