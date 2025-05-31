



if(enter)
{
	if(mouse_check_button_pressed(mb_left))
	{
		layer_sequence_create("transition", 0, 0, sq_in);
		audio_play_sound(snd_interact,1,0)
		global.destine = destine
	}
}