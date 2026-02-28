if (!anti_grav && !global.mundo_invertido)
{
    if (mouse_check_button(mb_left))
    {
        toca_som(snd_bolha) 
        anti_grav = true
    }
}