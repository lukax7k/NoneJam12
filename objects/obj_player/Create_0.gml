// Controle do player

velv = 0
max_velv = 8
max_velv_esc = 3

velh = 0
max_velh = 2
max_velh_correndo = 5
max_velh_aplicada = max_velh

aceleracao = 0.8
desaceleracao = 1

grav = .4

left = 0
right = 0
jump = 0
jump_r = 0
up = 0
down = 0
correr = 0
pega_portal = 0
interagir = 0

portal = false
pedestal_1 = false
pedestal_2 = false

estado = "parado"

colisoes = [obj_chao, obj_totem, obj_totem, obj_totem_b]

chao = false
teto = false
escada = false
escada_topo = false

vida = global.vida_max

timer_invencivel = 0
tempo_invencivel = 90

tomando_ricochete = false

saindo_portal = false

magia_atual = 0
usar_magia_atual = false

cooldown_magias = 60
timer_magias = 0

magias_player = []

dash_cooldown = 0
max_dash_cooldown = 90
max_dash_duration = 10
dash_duration = max_dash_duration


minha_sprite = spr_player_idle
x_scale = 1
y_scale = 1


coyote_timer = 6
coyote_timer_atual = coyote_timer

corner_pixels = 10

dano_de_cima = false


pega_input = function()
{
    left = keyboard_check(ord("A"))
    right = keyboard_check(ord("D"))
    jump = keyboard_check(vk_space)
    jump_r = keyboard_check_released(vk_space)
    up = keyboard_check(ord("W"))
    down = keyboard_check(ord("S"))
    pega_portal = keyboard_check_pressed(vk_tab)
    interagir = keyboard_check_pressed(ord("E"))
    if(keyboard_check_pressed(vk_shift))
    {
        correr = !correr
    }
    
    usar_magia_atual = mouse_check_button_pressed(mb_left)
    
}

coyote_jump = function()
{
    checa_chao()
    
    if(!chao)
    {
        coyote_timer_atual --
    }
    else 
    {
    	coyote_timer_atual = coyote_timer
        
        
    }
}

listando_magias = function()
{
    
    var _total_magias = array_length(global.magias_totais)
    
    array_delete(magias_player, 0, _total_magias)
    
    for (var i = 0; i < _total_magias; i++) 
    {
    	if (global.magias_totais[i].possui == true )
        {
            if (!array_contains(magias_player, global.magias_totais[i]))
            {
                array_push(magias_player, global.magias_totais[i])
            }
            
        }
    }
   
}

escolhendo_magias = function()
{
    if (array_length(magias_player) > 1)
    {
        if (mouse_wheel_up())
        {
            magia_atual --
        }
        else if (mouse_wheel_down())
        {
            magia_atual ++
        }
    }
    
    if (magia_atual >= array_length(magias_player))
    {
        magia_atual = 0
    }
    else if (magia_atual < 0)
    {
        magia_atual = array_length(magias_player) -1
    }
    
    show_debug_message(magias_player)
    
    if (magias_player[magia_atual].nome == "Bolha Gravitacional")
    {
        if (estado == "escalando") return;
        if (!instance_exists(obj_bolha_grav))
        {
            if (!global.mundo_invertido)
            {
                instance_create_layer(mouse_x, mouse_y, "Player", obj_bolha_grav)
            }
            else 
            {
                instance_create_layer(x - 4 * x_scale, y - 12, "Player", obj_bolha_grav)
                
            }
        }
    }
    else if (magias_player[magia_atual].nome == "Avanço rápido")
    {
        if (dash_cooldown > 0)
        {
            dash_cooldown --
        }
        else 
        {
            if (estado == "escalando") return;
            global.magias_totais[2].em_cooldown = false
        	if (usar_magia_atual)
            {
                estado = "dash"
                global.magias_totais[2].em_cooldown = true
                dash_cooldown = max_dash_cooldown
            }
        }
        
        
    }
}

