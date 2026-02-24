image_speed = random_range(0.8, 1.2)

grav = .2

velv = 0
max_velv = 4

anti_grav = false
retorno = false

colisoes = [obj_chao]

tempo_antigrav = 300
timer = tempo_antigrav

coletada = false


aplica_grav = function()
{
    move_and_collide(0, velv, colisoes, 12)
    
    if (anti_grav)
    {
        velv += grav
        velv = clamp(velv, -max_velv, max_velv)
    }
    
}

timer_grav = function()
{
    if (anti_grav)
    {
        if(timer > 0)
        {
            timer --
        }
        else 
        {
        	anti_grav = false
            retorno = true
            timer = tempo_antigrav
        }
    }
}

voltando = function()
{
    if (retorno)
    {
        if (y >= ystart)
        {
            velv = -2
        }
        else 
        {
        	retorno = false
            velv = 0
        }
        
    }
}


indo_embora = function()
{
    var _x_alvo = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 49
    var _y_alvo = camera_get_view_y(view_camera[0]) +33
    
    
    direction = point_direction(x, y, _x_alvo, _y_alvo)
    speed = 9
    
    if (x >= _x_alvo - 5 && y < _y_alvo + 5)
    {
        global.cristais_temp++
        instance_destroy()
    }
}