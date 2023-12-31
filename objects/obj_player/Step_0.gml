/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _right = keyboard_check(ord("D"))
var _left = keyboard_check(ord("A"))
var _jump = keyboard_check(ord("K"))


chao = place_meeting(x, y + 1, obj_plat)
avanco_h = 0
acel = chao ? acel_chao : acel_ar

if (_right)
{
	avanco_h = max_vel_h
}

if (_left)
{
	avanco_h = -max_vel_h
}

switch(estado)
{
	case ESTADO_PLAYER.PARADO:
		vel_h = 0
		vel_v = 0
		
		if (_jump && chao)
		{
			pular()
		}
		
		if (abs(vel_h) > 0 || abs(vel_v) > 0 || _left || _right)
		{
			estado = ESTADO_PLAYER.MOVENDO
		}
	
	break;
	
	case ESTADO_PLAYER.MOVENDO:
	
		if (!chao)
		{
			gravita()
		}
		
		if (_jump && chao)
		{
			pular()
		}

		vel_h = lerp(vel_h, avanco_h, acel)
	
	break;
	
	case ESTADO_PLAYER.DASH:
	
	break;
}