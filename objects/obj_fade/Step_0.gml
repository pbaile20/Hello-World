if obj_player.canMove
{
	image_alpha = 0;
}
else
{
	image_alpha = fade++/120;
	newGain = audio_sound_get_gain(snd_game)-0.1;
	audio_sound_gain(snd_game, newGain, 0)
	
	if image_alpha >= 1
	{
		if obj_player.hitPoints > 0
		{
			room_goto(Victory)
		}
		else
		{
			room_goto(Loss);
		}
	}
}