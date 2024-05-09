if (!immune)
{
	hitPoints--;
	instance_destroy(other);
	immune = true;
	alarm_set(1, game_get_speed(gamespeed_fps)*2);
}