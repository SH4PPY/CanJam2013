action_set_relative(1);
//WASD movement
if(keyboard_check(ord("W")))
{
    //Normal controls
    if(madnessControl = 0)
    {
        y -= 4;
    }
    //Slow move speed
    if(madnessControl = 1)
    {
        y -= 6;
    }
}
if(keyboard_check(ord("A")))
{
    //Normal controls
    if(madnessControl = 0)
    {
        x -= 4;
    }
    //Slow move speed
    if(madnessControl = 1)
    {
        x -= 6;
    }
}
if(keyboard_check(ord("S")))
{
    //Normal controls
    if(madnessControl = 0)
    {
        y += 4;
    }
    //Slow move speed
    if(madnessControl = 1)
    {
        y += 6;
    }
}
if(keyboard_check(ord("D")))
{
    //Normal move speed
    if(madnessControl = 0)
    {
        x += 4;
    }
    //Slow move speed
    if(madnessControl = 1)
    {
        x += 6;
    }
}
//Madness fire-rate changes
//Normal gun
if(madnessControl = 0)
{
    if(mouse_check_button_pressed(mb_left))
    {
        if(canShoot = 1)
        {
            instance_create(x,y,obj_bullet);
            audio_play_sound(snd_shoot,1,false);
            canShoot = 0;
            alarm[0] = 30;
        }
    }
}
//Flamethrower
if(madnessControl = 1)
{
    if(mouse_check_button(mb_left))
    { 
        instance_create(x,y,obj_flame);
        audio_play_sound(snd_burn,1,false);
    }
}
//Player faces mouse
image_angle = point_direction(x, y, mouse_x, mouse_y); 

var __b__;
__b__ = action_if_life(1, 1);
if __b__
{
{
action_kill_object();
action_effect(3, 0, 0, 1, 255, 1);
}
}
action_set_relative(0);
