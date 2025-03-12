if(place_meeting(x, y, obj_dorp)) {
	global.checkpoint_x = x;
	global.checkpoint_y = y - obj_dorp.sprite_height;
}