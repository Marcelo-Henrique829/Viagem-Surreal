   /// @description Insert description here
// You can write your code in this editor

vspd = clamp(vspd,-40,8)
var _i = global.inputs
scr_inputs(1)
var _move = _i.right - _i.left
swipe_sprite()
coyte()



 if(room==rm_level)
{

	switch(global.character)
	{
	case 0:
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
	break;
	case 1:
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
				sprite_index = spr_frog_run
			}
			else
			{
				sprite_index = spr_frog_iddle
			}


		}
		break;
	
		case "jump":
		{
			vspd = grv + vspd
			hspd = _move * spd
			sprite_index = spr_frog_jump
			if(vspd>0) state = "iddle"
		
		}
		break;
	
		case "fall":
		{
			sprite_index = spr_frog_fall
			vspd = grv + vspd
			hspd = _move * spd
			if(place_meeting(x,y+1,global.tl_colide)) state = "iddle"
			jump()
		}
		break;
	}
	break;
	case 2:
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
				sprite_index = spr_virtual_run
			}
			else
			{
				sprite_index = spr_virtual_iddle
			}


		}
		break;
	
		case "jump":
		{
			vspd = grv + vspd
			hspd = _move * spd
			sprite_index = spr_virtual_jump
			if(vspd>0) state = "iddle"
		
		}
		break;
	
		case "fall":
		{
			sprite_index = spr_virtual_fall
			vspd = grv + vspd
			hspd = _move * spd
			if(place_meeting(x,y+1,global.tl_colide)) state = "iddle"
			jump()
		}
		break;
	}
	break;
	}
}

show_debug_message(coyte_time.time)










