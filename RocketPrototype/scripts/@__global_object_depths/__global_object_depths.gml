// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -99; // oGameglobal.__objectDepths[1] = 0; // oParSolidglobal.__objectDepths[2] = 0; // oParEntityglobal.__objectDepths[3] = 0; // oBlockglobal.__objectDepths[4] = 0; // oPushBlockglobal.__objectDepths[5] = 0; // oSpringglobal.__objectDepths[6] = 0; // oFadeBlockglobal.__objectDepths[7] = 0; // oSlopeRglobal.__objectDepths[8] = 0; // oSlopeLglobal.__objectDepths[9] = -1; // oPlayerglobal.__objectDepths[10] = -10; // oBloodglobal.__objectDepths[11] = -2; // oCameraglobal.__objectDepths[12] = 0; // oParticle

global.__objectNames[0] = "oGame";global.__objectNames[1] = "oParSolid";global.__objectNames[2] = "oParEntity";global.__objectNames[3] = "oBlock";global.__objectNames[4] = "oPushBlock";global.__objectNames[5] = "oSpring";global.__objectNames[6] = "oFadeBlock";global.__objectNames[7] = "oSlopeR";global.__objectNames[8] = "oSlopeL";global.__objectNames[9] = "oPlayer";global.__objectNames[10] = "oBlood";global.__objectNames[11] = "oCamera";global.__objectNames[12] = "oParticle";

global.__objectDepths[13] = -1; // oPlayer
global.__objectDepths[14] = 0; // oGunPickup
global.__objectDepths[15] = -1; // oBullet
global.__objectDepths[16] = -2; // oExplosion


global.__objectNames[13] = "oPlayer";
global.__objectNames[14] = "oGunPickup";
global.__objectNames[15] = "oBullet";
global.__objectNames[16] = "oExplosion";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for