var _camx = camera_get_view_x(view_camera[0])
var _camy = camera_get_view_y(view_camera[0])

var _p = .95

var _p1 = .85

var _p2 = .75

draw_sprite(spr_background_ceu, 0, _camx, _camy)
draw_sprite(spr_background_level1_0, 0, _camx * _p, 512)
draw_sprite(spr_background_level1_1, 0, _camx * _p1, 532)
draw_sprite(spr_background_level1_2, 0, _camx * _p2, 552)


