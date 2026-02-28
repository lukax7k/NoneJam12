if (keyboard_check_pressed(vk_f11))
{
    window_set_fullscreen(!window_get_fullscreen())
}

if (!global.trava_inicio)
{
    indo_pro_lado()
    pega_input()
    controla_save()
}

show_debug_message(global.musica_atual)