if (!immune)
{
	instance_destroy(other);
}
else if (immune && dashing)
{
	hitPoints++;
	part_particles_burst(global.p_sys, x, y, prt_playerHeal);
	hitPoints = min(hitPoints, 3);
	instance_destroy(other);
	immune = true;
	alarm_set(1, game_get_speed(gamespeed_fps)*2);
}