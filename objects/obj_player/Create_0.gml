/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

enum ESTADO_PLAYER
{
	PARADO,
	MOVENDO,
	DASH
}

vel_v = 0
vel_h = 0
max_vel_h = 6
max_vel_v = 8

avanco_h = 0
acel_chao = 0.1
acel_ar = 0.07
acel = acel_chao

chao = false
grav = 0.3
estado = ESTADO_PLAYER.MOVENDO

function pular()
{
	vel_v = -max_vel_v
}

function gravita()
{
	vel_v += grav
}