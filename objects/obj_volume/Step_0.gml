image_index = currentVolume;

if (instance_place(x, y, obj_cursor) || instance_place(x, y-60, obj_cursor))
{
	colorHolder = colorSelected;
}
else
{
	colorHolder = colorUnselected;
}

if point_in_rectangle(obj_cursor.x, obj_cursor.y, x-255, y, x-226, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 0); 
		currentVolume = 0;
		audio_master_gain(0)
		ini_close();
	}
}
else if point_in_rectangle(obj_cursor.x, obj_cursor.y, x-225, y, x-201, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 1);
		currentVolume = 1;
		audio_master_gain(1/10);
		ini_close();
	}
}
else if point_in_rectangle(obj_cursor.x, obj_cursor.y, x-200, y, x-151, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 2);
		currentVolume = 2;
		audio_master_gain(2/10);
		ini_close();
	}
}
else if point_in_rectangle(obj_cursor.x, obj_cursor.y, x-150, y, x-101, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 3);
		currentVolume = 3;
		audio_master_gain(3/10);
		ini_close();
	}
}
else if point_in_rectangle(obj_cursor.x, obj_cursor.y, x-100, y, x-51, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 4);
		currentVolume = 4;
		audio_master_gain(4/10);
		ini_close();
	}
}
else if point_in_rectangle(obj_cursor.x, obj_cursor.y, x-50, y, x+1, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 5);
		currentVolume = 5;
		audio_master_gain(5/10);
		ini_close();
	}
}
else if point_in_rectangle(obj_cursor.x, obj_cursor.y, x, y, x+49, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 6);
		currentVolume = 6;
		audio_master_gain(6/10);
		ini_close();
	}
}
else if point_in_rectangle(obj_cursor.x, obj_cursor.y, x+50, y, x+99, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 7);
		currentVolume = 7;
		audio_master_gain(7/10);
		ini_close();
	}
}
else if point_in_rectangle(obj_cursor.x, obj_cursor.y, x+100, y, x+149, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 8);
		currentVolume = 8;
		audio_master_gain(8/10);
		ini_close();
	}
}
else if point_in_rectangle(obj_cursor.x, obj_cursor.y, x+150, y, x+199, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 9);
		currentVolume = 9;
		audio_master_gain(9/10);
		ini_close();
	}
}
else if point_in_rectangle(obj_cursor.x, obj_cursor.y, x+200, y, x+255, y+60)
{
	if mouse_check_button(1)
	{
		ini_open("settings.ini");
		ini_write_real("Audio", "Volume", 10);
		currentVolume = 10
		audio_master_gain(1);
		ini_close();
	}
}