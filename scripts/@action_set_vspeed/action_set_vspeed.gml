/// @description (Old DnD) - set vspeed
/// @param val value to set vspeed
var val = argument0;
if (global.__argument_relative) {
	val += vspeed;
}  // end if
vspeed = val;
