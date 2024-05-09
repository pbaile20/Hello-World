self.facing = point_direction(x, y, obj_cursor.x, obj_cursor.y);
if (!self.dashing)
{
	if keyboard_check(ord("S")) && keyboard_check(ord("A"))
	{
		direction = 225;
	}
	else if keyboard_check(ord("S")) && keyboard_check(ord("D"))
	{
		direction = 315;
	}
	else if keyboard_check(ord("W")) && keyboard_check(ord("A"))
	{
		direction = 135;
	}
	else if keyboard_check(ord("W")) && keyboard_check(ord("D"))
	{
		direction = 45;
	}
	else if keyboard_check(ord("W"))
	{
		direction = 90;
	}
	else if keyboard_check(ord("D"))
	{
		direction = 0;
	}
	else if keyboard_check(ord("S"))
	{
		direction = 270;
	}
	else if keyboard_check(ord("A"))
	{
		direction = 180;
	}
}

self.movementDirection = point_direction(xprevious, yprevious, x, y);
show_debug_message(self.movementDirection);

if (!self.dashing && self.canMove)
{
	if keyboard_check(ord("S"))
	{
		if y>=room_height-16
		{
			y = room_height-16;
		}
		else
		{
			y += 4;
		}
	};
	if keyboard_check(ord("W"))
	{
		if y<=16
		{
			y = 16
		}
		else
		{
			y -= 4;
		}
	};
	if keyboard_check(ord("D"))
	{
		if x>=room_width-16
		{
			x=room_width-16;
		}
		else
		{
			x += 4;
		}
	};
	if keyboard_check(ord("A"))
	{
		if x<=16
		{
			x=16
		}
		else
		{
			x -= 4;
		}
	}
}

if self.canMove
{
	image_angle = self.facing;
}

if mouse_check_button(1) && self.canMove
{
	if (self.canShoot && !self.dashing)
	{
		instance_create_layer(x, y, "Bullets", obj_bullet).image_angle = self.facing;
		self.canShoot = false;
		alarm[0] = game_get_speed(gamespeed_fps)/6;
	}
}

if (self.immune)
{
	image_alpha += 0.10;
	image_alpha %= 1;
	if (!self.dashing && canMove)
	{
		obj_forcefield.visible = true;
	}
}
else
{
	obj_forcefield.visible = false;
	image_alpha = 1;
}

if keyboard_check(vk_space)
{
	
	if (self.canDash)
	{
		self.canDash = false;
		self.immune = true;
		self.dashing = true;
		alarm[1] = game_get_speed(gamespeed_fps) * .25;
		speed = 10;
		alarm[3] = game_get_speed(gamespeed_fps) * .25;
		alarm[2] = game_get_speed(gamespeed_fps) * 5;
	}
}

switch(hitPoints)
{
	case 3:
	self.sprite_index = spr_player;
	break;
	case 2:
	self.sprite_index = spr_player2;
	break;
	case 1:
	self.sprite_index = spr_player3;
	break;
	case 0:
	self.canMove = false;
	part_particles_burst(global.p_sys, x, y, prt_playerDeath);
}

if keyboard_check(ord("P"))
{
	self.canMove = false;
}