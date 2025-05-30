 #region variaveis e informações necessarias para desenhar o menu
draw_set_font(fnt_comic_sans);

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
for(var i=0; i < op_max; i++){
	draw_set_halign(fa_center); //fazer os textos se alinharem horizontalmente ao centro da linha dele(igual no word)
	draw_set_valign(fa_middle); //fazer os textos se alinharem verticalmente ao centro da linha dele(igual no word)
	
	// if para checar se a opção do vetor que esta sendo analisada e escrita esta selecionada 
	if (index == i) or (point_in_rectangle(mx,my, x1 - dist/2 , y1 - dist/2 + dist*i, x1 + dist/2 , y1 + dist/2 + dist*i)){
		draw_set_color(c_aqua); //troca a cor da opção selecionada
		esc[i] = lerp(esc[i],1.4,0.15); // aumenta o tamanho do texto quando selecionado
		rot = lerp(rot,15,0.15); // adiciona a rotação do texto quando selecionado
		
		
			if (mouse_check_button_pressed(mb_left)){//checando se o mouse esta clicando em algua das opções
 
	switch opcoes[i] // Switch pra checar qual das opções está selecionada pelo mouse (esse aqui é realmente só pelo mouse)
	{
		case opcoes[0]://Novo Jogo
		room_goto(rm_character_selection)
		break;
		 
		case opcoes[1]://controles
			
			game_end()
		
		break;
		
		
	}
}
		
	}
	
	else { //para caso a opção não esteja mais selecionada
		draw_set_color(-1); //restaura a cor para o padrão(branco)
		esc[i] = lerp(esc[i], 1, 0.15); // define o tamanho do texto para o tamanho normal quando não selecionado
		rot = 0 // define a rotação do texto para 0 quando não selecionado
	} 
	 
	
	draw_text_transformed(x1, y1 + (dist*i), opcoes[i],esc[i],esc[i],rot); //escreve o texto


}
draw_set_font(-1) 
draw_set_valign(-1); //fazer os textos se alinharem verticalmente ao centro da linha dele(igual no word)

#endregion

