
if keyboard_check_pressed(vk_enter){
	if (index == 0){
	room_goto(rm_character_selection)//vai para a sala seguinte caso o jogador pressione enter na primeira opção
	}
	if (index == 1){
		
		game_end()
		
	}
	if (index == 2){
		game_end() // fecha o jogo caso o jogador pressione enter na ultima opção(sair)*
	}
}

var _i = global.inputs

if(_i.up)
{
		index--	//diminui o valor do index, fazendo ele retornar para a opção anterior do vetor
	if(index < 0){
		index = op_max-1;
	}
}
if(_i.down)
{
		index++ //adiciona mais um no index, fazendo ele explorar pelas opções indo para baixo no menu
	if(index > op_max - 1){
		index = 0;
	}
}