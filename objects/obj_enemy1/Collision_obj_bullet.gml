hitPoints--;
instance_destroy(other);
part_particles_burst(global.p_sys, x, y, prt_enemyHit1);
if (hitPoints <= 0)
{
	instance_destroy();
}
