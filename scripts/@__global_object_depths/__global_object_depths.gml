// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_player
global.__objectDepths[1] = 0; // obj_enemy1
global.__objectDepths[2] = 0; // obj_enemy2
global.__objectDepths[3] = 0; // obj_enemy3
global.__objectDepths[4] = 0; // obj_boss
global.__objectDepths[5] = 0; // obj_bullet
global.__objectDepths[6] = 0; // obj_flame
global.__objectDepths[7] = 0; // obj_bullet_enemy
global.__objectDepths[8] = 0; // obj_wall
global.__objectDepths[9] = 0; // obj_control
global.__objectDepths[10] = 0; // obj_timer
global.__objectDepths[11] = 0; // obj_spawner
global.__objectDepths[12] = 0; // obj_1up
global.__objectDepths[13] = 0; // obj_hut
global.__objectDepths[14] = 0; // obj_Marie
global.__objectDepths[15] = 0; // obj_Title
global.__objectDepths[16] = 0; // obj_fullscreen
global.__objectDepths[17] = 0; // obj_button_start
global.__objectDepths[18] = 0; // obj_instruction_box
global.__objectDepths[19] = 0; // obj_exit
global.__objectDepths[20] = 0; // obj_menu
global.__objectDepths[21] = 0; // obj_score_win
global.__objectDepths[22] = 0; // obj_score_lose
global.__objectDepths[23] = 0; // obj_wall2
global.__objectDepths[24] = 0; // obj_splashtimer
global.__objectDepths[25] = 0; // obj_instructions


global.__objectNames[0] = "obj_player";
global.__objectNames[1] = "obj_enemy1";
global.__objectNames[2] = "obj_enemy2";
global.__objectNames[3] = "obj_enemy3";
global.__objectNames[4] = "obj_boss";
global.__objectNames[5] = "obj_bullet";
global.__objectNames[6] = "obj_flame";
global.__objectNames[7] = "obj_bullet_enemy";
global.__objectNames[8] = "obj_wall";
global.__objectNames[9] = "obj_control";
global.__objectNames[10] = "obj_timer";
global.__objectNames[11] = "obj_spawner";
global.__objectNames[12] = "obj_1up";
global.__objectNames[13] = "obj_hut";
global.__objectNames[14] = "obj_Marie";
global.__objectNames[15] = "obj_Title";
global.__objectNames[16] = "obj_fullscreen";
global.__objectNames[17] = "obj_button_start";
global.__objectNames[18] = "obj_instruction_box";
global.__objectNames[19] = "obj_exit";
global.__objectNames[20] = "obj_menu";
global.__objectNames[21] = "obj_score_win";
global.__objectNames[22] = "obj_score_lose";
global.__objectNames[23] = "obj_wall2";
global.__objectNames[24] = "obj_splashtimer";
global.__objectNames[25] = "obj_instructions";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for