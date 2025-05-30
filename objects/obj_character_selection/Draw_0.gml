 #region variaveis e informações necessarias para desenhar o menu
draw_set_font(fnt_comic_sans);
draw_self()

var mx = mouse_x;
var my = mouse_y;

var dist = 50; // variavel que guarda a distancia de um texto para o outro
var gui_horiz = display_get_gui_width(); //variavel que guarda a largura total da tela
var gui_vert = display_get_gui_height();//variavel que guarda a altura total da tela
var x1 = gui_horiz / 2; //variavel que guarda o valor da largura pela metade, usada na localização do x dos textos
var y1 = gui_vert / 2; //variavel que guarda o valor da altura pela metade, usada na localização do y dos textos

#endregion
 
#region desenhando o menu
//laço de repetição usado para escrever os textos e atualizar a situação dele(se está selecionado ou não)
draw_text_transformed_color(x, y, "SAIR",image_xscale,image_yscale,0,color,color,color,color,1); //escreve o texto


#endregion

   