usando_magia = function()
{
    if (timer_magias > 0)
    {
        timer_magias --
    }
    else 
    {
        if (estado == "escalando") return;
        global.magias_totais[0].em_cooldown = false
    	if (usar_magia_atual)
        {
            if (magias_player[magia_atual].nome == "Esfera Mágica")
            {
               usar_esfera_magica()
                global.magias_totais[0].em_cooldown = true
                timer_magias = cooldown_magias 
            }
            
        }
    }
    
}

troca_mundos = function()
{
    portal = place_meeting(x, y, obj_portal)
    
    if (portal && interagir)
    {
        if (global.mundo_invertido)
        { 
            instance_create_layer(0, 0, "Transition", obj_transition_portal)
            
        }
        else 
        {
            instance_create_layer(0, 0, "Transition", obj_transition_portal)
        	
        }
        
    }
}

entrando_portal = function()
{
    var _portal = instance_place(x, y, obj_portal)
    
    if (_portal != noone)
    {
        x = lerp(x, _portal.x, .2)
        y = lerp(y, _portal.y+10, .2)
        
        troca_sprite(spr_player_portal_entrando)
        if (acabou_animacao())
        {
            image_alpha = 0
        }
        saindo_portal = true
        
    }
}

pega_artefato = function()
{
    pedestal_1 = place_meeting(x, y, obj_totem_1) && !global.mundo_invertido
    pedestal_2 = place_meeting(x, y, obj_totem_2) && global.mundo_invertido
    
    if (global.segundo_artefato) return;
    
    // Se o jogador ainda n entregou o primeiro artefato
    if (!global.primeiro_artefato )
    {
        // Se o jogador interagiu com o pedestal 1
        if (pedestal_1 && interagir)
        {
            toca_som(snd_pega_estrela_1)
            global.artefato_1 = true;
        }
        
        // Se o jogador esta com o artefato 1
        if (global.artefato_1)
        {
            if (pedestal_2 && interagir)
            {
                toca_som(snd_pega_estrela_2)
                global.artefato_2 = true;
                global.artefato_1 = false;
                
                global.primeiro_artefato = true
            }
        }
        
        if (pedestal_2 && interagir)
        {
            toca_som(snd_pega_estrela_1)
            global.artefato_2 = true;
        }
        
        // Se o jogador esta com o artefato 2
        if (global.artefato_2)
        {
            if (pedestal_1 && interagir)
            {
                toca_som(snd_pega_estrela_2)
                global.artefato_1 = true;
                global.artefato_2 = false;
                
                global.primeiro_artefato = true
            }
        }
    }
    else 
    {
    	if (pedestal_1 && interagir && global.artefato_2 )
        {
            toca_som(snd_nivel_completo)
            global.artefato_2 = false;
            global.segundo_artefato = true;
        }
        
        if (pedestal_2 && interagir && global.artefato_1 )
        {
            toca_som(snd_nivel_completo)
            global.artefato_1 = false;
            global.segundo_artefato = true;
        }
    }
}


movimento = function()
{
    move_and_collide(velh, 0, colisoes, 12)
    move_and_collide(0, velv, colisoes, 12)
}

checa_chao = function()
{
    chao = place_meeting(x, y + 1, colisoes)
    teto = place_meeting(x, y - 1, colisoes)
    escada = place_meeting(x, y, obj_escada)
    // escada_topo = place_meeting(x, y, obj_escada_topo)
}

arruma_dir = function()
{
    if (estado == "tomando_dano") return;
    
    if (velh > 0)
    {
        x_scale = lerp(x_scale, 1, .4)
        //image_xscale = 1
    }
    else if (velh < 0)
    {
        x_scale = lerp(x_scale, -1, .4)
        //image_xscale = -1
    }
    else 
    {
        if (x_scale > 0)
        {
            x_scale = ceil(x_scale)
        }
        else if (x_scale < 0)
        {
            x_scale = floor(x_scale)
        }
    	
    }
}

correndo = function()
{
    if (correr)
    {
        max_velh_aplicada = max_velh_correndo
    }
    else 
    {
        
    	max_velh_aplicada = max_velh
    }
}

