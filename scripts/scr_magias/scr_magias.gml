global.magias_totais = [
{nome: "Esfera Mágica", possui: true, icon_a: spr_esfera_icon, icon_g: spr_esfera_icon_gray},
{nome: "Bolha Gravitacional", possui: true, icon_a: spr_bolha_grav_icon, icon_g: spr_bolha_grav_icon_gray},
{nome: "sei la", possui: false, icon_a: spr_esfera_icon, icon_g: spr_esfera_icon_gray},
]


function usar_esfera_magica()
{
    var _dir = point_direction(obj_player.x, obj_player.y -10, mouse_x, mouse_y)
    
    var _esfera = instance_create_layer(obj_player.x, obj_player.y -10, "Magias", obj_esfera_magica)

    _esfera.dir = _dir
}