/*
evento step:
essa ação ocorre "sempre"/"no decorrer do programa inteiro"
*/
//'chao' seriao  o equivalente a uma variavel booleana
var chao = place_meeting(x, y + 1, obj_block);

var esquerda = keyboard_check(ord("A")); //retorno booleano
var direita = keyboard_check(ord("D")); //retorno booleano
var habilidade = keyboard_check_pressed(ord("O")); //retorno booleano
var pulando = keyboard_check_pressed(ord("W")); //retorno booleano

//avanco_h ( (1 ou 0) - (1 ou 0) * 6
var avanco_h = (direita - esquerda) * velocidade_h_max;

//isso faz com q o inicio da movimentação do meu player seja devagar mas acelere suavemente, até a v ideal
//ele vai de 0 ao valor do avanco de forma lenta, especificamente, com um fator de 0.1

velocidade_horizontal = lerp(velocidade_horizontal, avanco_h, velocidade);

if(abs(velocidade_horizontal) < 0.6) {
	velocidade_horizontal = 0;
}

if(velocidade_horizontal < 0) {
	image_xscale = -1;
}
	
if(velocidade_horizontal > 0) {
	image_xscale = 1;
}

if(instance_exists(obj_inimigo) && !y < obj_inimigo.y){
	if(place_meeting(x, y, obj_inimigo)){
		if(!velocidade_vertical > 0){
			x = global.checkpoint_x;
			y = global.checkpoint_y;
		}
	}

}



if(!chao) { //se eu não estou no chão
	if(hab_a == 0){
		if(velocidade_vertical < 0){
			sprite_index = spr_dorp_jump;
		} else if(velocidade_vertical > 0){
			sprite_index = spr_dorp_fall;
		}
	}
	velocidade = velocidade_ar;
	velocidade_vertical += gravidade; //começo a cair 
}


else { //eu estou no chão
	if(hab_a == 0){
	if(velocidade_horizontal = 0){
		sprite_index = spr_dorp_idle;
	} else if(velocidade_horizontal != 0){
		sprite_index = spr_dorp_walk;
		}
	}
	velocidade = velocidade_chao;
}

if(chao && pulando){
	velocidade_vertical -= pulo; //dou o "salto" 
}



//controle de velocidade pra melhorar a gameplay
velocidade_horizontal = clamp(velocidade_horizontal, -velocidade_h_max, velocidade_h_max);

if(velocidade_horizontal < 0) {
	dir_hab = 1;
}
if(velocidade_horizontal > 0) {
	dir_hab = 0;
}

if(cd_hab >= cd_hab_max){
	if(habilidade){
	
	var hab = instance_create_layer(x, y, "Player",obj_hab);
	if(dir_hab == 1) {
	hab.direction = 180;
	hab.image_xscale = -1;
}

	if(dir_hab == 0) {
	hab.direction = 0;
	hab.image_xscale = 1;
		}
		cd_hab = 0;
		hab_a = 1;
	}
} else {
	cd_hab += 1;
}


if(hab_a){
	sprite_index = spr_dorp_hab;
	if(image_index > 6){ //se o ultimo frame for passado
		hab_a = 0;
	}
}
/*
A função clamp(valor, mínimo, máximo) em GameMaker limita um valor dentro de um intervalo específico.

sintaxe:

clamp(valor, minimo, maximo);

    Se valor for menor que minimo, retorna minimo.
    Se valor for maior que maximo, retorna maximo.
    Se estiver dentro do intervalo, retorna valor normalmente.
*/

/*função da GML: LERP 
	sintaxe: 
	lerp(valor_inicial, valor_final, fator)
	essa função faz com que a transição entre o valor inicial e o valor final sejam
	transicionados de uma forma suavizada, correspondente ao "fator" dado como parâmetro,
	que é limitado entre valores de 0 a 1.
	
	exemplo:
	temos um personagem no eixo x, digamos que na posição 100, e queremos que ele vá para 
	a posição 300. 
	pra isso poderíamos usar:
	x = lerp(x, 300, 0.1)
	dessa forma, a cada frame percorrido, será andado de forma linear 10% do valor de 300,
	até o x chegar no seu objetivo
	
	função: 

*/