approach = function(valor, alvo, passo)
{
    if (valor < alvo)
    {
        return min(valor + passo, alvo)
    }
    else if (valor > alvo)
    {
        return max(valor - passo, alvo)
    }
    
    return valor
}

aplica_vel = function()
{
    checa_chao()
    
    
    if (!tomando_ricochete)
    {
        var dir = right - left
        var vel_alvo = dir * max_velh_aplicada
        
        if (dir != 0)
        {
            velh = approach(velh, vel_alvo, aceleracao)
        }
        else
        {
            velh = approach(velh, 0, desaceleracao)
        }
    }
    
    if (!chao)
    {
        if (velv <= 0)
        {
            velv += grav
        }
        else 
        {
            if (global.grav_bolha)
            {
                velv += grav/6
                
                velv = clamp(velv, 0, .8)
            }	
            else 
            {
            	velv += grav
            }
        }
        
        
        if (velv > 0 && escada_topo)
        {
            velv = 0
        }
    }
    else 
    {
        velv = 0;	
        
        y = round(y);
        
        if (jump)
        {
            toca_som(snd_jump)
            velv = -max_velv
            
        }
        
        if (escada_topo)
        {
            if (estado != "escalando")
            {
                if (!array_contains(colisoes, obj_escada))
                {
                    array_push(colisoes, obj_escada)
                }
            }
            
            if (down)
            {
                if (array_contains(colisoes, obj_escada))
                {
                    var _escada_col = array_get_index(colisoes, obj_escada)
                    array_delete(colisoes, _escada_col, 1)
                }
            }
        }
        else 
        {
            if (array_contains(colisoes, obj_escada))
            {
                var _escada_col = array_get_index(colisoes, obj_escada)
                array_delete(colisoes, _escada_col, 1)
            }
            
        }
        
        
        
    }
    
    
    
    velv = clamp(velv, -max_velv, max_velv)
}

aplica_vel_escalando = function()
    {
        
        checa_chao();
        
        // aplicando os inputs na velh
        velh = (right - left) * max_velh;
        
        
        if (place_meeting(x, y , obj_escada)) 
        {
            velv = (down - up) * max_velv_esc;
            
        }
        else if (escada_topo)
        {
            velv = down * max_velh;
            
        }
        else 
        {
            velv = 0;	
            
            y = round(y);
            
        }
        
    }

contador_invencivel = function()
{
    if (timer_invencivel > 0)
    {
        timer_invencivel --
    }
}

ricochete_dano = function()
{
    tomando_ricochete = true
    
    estado = "tomando_dano"
    
    if (!dano_de_cima)
    {
       if (velh >= 0)
       {
           velh = -5
           
       }
       else 
       { 
           velh = 5
           
       }
    
    
        velv = -10
    }
    
    alarm[0] = 15
}

toma_dano = function(_dano = 1)
{
    if (timer_invencivel > 0) return;
        
    toca_som(snd_dano)
    
    vida -= _dano
    ricochete_dano()
    timer_invencivel = tempo_invencivel
    
    if (vida <= 0)
    {
        global.morreu = true;
          
    }
}

morrendo = function()
{
    instance_create_layer(x, y, layer, obj_player_morto)
    instance_destroy()
             
}

troca_sprite = function(_sprite)
{
    if (sprite_index != _sprite)
    {
        sprite_index = _sprite; 
        
        image_index = 0;
    }
}

acabou_animacao = function()
{
    var _spd = sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
    if (image_index + _spd >= image_number)
    {
       return true;
    }
}

