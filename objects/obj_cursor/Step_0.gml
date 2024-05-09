x += window_mouse_get_delta_x();
y += window_mouse_get_delta_y();

if x>room_width x = room_width;
if x<0 x=0;
if y>room_height y = room_height;
if y<0 y=0;

if (keyboard_check_pressed(vk_escape))
{
	if (room == Main)
	{
		room_goto(Pause);
	}
	if (room == Pause)
	{
		room_goto(Main);
	}
}
