
dano = 1

spd_salva = 2

paralizado = false

cooldown_paralizado = 180
timer_paralizado = 0

colisoes = [obj_chao, obj_inimigo_2]

velv = 0
max_velv = 4

velh = 0
max_velh = 3

grav = -.2

grav_invert = false

chao = false

buraco = false
buraco_esq = false
buraco_dir = false

tempo_pedrada = irandom_range(90, 150)
timer_pedrada = tempo_pedrada
pode_rodar  = true

minha_pedra = noone

tempo_voltar = 180
timer_voltar = tempo_voltar

checa_chao = function()
{
    if (!grav_invert)
    {
        chao = place_meeting(x, y - 1, colisoes)
    }
    else 
    {
    	chao = place_meeting(x, y + 1, colisoes)
    }
    
    
    buraco_esq = !place_meeting(x - 35, y-1, colisoes)
    buraco_dir = !place_meeting(x + 35, y-1, colisoes)
}

ajusta_vel = function()
{
    if (obj_player.max_velh_aplicada == obj_player.max_velh_correndo)
    {
        max_velh = 4
    } 
    else 
    {
    	max_velh = 2
    }
}

aplica_grav_inversa = function()
{
    checa_chao()
    
    move_and_collide(velh, 0, colisoes, 12)
    move_and_collide(0, velv, colisoes, 12)
    
    if (!chao)
    {
        velv += grav
    }
    
    
    
    
}


ficar_paralizado = function()
{
    if(place_meeting(x, y, obj_esfera_magica))
    {
        var _esfera = instance_place(x, y, obj_esfera_magica)
        if (_esfera == noone) return;
        
        timer_paralizado = cooldown_paralizado
        paralizado = true
        
        _esfera.insta_destroi()
    }
}

remove_paralizia = function()
{
    if (paralizado)
    {
        if(timer_paralizado > 0)
        {
            timer_paralizado --
        }
        else 
        {
        	paralizado = false
        }
    }
}

olha_player = function()
{
    if (instance_exists(obj_player))
    {
        if (paralizado) return;
        if (obj_player.y < y)
        {
            velh = 0
            return;
        }
        if (obj_player.x < x - 180 || obj_player.x > x + 180) 
        {
            velh = 0
            return;
        }
        
        if (!pode_rodar)
        {
            velh = 0
            return;
        }
        
        ajusta_vel()
        
        var _player_x = obj_player.x
        
        if (_player_x < x - 8)
        {
            if (buraco_esq)
            {
                velh = 0
            }
            else 
            {
            	velh = -max_velh
            }
            
        }
        else if (_player_x > x + 8)
        {
            if (buraco_dir)
            {
                velh = 0
            }
            else 
            {
                velh = max_velh
            }
        }
        else 
        {
        	velh = 0
        }
    }
    
}

solta_pedra = function()
{
    if (instance_exists(obj_player))
    {
        if (paralizado) return;
        if (obj_player.y < y)
        {
            velh = 0
            return;
        }
        if (obj_player.x < x - 180 || obj_player.x > x + 180) 
        {
            velh = 0
            return;
        }
        
        if (minha_pedra == noone && pode_rodar)
        {
            minha_pedra = instance_create_layer(x, y + 30, layer, obj_pedra)
            minha_pedra.minha_aranha = id
        }
        
        if (timer_pedrada > 0 && pode_rodar)
        {
            
            
            
            timer_pedrada --
        }
        else 
        {
            timer_pedrada = irandom_range(90, 150)
            if (minha_pedra != noone)
            {
                minha_pedra.cair = true
            }
            minha_pedra = noone
        	
        }
    }
}

inverte_grav = function()
{
    if (instance_exists(obj_bolha_grav))
    {
        if (place_meeting(x, y, obj_bolha_grav))
        {
            if (mouse_check_button(mb_left))
            {
                toca_som(snd_bolha) 
                grav_invert = true
                pode_rodar = false
                grav = .2
                velh = 0
            }
        }
    }
}

voltando_top = function()
{
    if (!pode_rodar && !global.pause)
    {
        if (timer_voltar > 0)
        {
            timer_voltar --
        }
        else 
        {
            grav_invert = false
            grav = -.2
            
            checa_chao()
            
            if (chao)
            {
                
                instance_create_layer(x, y, layer, obj_inimigo_2)
                instance_destroy()
            }
        }
    }
}