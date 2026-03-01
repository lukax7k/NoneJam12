selection = false


confirm = 0

tempo_deleta = 120
timer_deleta = tempo_deleta


//checa_mouse = function()
//{
    //if (position_meeting(mouse_x, mouse_y, id))
    //{
        //global.ativo = save
        //
    //}   
//}

crescendo = function()
{
    if (global.ativo == save)
    {
        image_xscale = lerp(image_xscale, 8, .3)
    }
    else 
    {
        image_xscale = lerp(image_xscale, 2, .3)	
    }
}

confirma_save = function()
{
    if (save = global.ativo)
    {
        toca_som(snd_confirm_save)
        global.save_atual = save
        
        selection = false
        global.trava_inicio = true
        
        global.estrelinhas_temp = 0

global.estrelinhas = 0

global.estrelinhas_col_temp = [
    {id: 0, pega: false},
    {id: 1, pega: false},
    {id: 2, pega: false},
    {id: 3, pega: false},
    {id: 4, pega: false},
    {id: 5, pega: false},
    {id: 6, pega: false},
    {id: 7, pega: false},
    {id: 8, pega: false},
    {id: 9, pega: false},
    {id: 10, pega: false},
    {id: 11, pega: false},
]

global.estrelinhas_col = [
    {id: 0, pega: false},
    {id: 1, pega: false},
    {id: 2, pega: false},
    {id: 3, pega: false},
    {id: 4, pega: false},
    {id: 5, pega: false},
    {id: 6, pega: false},
    {id: 7, pega: false},
    {id: 8, pega: false},
    {id: 9, pega: false},
    {id: 10, pega: false},
    {id: 11, pega: false},
]

global.cristais_temp = 0

global.cristais = 0

global.vida_max = 3

global.vida_player = global.vida_max

global.vida_esgotada = false

global.grav_esgotada = false

global.impulso_esgotada = false

global.grav_bolha = false

global.giro_foda = false

global.levels_liberados = [
    
    { level: 0, liberado: true, concluido : false },
    { level: 1, liberado: false, concluido : false },
    { level: 2, liberado: false, concluido : false },
    { level: 3, liberado: false, concluido : false },
    { level: 4, liberado: false, concluido : false },
    { level: 5, liberado: false, concluido : false },
    { level: 6, liberado: false, concluido : false },
    { level: 7, liberado: false, concluido : false },
    { level: 8, liberado: false, concluido : false },
    { level: 9, liberado: true, concluido : false },

]

global.concluidas = 0

global.magias_totais = [
{nome: "Esfera Mágica", possui: true, icon_a: spr_esfera_icon, icon_g: spr_esfera_icon_gray, em_cooldown: false,}, 
{nome: "Bolha Gravitacional", possui: false, icon_a: spr_bolha_grav_icon, icon_g: spr_bolha_grav_icon_gray, em_cooldown: false,},
{nome: "Avanço rápido", possui: false, icon_a: spr_dash_icon, icon_g: spr_dash_icon_gray, em_cooldown: false,},
]

        
        
        
        if (file_exists("saveteste" + string(save) + ".json"))
        {
            var _transition = instance_create_layer(0, 0, "Transition", obj_transition_win)
            _transition.action = "lobby"
        
            carrega_jogo()
        }
        else 
        {
        	var _transition = instance_create_layer(0, 0, "Transition", obj_transition_win)
            _transition.action = "intro"
        }
        
        
    }
}

