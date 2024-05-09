if (self.canShoot && firstReached)
{
	if (irandom(19) == 0)
	{
		instance_create_layer(x, y, "Bullets", obj_enemyBullet3).direction = random(360);
	}
	else
	{
		instance_create_layer(x, y, "Bullets", obj_enemyBullet2).direction = random(360);
	}
	self.canShoot = false;
	alarm[0] = game_get_speed(gamespeed_fps)/3*2;
}

if (reached)
{
	xTravelPoint = random(room_width);
	yTravelPoint = random(room_height);
}

if firstReached
reached = mp_linear_step(xTravelPoint, yTravelPoint, 1, false);
else
firstReached = mp_linear_step(xTravelPoint, yTravelPoint, 10, false);