action_set_relative(1);
//Makes sure game doesn't crash if player dies
if(instance_exists(obj_player))
{   
    //Fire-rate limit
    if(canShoot = 1)
    {
        //Shooting in certain radius
        if(distance_to_object(obj_player) < 300)
        {
            instance_create(x,y,obj_bullet_enemy);
            canShoot = 0;
            alarm[0] = 30;
            audio_play_sound(snd_shootmain,1,false);
        }
    }
}

//Makes sure that game doesn't crash if player dies
if(instance_exists(obj_player))
{
    if(distance_to_object(obj_player) < 400)
    {
        //Moves towards player
        move_towards_point(obj_player.x, obj_player.y,2);
        image_angle = point_direction(x, y, obj_player.x, obj_player.y);
        bossFight = 1;
    }
    else
    {
        move_towards_point(x,y,0);
    }
}
else
{   
    //Stays still
    move_towards_point(x,y,0);
}

var __b__;
__b__ = action_if_health(0.1, 1);
if __b__
{
{
action_kill_object();
action_effect(3, 0, 0, 2, 255, 0);
action_effect(8, 0, 0, 2, 65280, 0);
}
}
action_set_relative(0);
