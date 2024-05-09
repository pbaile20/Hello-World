x = obj_player.x;
y = obj_player.y + 32;

if (obj_player.alarm[2] <= 0)
{
	image_index = 4;
}
else if (obj_player.alarm[2] >= game_get_speed(gamespeed_fps)*1 && obj_player.alarm[2] < game_get_speed(gamespeed_fps)*2)
{
	image_index = 3;
}
else if (obj_player.alarm[2] >= game_get_speed(gamespeed_fps)*2 && obj_player.alarm[2] < game_get_speed(gamespeed_fps)*3)
{
	image_index = 2;
}
else if (obj_player.alarm[2] >= game_get_speed(gamespeed_fps)*3&& obj_player.alarm[2] < game_get_speed(gamespeed_fps)*4)
{
	image_index = 1;
}
else if (obj_player.alarm[2] >= game_get_speed(gamespeed_fps)*4)
{
	image_index = 0;
}

if !obj_player.canMove
{
	visible = false;
}