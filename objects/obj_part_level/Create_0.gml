ps = part_system_create(ps_part_verde)

troca_particula = function()
{
   if (global.mundo_invertido)
    {
        part_system_destroy(ps)
        
        ps = part_system_create(ps_part_laranja)
    }
    else 
    {
    	part_system_destroy(ps)
        
        ps = part_system_create(ps_part_verde)
    } 
}