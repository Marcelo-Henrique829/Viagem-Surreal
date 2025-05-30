/// @description Insert description here
// You can write your code in this editor
 #region variaveis e informações necessarias para desenhar o menu
draw_set_font(fnt_comic_sans);
draw_set_halign(fa_center)
var _i = global.inputs



var _x_player = obj_player.x
var _y_player = obj_player.y

var dist = point_distance(x,y,_x_player,_y_player); // variavel que guarda a distancia de um texto para o outro
var gui_horiz = display_get_gui_width(); //variavel que guarda a largura total da tela
var gui_vert = display_get_gui_height();//variavel que guarda a altura total da tela
var x1 = gui_horiz / 2; //variavel que guarda o valor da largura pela metade, usada na localização do x dos textos
var y1 = gui_vert / 2; //variavel que guarda o valor da altura pela metade, usada na localização do y dos textos

#endregion

#region desenhando o menu

if(dist<50)
{
	draw_text_transformed(x, y, string(text),image_xscale,image_yscale,0); //escreve o texto
	if(_i.interact)
	{
		var camera_x_ = camera_get_view_x(view_camera[0]);
		var camera_y_ = camera_get_view_y(view_camera[0]);

		layer_sequence_create("transition", camera_x_, camera_y_, sq_in);
		global.destine = destine 
	}
}  

#endregion

draw_set_halign(-1)
draw_set_font(-1); 