/// @description (Old DnD) - draw life with images
/// @param x	x position 
/// @param y	y position 
/// @param index sprite index to use

var xx = argument0;
var yy = argument1;
if (global.__argument_relative) {
	xx += x;
	yy += y;
}  // end if

var w = sprite_get_width( argument2 );
for( var i=0; i<lives; ++i) {
	draw_sprite( argument2, 0, xx+(i*w), yy);
} // end for

