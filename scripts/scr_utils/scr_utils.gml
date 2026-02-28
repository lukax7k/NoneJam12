global.destino = noone

global.in_transition = false

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


function usar_esfera_magica()
{
    
    toca_som(snd_magia_1)
    
    var _dir = point_direction(obj_player.x, obj_player.y -13, mouse_x, mouse_y)
    
    var _esfera = instance_create_layer(obj_player.x, obj_player.y -13, "Magias", obj_esfera_magica)

    _esfera.dir = _dir
}

// salvando

global.save_atual = 1;

function salvar_jogo()
{
    
    var _data_player =
    {
        vidas : global.vida_max,
        estrelas : global.estrelinhas,
        concluidas : global.concluidas,
        cristais : global.cristais,
    }
    
    var _data_magias = 
    {
        esfera : global.magias_totais[0].possui,
        bolha : global.magias_totais[1].possui,
        dash : global.magias_totais[2].possui,
    }
    
    var _data_loja = 
    {
        vidas : global.vida_esgotada,
        bolha : global.grav_esgotada,
        dash : global.impulso_esgotada,
    }
    
    var _data_estrelas = 
    {
        estrela_0 : global.estrelinhas_col[0].pega,
        estrela_1 : global.estrelinhas_col[1].pega,
        estrela_2 : global.estrelinhas_col[2].pega,
        estrela_3 : global.estrelinhas_col[3].pega,
        estrela_4 : global.estrelinhas_col[4].pega,
        estrela_5 : global.estrelinhas_col[5].pega,
        estrela_6 : global.estrelinhas_col[6].pega,
        estrela_7 : global.estrelinhas_col[7].pega,
        estrela_8 : global.estrelinhas_col[8].pega,
        estrela_9 : global.estrelinhas_col[9].pega,
        estrela_10 : global.estrelinhas_col[10].pega,
        estrela_11 : global.estrelinhas_col[11].pega,
    }
    
    var _data_levels =
    {
        level_0 : global.levels_liberados[0].liberado,
        level_1 : global.levels_liberados[1].liberado,
        level_2 : global.levels_liberados[2].liberado,
        level_3 : global.levels_liberados[3].liberado,
        level_4 : global.levels_liberados[4].liberado,
        level_5 : global.levels_liberados[5].liberado,
        level_6 : global.levels_liberados[6].liberado,
        level_7 : global.levels_liberados[7].liberado,
        level_8 : global.levels_liberados[8].liberado,
        level_9 : global.levels_liberados[9].liberado,
    }
    
    var _data_concluidos =
    {
        level_0 : global.levels_liberados[0].concluido,
        level_1 : global.levels_liberados[1].concluido,
        level_2 : global.levels_liberados[2].concluido,
        level_3 : global.levels_liberados[3].concluido,
        level_4 : global.levels_liberados[4].concluido,
        level_5 : global.levels_liberados[5].concluido,
        level_6 : global.levels_liberados[6].concluido,
        level_7 : global.levels_liberados[7].concluido,
        level_8 : global.levels_liberados[8].concluido,
        level_9 : global.levels_liberados[9].concluido,
    }
    
    var _struct =
    {
        data_player : _data_player,
        data_magias : _data_magias,
        data_loja : _data_loja,
        data_estrelas : _data_estrelas,
        data_levels : _data_levels,
        data_concluidos : _data_concluidos,
    }
    
    var _data = json_stringify(_struct)
    
    var _buff = buffer_create(0, buffer_grow, 1);
    
    buffer_write(_buff, buffer_string, _data)
    
    buffer_save(_buff, string("saveteste{0}.json", global.save_atual));
    
    buffer_delete(_buff)
}



        
function carrega_jogo()
{ 
  var _arquivo = string("saveteste{0}.json", global.save_atual);
  var _buff = buffer_load(_arquivo);
  
  if (_buff == -1) 
    {
        return;
    }
  var _data = buffer_read(_buff, buffer_string)
  
  var _struct = json_parse(_data)
  
  var _data_player =  _struct.data_player
  var _data_magia = _struct.data_magias 
  var _data_loja = _struct.data_loja
  var _data_estrelas = _struct.data_estrelas
  var _data_levels = _struct.data_levels 
  var _data_concluidos = _struct.data_concluidos
  
  global.vida_max = _data_player.vidas
  global.estrelinhas = _data_player.estrelas
  global.cristais = _data_player.cristais
  
  global.magias_totais[0].possui = _data_magia.esfera
  global.magias_totais[1].possui = _data_magia.bolha 
  global.magias_totais[2].possui = _data_magia.dash 
    
  global.vida_esgotada = _data_loja.vidas
  global.grav_esgotada = _data_loja.bolha
  global.impulso_esgotada = _data_loja.dash
  
  global.estrelinhas_col[0].pega = _data_estrelas.estrela_0
  global.estrelinhas_col[1].pega = _data_estrelas.estrela_1
  global.estrelinhas_col[2].pega = _data_estrelas.estrela_2
  global.estrelinhas_col[3].pega = _data_estrelas.estrela_3
  global.estrelinhas_col[4].pega = _data_estrelas.estrela_4
  global.estrelinhas_col[5].pega = _data_estrelas.estrela_5
  global.estrelinhas_col[6].pega = _data_estrelas.estrela_6
  global.estrelinhas_col[7].pega = _data_estrelas.estrela_7
  global.estrelinhas_col[8].pega = _data_estrelas.estrela_8
  global.estrelinhas_col[9].pega = _data_estrelas.estrela_9
  global.estrelinhas_col[10].pega = _data_estrelas.estrela_10
  global.estrelinhas_col[11].pega = _data_estrelas.estrela_11
  
  global.levels_liberados[0].liberado = _data_levels.level_0
  global.levels_liberados[1].liberado = _data_levels.level_1
  global.levels_liberados[2].liberado = _data_levels.level_2
  global.levels_liberados[3].liberado = _data_levels.level_3
  global.levels_liberados[4].liberado = _data_levels.level_4
  global.levels_liberados[5].liberado = _data_levels.level_5
  global.levels_liberados[6].liberado = _data_levels.level_6
  global.levels_liberados[7].liberado = _data_levels.level_7
  global.levels_liberados[8].liberado = _data_levels.level_8
  global.levels_liberados[9].liberado = _data_levels.level_9
    
  global.levels_liberados[0].concluido = _data_concluidos.level_0
  global.levels_liberados[1].concluido = _data_concluidos.level_1
  global.levels_liberados[2].concluido = _data_concluidos.level_2
  global.levels_liberados[3].concluido = _data_concluidos.level_3
  global.levels_liberados[4].concluido = _data_concluidos.level_4
  global.levels_liberados[5].concluido = _data_concluidos.level_5
  global.levels_liberados[6].concluido = _data_concluidos.level_6
  global.levels_liberados[7].concluido = _data_concluidos.level_7
  global.levels_liberados[8].concluido = _data_concluidos.level_8
  global.levels_liberados[9].concluido = _data_concluidos.level_9
    
    buffer_delete(_buff)
}      


