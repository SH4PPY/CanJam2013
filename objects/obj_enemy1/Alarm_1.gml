if(distance_to_object(obj_player) > 400)
{
    switch (movement)
    {
    case 0:
    image_angle = 0;
    path_start(path_idle_movement_right,2,0,false);
    break;
            
    case 1:
    image_angle = 180;
    path_start(path_idle_movement_left,2,0,false);
    break;

    case 2:
    image_angle = 270;
    path_start(path_idle_movement_down,2,0,false);
    break;

    case 3:
    image_angle = 90;
    path_start(path_idle_movement_up,2,0,false);
    break;
    }
    alarm[1] = floor(random(30)) + 90;
    movement = floor(random(4));
}

action_set_alarm(60, 0);
