if (keyboard_check_pressed(vk_f11))
{
    window_set_fullscreen(!window_get_fullscreen())
}

if (!global.morreu and !global.in_transition and !global.loja)
{
    if (keyboard_check_pressed(ord("Q")))
    {
        global.pause = !global.pause
    }
}

passando_level()