if (self.canShoot && firstReached)
{
	instance_create_layer(x, y, "Bullets", obj_enemyBullet1).direction = 45 + variance;
	if (irandom(19) == 0)
	{
		instance_create_layer(x, y, "Bullets", obj_enemyBullet3).direction = 135 + variance;
	}
	else
	{
		instance_create_layer(x, y, "Bullets", obj_enemyBullet2).direction = 135 + variance;
	}
	instance_create_layer(x, y, "Bullets", obj_enemyBullet1).direction = 225 + variance;
	if (irandom(19) == 0)
	{
		instance_create_layer(x, y, "Bullets", obj_enemyBullet3).direction = 315 + variance;
	}
	else
	{
		instance_create_layer(x, y, "Bullets", obj_enemyBullet2).direction = 315 + variance;
	}
	variance += 10;
	variance %= 360;
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