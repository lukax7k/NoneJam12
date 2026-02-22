// Controle do player

velv = 0
max_velv = 8
max_velv_esc = 3

velh = 0
max_velh = 2
max_velh_correndo = 5
max_velh_aplicada = max_velh

grav = .4

left = 0
right = 0
jump = 0
down = 0
correr = 0
pega_portal = 0
interagir = 0

portal = false
pedestal_1 = false
pedestal_2 = false

estado = "parado"

colisoes = [obj_chao]

chao = false
teto = false
escada = false
escada_topo = false

vida = 3

timer_invencivel = 0
tempo_invencivel = 90

tomando_ricochete = false




pega_input = function()
{
    left = keyboard_check(vk_left)
    right = keyboard_check(vk_right)
    jump = keyboard_check(vk_up)
    down = keyboard_check(vk_down)
    pega_portal = keyboard_check_pressed(vk_tab)
    interagir = keyboard_check_pressed(ord("E"))
    correr = keyboard_check(vk_shift)
    
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
    var _portal = instance_position(x, y, obj_portal)
    
    if (_portal != noone)
    {
        x = lerp(x, _portal.x, .2)
        y = lerp(y, _portal.y, .2)
        
        if (point_distance(x, y, _portal.x, _portal.y) < 10)
        {
            image_alpha = 0
        }
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
            global.artefato_1 = true;
        }
        
        // Se o jogador esta com o artefato 1
        if (global.artefato_1)
        {
            if (pedestal_2 && interagir)
            {
                global.artefato_2 = true;
                global.artefato_1 = false;
                
                global.primeiro_artefato = true
            }
        }
        
        if (pedestal_2 && interagir)
        {
            global.artefato_2 = true;
        }
        
        // Se o jogador esta com o artefato 2
        if (global.artefato_2)
        {
            if (pedestal_1 && interagir)
            {
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
            global.artefato_2 = false;
            global.segundo_artefato = true;
        }
        
        if (pedestal_2 && interagir && global.artefato_1 )
        {
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
        image_xscale = 1
    }
    else if (velh < 0)
    {
        image_xscale = -1
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

aplica_vel = function()
{
    checa_chao()
    arruma_dir()
    
    if (!tomando_ricochete)
    {
       velh = (right - left) * max_velh_aplicada
    }
    
    if (!chao)
    {
        
            velv += grav
        
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
    
    if (teto && velv < 0)
    {
        velv = 0;
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
            velv = (down - jump) * max_velv_esc;
            
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
    
    if (velh >= 0)
    {
        velh = -5
        velv = -10
    }
    else 
    {
    	velh = 5
        velv = -10
    }
    
    alarm[0] = 15
}

toma_dano = function(_dano = 1)
{
    if (timer_invencivel > 0) return;
    
    vida -= _dano
    ricochete_dano()
    timer_invencivel = tempo_invencivel
    
    if (vida <= 0)
    {
        global.morreu = true;
        instance_destroy()
    }
}

maquina_de_estados = function()
{
    switch(estado)
    {
        case "parado":
        {
            aplica_vel()
            
            sprite_index = spr_player_idle;
            image_speed = 1;
            
            if (right xor left)
            {
                estado = "andando"
            }
            
            if (velv != 0)
            {
                estado = "pulando"
            }
            
            if (escada && jump)
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
           
            //sprite_index = spr_player_walk
            
            if (velh == 0)
            {
                estado = "parado"
            }
            
            if (velv != 0)
            {
                estado = "pulando"
            }
            
            if (escada && jump)
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
            
            // sprite_index = spr_player_jump
            
            if (chao)
            {
                estado = "parado"
            }
            
            if (escada && jump)
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
            //sprite_index = spr_player_climb
            
            if (jump xor down)
            {
                image_speed = 1;
            }
            else 
            {
                image_speed = 0;	
            }
            
            var _escada = instance_position(x, y, obj_escada)
            
            if (_escada != noone)
            {
              x = lerp(x, _escada.x, .1)  
            }
            
            
            if (!escada)
            {
                estado = "parado"
                image_speed = 1;
            }
            
        }
        break;
    
    }
}

