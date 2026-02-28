if (keyboard_check_pressed(vk_f11))
{
    window_set_fullscreen(!window_get_fullscreen())
}

if (!global.morreu and !global.in_transition and !global.loja)
{
    if (keyboard_check_pressed(ord("Q")))
    {
        obj_menu.option = 1
        
        global.pause = !global.pause
    }
}
if (!fiz_minha_parte)
{
    passando_level()
}

show_debug_message(global.musica_atual)