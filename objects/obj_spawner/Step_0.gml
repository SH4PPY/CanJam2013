if(canSpawn = 1)
{
    if(distance_to_object(obj_player) < 400)
    {
    instance_create(x,y,obj_enemy1);
    canSpawn = 0;
    alarm[0] = 180;
    }
}

