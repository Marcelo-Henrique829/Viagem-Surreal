    /// @description Insert description here
// You can write your code in this editor


//image_xscale = 0.15
//image_yscale = 0.15

window_set_cursor(cr_none)
state = "iddle"
previous_state = "";
tank_id = "blue"


global.tl_colide  = layer_tilemap_get_id("tl_wall")

 #region movimentação
	hspd = 0;
	vspd = 0;
	spd = 5;
	grv = 1;
	inputs_bool = 1;
	jump_force = 15
	
	

#endregion

jump = function()
{
	var _i = global.inputs

	if(place_meeting(x,y+1,global.tl_colide) and _i.jump)
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








