/// @description MOVE LEFT

//If the player is not dead, you can move.
if (!obj_game_manager.chicken_dead) //isso seria o equivalente a uma função de retorno booleano? 
{
	// The minus sign before the variable indicates leftward movement.
	horizontal_speed = -move_speed;
}