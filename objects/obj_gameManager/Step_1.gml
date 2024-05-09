if (alarm_get(0)/game_get_speed(gamespeed_fps)%60 == 0)
{
	wave++;
}

if (alarm_get(0)/game_get_speed(gamespeed_fps)%31 == 0)
{
	switch(wave)
	{
		case 1:
		
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy2);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy2);
		
		break;
		case 2:
		
		break;
		case 3:
		
		break;
		case 4:
		
		break;
		case 5:
		
	}
}

if (alarm_get(0)/game_get_speed(gamespeed_fps)%15 == 0)
{
	switch(wave)
	{
		case 1:
		
		break;
		case 2:
		
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy2);
		
		break;
		case 3:
		
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy3);
		
		break;
		case 4:
		
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy3);
		
		break;
		case 5:
		
	}
}

if (alarm_get(0)/game_get_speed(gamespeed_fps)%10 == 0)
{
	switch(wave)
	{
		case 1:
		
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		
		break;
		case 2:
		
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		
		break;
		case 3:
		
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy2);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy2);
		
		break;
		case 4:
		
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy1);
		instance_create_layer(random(room_width/2)+room_width/4, -64, "Instances", obj_enemy2);
		
		break;
		case 5:
		
	}
}