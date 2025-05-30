      // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//inputs
global.inputs = {
	
	//teclas pressionadas
	left_p:false,	
	right_p:false,	
	
	left:false,	
	right:false,
	jump:false,
	interact:false
}
	
player_cord = {

	x:false,
	y:false
}


function scr_inputs(_bool)
{
	if(!_bool) return;
	
	var _i = global.inputs
	
	_i.left = keyboard_check(ord("A"))
	_i.right = keyboard_check(ord("D"))
	_i.jump = keyboard_check_pressed(vk_space)
	_i.interact = keyboard_check(vk_enter)

	
	
	_i.left_p = keyboard_check_pressed(ord("A"))
	_i.right_p = keyboard_check_pressed(ord("D"))
	

}


