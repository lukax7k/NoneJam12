depth = 199

ativo = true

girando = false

vel_giro = 40

giro_foda = function()
{
    image_angle += vel_giro
    
    if (mouse_check_button(mb_right))
    {
        vel_giro = 40
        global.giro_foda = true
    }
    else 
    {
    	vel_giro = lerp(vel_giro, 0, .05)
        
        if (vel_giro < 1)
        {
            global.giro_foda = false
            girando = false
        }
    }
    
}