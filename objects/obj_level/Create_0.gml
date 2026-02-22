global.mundo_invertido = false

global.artefato_1 = false

global.artefato_2 = false

global.primeiro_artefato = false

global.segundo_artefato = false

global.pause = false

global.morreu = false

if (!instance_exists(obj_menu))
{
    instance_create_layer(x, y, "Menu", obj_menu)
}