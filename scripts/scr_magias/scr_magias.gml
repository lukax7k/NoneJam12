global.magias_totais = [
{nome: "Esfera Mágica", possui: true, icon_a: spr_esfera_icon, icon_g: spr_esfera_icon_gray, em_cooldown: false,}, 
{nome: "Bolha Gravitacional", possui: true, icon_a: spr_bolha_grav_icon, icon_g: spr_bolha_grav_icon_gray, em_cooldown: false,},
{nome: "Avanço rápido", possui: false, icon_a: spr_dash_icon, icon_g: spr_dash_icon_gray, em_cooldown: false,},
]


function usar_esfera_magica()
{
    var _dir = point_direction(obj_player.x, obj_player.y -10, mouse_x, mouse_y)
    
    var _esfera = instance_create_layer(obj_player.x, obj_player.y -10, "Magias", obj_esfera_magica)

    _esfera.dir = _dir
}