maquina_de_estados = function()
{
    switch(estado)
    {
        case "parado":
        {
            aplica_vel()
            
            if (acabou_animacao())
            {
                troca_sprite(spr_player_idle);
            }
            
            image_speed = 1;
            
            if (right xor left)
            {
                estado = "andando"
            }
            
            if (velv != 0)
            {
                estado = "pulando"
            }
            
            if (escada && up)
            {
                estado = "escalando"
            }
            else if (escada && down)
            {
                estado = "escalando"
            }
            
           
        }
        break;
        
        case "andando":
        {
            aplica_vel()
            image_speed = 1;
            
            if (correr)
            {
                if (acabou_animacao())
                {
                    troca_sprite(spr_player_run)
                }
                
            }
            else 
            {
                if (acabou_animacao())
                {
                    troca_sprite(spr_player_idle)
                }
                
            }
            
            
            
            if (velh == 0)
            {
                estado = "parado"
            }
            
            if (velv != 0)
            {
                estado = "pulando"
            }
            
            if (escada && up)
            {
                estado = "escalando"
            }
            else if (escada && down)
            {
                estado = "escalando"
            }
            
        }
        break;
    
        case "pulando":
        {
            aplica_vel()
            image_speed = 1;
            
          
            
            if (place_meeting(x, y + sign(velv), colisoes))
            {
                
                var _parar = true
                
                if (velv < 0) 
                {
                    if (velh >= 0)
                    {
                        for (var i = 0; i < corner_pixels; i++) 
                        {
                        	var _livre = !place_meeting(x + i, y + velv, colisoes)
                            show_debug_message(i)
                            
                            if (_livre)
                            {
                                
                                _parar = false
                                
                                x += i;
                                
                                break;
                            }
                            
                        }
                    }
                    
                    if (velv < 0 )
                    {
                        for (var i = 0; i < corner_pixels; i++) 
                        {
                        	var _livre = !place_meeting(x - i, y + velv, colisoes)
                            show_debug_message(i)
                            
                            if (_livre)
                            {
                                
                                _parar = false
                                
                                x -= i;
                                
                                break;
                            }
                        }
                    }
                    
                    
                }
                
                if (_parar) velv = 0
            }
            
            if (velv < 0)
            {
                troca_sprite(spr_player_jump_up)
               
                if(acabou_animacao())
                {
                    troca_sprite(spr_player_idle)
                }
                
                if (jump_r)
                {
                    velv *= 0.5
                }
            }
            else 
            {
                troca_sprite(spr_player_idle)	
            }
            
            if (coyote_timer_atual && jump)
            {
                velv = -max_velv
                
                coyote_timer_atual = 0
            }
          
            
            if (chao)
            {
                estado = "parado"
                troca_sprite(spr_player_jump_down)
            }
            
            if (escada && up)
            {
                estado = "escalando"
            }
            else if (escada && down)
            {
                estado = "escalando"
            }
            
            
        }
        break;
    
        case "tomando_dano":
        {
            aplica_vel()
            image_speed = 1;
            
            sprite_index = spr_player_damage
            
        }
        break;
        
        case "escalando":
        {
            aplica_vel_escalando()
            troca_sprite(spr_player_climb)
            
            if (up xor down)
            {
                image_speed = 1;
            }
            else 
            {
                image_speed = 0;	
            }
            
            var _escada = instance_place(x, y, obj_escada)
            
            if (_escada != noone)
            {
              x = lerp(x, _escada.x, .06)  
            }
            
            
            if (!escada)
            {
                estado = "parado"
                image_speed = 1;
            }
            
        }
            
        break;
    
        case "dash": 
        {
           
            
           troca_sprite(spr_player_idle)
            
           if (dash_duration > 0)
           {
            toca_som(snd_dash)
            if (global.mundo_invertido)
            {
                x_scale = x_scale *1.2
                y_scale = .8
             
                velh = 8 * x_scale;
                velv = 0;
                dash_duration --;
                var _rastro = instance_create_layer(x, y, layer, obj_player_rastro)
                _rastro.image_xscale = x_scale
                _rastro.image_yscale = y_scale 
            }
            else 
            {
            	x_scale = x_scale * .8
                y_scale = 1.2
             
                velv = -6;
                dash_duration --;
                var _rastro = instance_create_layer(x, y, layer, obj_player_rastro)
                _rastro.image_xscale = x_scale
                _rastro.image_yscale = y_scale
            }
               
            
           }
           else 
           {
            x_scale = 1
            y_scale = 1
           	   estado = "parado";
               
               dash_cooldown = max_dash_cooldown;
               dash_duration = max_dash_duration;
           }
           
       }
    
    }
}

