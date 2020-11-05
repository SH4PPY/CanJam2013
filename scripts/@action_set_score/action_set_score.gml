/// @description (Old DnD) - set score
/// @param val value to set score
var val = argument0;
if (global.__argument_relative) {
	val += score;
}  // end if
score = val;
