//CASO EU VÁ COLIDIR COM O BLOCK NA MINHA PROXIMA POSIÇÃO X
if(place_meeting(x + velocidade_horizontal, y, obj_block)){ //true 

	/*basicamente, esse while vai fazer o papel de mover o player pixel por pixel até ele 
	bater na parede e parar, com isso, caso ele tivesse uma velocidade muito grande, ele
	ia atravessar a mesma
	*/
	while(!place_meeting(x + sign(velocidade_horizontal), y, obj_block)){
		x += sign(velocidade_horizontal);
	}
	
	velocidade_horizontal = 0;

	
}

if(place_meeting(x, y + velocidade_vertical, obj_block)){
	while(!place_meeting(x, y + sign(velocidade_vertical), obj_block)) {
		y += sign(velocidade_vertical);
	}
	velocidade_vertical = 0;
}

	
//se não houver colisão, o objeto se move normalmente
x += velocidade_horizontal;

y += velocidade_vertical;

/*
função place_meeting:
	sintaxe: 
	place_meeting(x, y, obj);

	função: como o nome já dá o indicativo, é uma função que verifica uma COLISÃO entre
	o objeto encapsulado e o passado como parâmetro, nas coordenadas x e y passadas. Essa é 
	uma função BOOLEANA, ou seja, retorna true para "sim" e false para "não"
*/

//se houver colisão ao tentar se mover na direção horizontal,
//então precisamos corrigir a posição para não atravessar a parede.

	
/*
	Esse while move o objeto até encostar na parede sem atravessá-la.

    sign(velocidade_horizontal) retorna 1 ou -1, indicando a direção do movimento.
    Enquanto não houver colisão na próxima posição, o objeto é movido de pixel em pixel nessa direção.
*/