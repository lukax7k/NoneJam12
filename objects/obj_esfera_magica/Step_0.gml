if (!global.pause)
{
    avancando()
    
    if (global.mundo_invertido)
    {
        if (!array_contains(colisoes, obj_chao))
        {
            array_push(colisoes, obj_chao)
        }
    }
    else 
    {
    	if (array_contains(colisoes, obj_chao))
        {
            var _idx = array_get_index(colisoes, obj_chao)
            array_delete(colisoes, _idx, 1)
        }
    }
    
    destruindo()
    
    if (destruir)
    {
        me_destruindo()
    }
}

else 
{
    speed = 0	
}