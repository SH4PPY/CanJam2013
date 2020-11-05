action_set_relative(0);
action_draw_sprite(spr_gui, 0, 620, -1);
action_draw_life_images(600, 660, spr_life);
action_draw_text("Lives:", 500, 650);
action_draw_score(50, 650, "Score: ");
action_draw_text("Madness:", 200, 650);
action_draw_variable(madness, 300, 650);
var __b__;
__b__ = action_if_variable(killCount, 20, 4);
if __b__
{
{
{
action_set_relative(1);
action_draw_text("Boss wall is open!", 50, 670);
action_set_relative(0);
}
}
}
else
{
{
{
action_set_relative(1);
action_draw_text("Boss wall is closed!", 50, 670);
action_set_relative(0);
}
}
}
action_set_relative(0);
