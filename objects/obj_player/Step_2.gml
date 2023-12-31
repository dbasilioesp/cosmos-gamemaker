/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (place_meeting(x + vel_h, y, obj_plat))
{
	while(!place_meeting(x + sign(vel_h), y, obj_plat))
	{
		x += sign(vel_h)
	}
	vel_h = 0
}

if (place_meeting(x, y + vel_v, obj_plat))
{
	while(!place_meeting(x, y + sign(vel_v), obj_plat))
	{
		y += sign(vel_v)
	}
	vel_v = 0
}

vel_v = clamp(vel_v, -max_vel_v, max_vel_v)

x += vel_h
y += vel_v








