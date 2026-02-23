x = mouse_x
y = mouse_y

if (instance_exists(obj_player))
{
    if (obj_player.magias_player[obj_player.magia_atual].nome != "Bolha Gravitacional")
    {
        instance_destroy()
    }
}