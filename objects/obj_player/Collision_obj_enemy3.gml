if (!immune)
{
	hitPoints--;
	instance_destroy(other);

	if (hitPoints == 2)
	{
		self.sprite_index = spr_player2
	}
	else if (hitPoints == 1)
	{
		self.sprite_index = spr_player3;
	}
	immune = true;
	alarm_set(1, game_get_speed(gamespeed_fps)*2);
}