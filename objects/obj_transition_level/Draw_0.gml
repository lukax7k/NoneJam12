for (var i = -1; i < linhas; i++)
{
    for (var j = -1; j < cols; j++)
    {
        var _img = min(max(0, img - j), img_num)
        
        draw_sprite_ext(spr_quad_transition, _img, camera_get_view_x(view_camera[0]) + j * tamanho, camera_get_view_y(view_camera[0]) + i * tamanho, 1, 1, 0, cor, 1)
    }
}