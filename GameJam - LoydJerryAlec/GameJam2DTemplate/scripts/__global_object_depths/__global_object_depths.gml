function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -10; // obj_playerMECHAMAN
	global.__objectDepths[1] = -1000; // objUIAmmoController
	global.__objectDepths[2] = -10; // objPlayer
	global.__objectDepths[3] = -11; // objMuzzleFlare
	global.__objectDepths[4] = -9; // obj_dash_echo
	global.__objectDepths[5] = -9; // objShotgunCone1
	global.__objectDepths[6] = -9; // objIndividualBuckshot
	global.__objectDepths[7] = 0; // objPlayerBulletParent
	global.__objectDepths[8] = -10; // obj_player
	global.__objectDepths[9] = -8; // objOrb
	global.__objectDepths[10] = -9; // objOrbTurret
	global.__objectDepths[11] = -101; // objOrbGlow
	global.__objectDepths[12] = 0; // objEnemyParent
	global.__objectDepths[13] = -102; // objOrbProjectile
	global.__objectDepths[14] = 0; // objEnemyProjectileParent
	global.__objectDepths[15] = 0; // obj_wall_parent
	global.__objectDepths[16] = 0; // objScifiBrickWall
	global.__objectDepths[17] = 0; // objChest
	global.__objectDepths[18] = -100; // objNightVisionCameraZeroDelay
	global.__objectDepths[19] = -100; // objNightVisionCamera
	global.__objectDepths[20] = 10; // objFactoryBackground
	global.__objectDepths[21] = 9; // objFogBackground
	global.__objectDepths[22] = 0; // objControllerScratchPad
	global.__objectDepths[23] = -99; // objExplosion


	global.__objectNames[0] = "obj_playerMECHAMAN";
	global.__objectNames[1] = "objUIAmmoController";
	global.__objectNames[2] = "objPlayer";
	global.__objectNames[3] = "objMuzzleFlare";
	global.__objectNames[4] = "obj_dash_echo";
	global.__objectNames[5] = "objShotgunCone1";
	global.__objectNames[6] = "objIndividualBuckshot";
	global.__objectNames[7] = "objPlayerBulletParent";
	global.__objectNames[8] = "obj_player";
	global.__objectNames[9] = "objOrb";
	global.__objectNames[10] = "objOrbTurret";
	global.__objectNames[11] = "objOrbGlow";
	global.__objectNames[12] = "objEnemyParent";
	global.__objectNames[13] = "objOrbProjectile";
	global.__objectNames[14] = "objEnemyProjectileParent";
	global.__objectNames[15] = "obj_wall_parent";
	global.__objectNames[16] = "objScifiBrickWall";
	global.__objectNames[17] = "objChest";
	global.__objectNames[18] = "objNightVisionCameraZeroDelay";
	global.__objectNames[19] = "objNightVisionCamera";
	global.__objectNames[20] = "objFactoryBackground";
	global.__objectNames[21] = "objFogBackground";
	global.__objectNames[22] = "objControllerScratchPad";
	global.__objectNames[23] = "objExplosion";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