function checa_estrelas()
{
    global.concluidas = 0
    global.estrelinhas = 0
    
    var _arquivo = string("saveteste{0}.json", global.ativo);
    var _buff = buffer_load(_arquivo);
    
    if (_buff == -1) 
    {
        return;
    }
    var _data = buffer_read(_buff, buffer_string)
    
    var _struct = json_parse(_data)
    
    var _data_player =  _struct.data_player
    var _data_concluidos = _struct.data_concluidos
    
    global.estrelinhas = _data_player.estrelas
    
    global.levels_liberados[0].concluido = _data_concluidos.level_0
    global.levels_liberados[1].concluido = _data_concluidos.level_1
    global.levels_liberados[2].concluido = _data_concluidos.level_2
    global.levels_liberados[3].concluido = _data_concluidos.level_3
    global.levels_liberados[4].concluido = _data_concluidos.level_4
    global.levels_liberados[5].concluido = _data_concluidos.level_5
    global.levels_liberados[6].concluido = _data_concluidos.level_6
    global.levels_liberados[7].concluido = _data_concluidos.level_7
    global.levels_liberados[8].concluido = _data_concluidos.level_8
    global.levels_liberados[9].concluido = _data_concluidos.level_9
   
    for (var i = 0; i < array_length(global.levels_liberados); i++) 
    {
       if (global.levels_liberados[i].concluido == true)
        {
            global.concluidas += 1
        }
    }
    
    buffer_delete(_buff)
    
}

// Troca audio

global.musica_atual = noone
global.musica_asset = noone

function tira_musica()
{
    if (global.musica_atual != noone)
    {
        if (audio_is_playing(global.musica_atual))
        {
            audio_sound_gain(global.musica_atual, 0, 1500)
        }
    }
}

function poe_musica(_sound)
{
    
    if (global.musica_asset == _sound) return;
    
    
    if (global.musica_atual != noone)
    {
        if (audio_is_playing(global.musica_atual))
        {
            audio_sound_gain(global.musica_atual, 0, 1000)
        }
    }
    
    
    global.musica_atual = audio_play_sound(_sound, 0, true)
    global.musica_asset = _sound
    
    audio_sound_gain(global.musica_atual, 0, 0)
    audio_sound_gain(global.musica_atual, 1, 3000)
}

function toca_som(_snd)
{
    if (!audio_is_playing(_snd))
            {
                audio_play_sound(_snd, 0, 0)
            }
}



