status = string_concat("Wave: ", wave);
if obj_player.canMove
{
	draw_text_color(room_width/2, 80, status, c_white, c_white, c_white, c_white, 1);
}

if wave >= 5 && !instance_exists(obj_enemy1) && !instance_exists(obj_enemy2) && !instance_exists(obj_enemy3)
{
	obj_player.canMove = false;
}