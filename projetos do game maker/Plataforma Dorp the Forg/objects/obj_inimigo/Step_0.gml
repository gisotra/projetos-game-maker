var chao = place_meeting(x, y + 1, obj_block);




if(place_meeting(x + 1, y, obj_collision_enemy) || place_meeting(x - 1, y, obj_collision_enemy) ){
	direction += 180;
}

if(direction == 0){
	image_xscale = 1;
}

if(direction == 180){
	image_xscale = -1;
}

if(obj_dorp.y < y){ //caso o dorp esteja em cima do inimigo
	if(place_meeting(x, y - 1, obj_dorp)){ //dorp pulou no inimigo
		if(obj_dorp.velocidade_vertical > 0){ //caso o dorp esteja caindo
			obj_dorp.velocidade_vertical = 0;
			obj_dorp.velocidade_vertical -= obj_dorp.pulo; //dorp da um pulinho
			vida -= 3; //hit-kill
		}
	}
}

if(!chao){
	velocidade_vertical += gravidade;
}