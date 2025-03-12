/*
evento create:
é o efeito de criação de um objeto, em que serão declaradas suas variáveis iniciais, que serão
eventualmente alteradas utilizando o efeito step
*/

/* COMO FUNCIONAM VARIÁVEIS NA GML
basicamente, assim como em python e JS, você não precisa especificar o tipo
de dado que aquela variável vai abordar, ou seja, você só declara ela statando seu
valor, este podendo ser boolean, inteiro, double, ou strings. 

ao se usar a palavra chave "var" antes de você declarar uma variavel, você 
vai estar criando uma variável de INSTÂNCIA, que será utilizável somente dentro 
do evento em que você a criou

do caso contrário, ao criar sem a palavra chave "var", você está criando uma variável
que pode ser utilizada dentro do objeto como um todo
*/
gravidade = 0.3;
velocidade = 0.1;
velocidade_chao = velocidade;
velocidade_ar = 0.4;
velocidade_horizontal = 0;
velocidade_vertical = 0;
velocidade_h_max = 6;
pulo = 11;
dir_hab = 0;

global.checkpoint_x = x;
global.checkpoint_y = y;

cd_hab = 1 * 60;
cd_hab_max = cd_hab;

//habilidade Animação
hab_a = 0;












