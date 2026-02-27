if (magias_player[magia_atual].nome == "Avanço rápido")
{
    if (estado == "escalando") return;
    draw_sprite_ext(sprite_index, -1, x, y + 3, x_scale * 1.2, y_scale * 1.2, 0, c_aqua, image_alpha /2)    
}

draw_sprite_ext(sprite_index, -1, x, y, x_scale, y_scale, 0, c_white, image_alpha)




//draw_text(x + 20, y, magia_atual)
