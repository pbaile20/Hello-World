if (instance_place(x, y, obj_cursor))
{
	image_index = 1;
	if mouse_check_button(1)
	{
		room_goto(Main);
	}
	colorHolder = colorSelected;
}
else
{
	image_index = 0;
	colorHolder = colorUnselected;
}