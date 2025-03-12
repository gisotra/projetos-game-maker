{ /////////////// MOVIMENTAÇÃO ///////////////
	var esquerda = keyboard_check(ord("A"));
	var direita = keyboard_check(ord("D"));
	
	
	var avanco_horizontal = (direita - esquerda) * vel_max;
	velh = lerp(velh, avanco_horizontal, val_decimal);

	if(velh > 0){
		dir_walk = 1;
	} else if(velh < 0){
		dir_walk = -1;
	}
	
	if(dir_walk == 1){
		image_xscale = 1;
	} else if(dir_walk == -1){
		image_xscale = -1;
	}
	
	if(velh != 0){
		image_index = spr_dorp_walk;
	} else {
		image_index = spr_dorp_standing_still;
	}
}

