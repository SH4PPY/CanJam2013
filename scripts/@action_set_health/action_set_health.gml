/// @description (Old DnD) - set health
/// @param val value to set health
var val = argument0;
if (global.__argument_relative) {
	val += health;
}  // end if
health = val;
