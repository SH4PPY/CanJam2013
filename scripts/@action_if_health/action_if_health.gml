/// @description (Old DnD) - if health evauation
/// @param val  value to check against
/// @param type	type of check (1==<, 2==>, anything else is ==)
var ret = false;
switch( argument1 )
{
	case 1:	ret = (health < argument0); break;	
	case 2:	ret = (health > argument0); break;	
	default:ret = (health == argument0); break;	
}
return ret;