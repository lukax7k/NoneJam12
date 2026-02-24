alvo = noone

tempo_up = 40
timer_up = tempo_up

tempo_down = 40
timer_down = tempo_down

up = 0
down = 0


if (instance_exists(obj_player))
{
    alvo = obj_player
}

x = alvo.x
y = alvo.y 