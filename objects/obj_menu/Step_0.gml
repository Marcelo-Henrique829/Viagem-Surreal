
if keyboard_check_pressed(vk_enter){
	if (index == 0){
	room_goto(rm_character_selection)//vai para a sala seguinte caso o jogador pressione enter na primeira opção
	}
	if (index == 1){
		
	}
	if (index == 2){
		game_end() // fecha o jogo caso o jogador pressione enter na ultima opção(sair)*
	}
}

