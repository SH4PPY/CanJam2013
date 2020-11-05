/// @description (Old DnD) - set lives
/// @param val value to set lives
var val = argument0;
if (global.__argument_relative) {
	val += lives;
}  // end if
lives = val;
