    /// @description Insert description here
// You can write your code in this editor


//image_xscale = 0.15
//image_yscale = 0.15

state = "iddle"
previous_state = "";
tank_id = "blue" 


global.tl_colide  = layer_tilemap_get_id("tl_wall")

 #region movimentação
	hspd = 0;
	vspd = 0;
	spd = 5;
	grv = 0.8;
	inputs_bool = 1;
	jump_force = 16
	
	

#endregion


coyte_time = {

def_time : 5,
time : false


	
}

coyte = function()
{
	if(!place_meeting(x,y+1,global.tl_colide))
	{
		coyte_time.time--	
	}
	else
	{
		coyte_time.time = coyte_time.def_time
	}
	
}

jump = function()
{
	
	
	var _i = global.inputs

	if( _i.jump and coyte_time.time>=0)
	{
		state = "jump"
		vspd-= jump_force
		image_index = 0
	}
}

fall = function()
{
	if(!place_meeting(x,y+1,global.tl_colide) and vspd>1)
	{
	 	state = "fall"
		image_index = 0
	}
}

swipe_sprite = function()
{
	if(hspd!=0) image_xscale = sign(hspd)
}








