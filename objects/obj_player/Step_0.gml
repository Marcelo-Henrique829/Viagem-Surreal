   /// @description Insert description here
// You can write your code in this editor

vspd = clamp(vspd,-40,10)
var _i = global.inputs
scr_inputs(1)
var _move = _i.right - _i.left
swipe_sprite()
coyte()

switch(state)
{
	case "iddle":
	{
		vspd = grv + vspd
		hspd = _move * spd
		jump()
		fall()
		if(hspd != 0)
		{
			sprite_index = spr_player_run
		}
		else
		{
			sprite_index = spr_player_iddle
		}


	}
	break;
	
	case "jump":
	{
		vspd = grv + vspd
		hspd = _move * spd
		sprite_index = spr_player_jump
		if(vspd>0) state = "iddle"
		
	}
	break;
	
	case "fall":
	{
		sprite_index = spr_player_fall
		vspd = grv + vspd
		hspd = _move * spd
		if(place_meeting(x,y+1,global.tl_colide)) state = "iddle"
		jump()
	}
	break;
}


show_debug_message(coyte_time.time)










