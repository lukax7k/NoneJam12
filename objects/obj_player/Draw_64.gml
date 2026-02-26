var _espaco = 0
if (!global.in_transition)
{
    repeat (vida) 
    {
        draw_sprite_ext(spr_ph_vida, 0, 30 + _espaco, 20, 2, 2, 0, c_white, 1)    
        
        _espaco += 76
        	
    }
}
