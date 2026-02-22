if (global.pause || global.morreu) 
{
    image_speed = 0
    exit;
}
else 
{ 
    movimento()
    pega_input()
    troca_mundos()
    contador_invencivel()
    maquina_de_estados()
    pega_artefato()
}



