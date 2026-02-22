tamanho = 32;

cols = ceil(camera_get_view_width(view_camera[0]) / tamanho);

linhas = ceil(camera_get_view_height(view_camera[0]) / tamanho);

img = 0;

img_vel = sprite_get_speed(spr_quad_transition) / game_get_speed(gamespeed_fps)

img_num = sprite_get_number(spr_quad_transition) -1

entrando = true

cor = make_colour_rgb(81, 40, 97)