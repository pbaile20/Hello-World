if (instance_place(x, y, obj_cursor))
{
	image_index = 1;
	if mouse_check_button(1)
	{
		game_restart();
	}
	colorHolder = colorSelected;
}
else
{
	image_index = 0;
	colorHolder = colorUnselected;
}