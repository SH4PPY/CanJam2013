action_set_relative(1);
var __b__;
__b__ = action_if_variable(canLoseLife, 1, 0);
if __b__
{
{
action_set_life(-1);
action_sound(snd_hurt, 0);
{
action_set_relative(0);
canLoseLife = 0;
action_set_relative(1);
}
{
action_set_relative(0);
action_set_alarm(30, 1);
action_set_relative(1);
}
}
}
action_set_relative(0);
