 /// @description Insert description here
// You can write your code in this editor
image_xscale = scale
image_yscale = scale



scale = clamp(scale,0.5,5)


if(enter)
{
	scale = lerp(scale,1.5,0.1)
	if(image_index>=image_number-1) sprite_index  = spr_button_square
	if(mouse_check_button_pressed(mb_left)) 
	{
		global.destine = rm_level
		global.character = destine
		audio_play_sound(snd_interact,1,0)
		var _squence_in = layer_sequence_create("Transition",0,0,sq_in)
		
	}
	
	

}
else
{
	scale = lerp(scale,1,0.1)
		sprite_index  = spr_button_square

	
}
	