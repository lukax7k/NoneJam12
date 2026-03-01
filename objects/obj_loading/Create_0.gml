randomise()

text = choose("Dica: A Esfera Mágica só atinge criaturas no mundo Alpha, no mundo Omega, ela é capaz de interagir com objetos", 
"Dica: Sempre explore bem os dois mundos para não deixar nenhum caminho passar despercebido",
"Dica: A Bolha Gravitacional afeta só você no mundo Omega, enquanto no Alpha ela interage com aquilo que não é afetado pela gravidade",
"Dica: Vidas extras estão espalhadas pelos mundos, você não pode ter mais vidas que sua vida máxima, mas pode aumenta-la comprando a melhoria na loja",
"Dica: Magias facilitam a exploração e a caça pelas estrelinhas",
"Dica: Você pode olhar para cima e para baixo segurando W ou S",
"Dica: Interagir com inimigos paralizados não te causa dano, mas você só pode paraliza-los no mundo Alpha",
"Aviso: Girar o cajado é legal")

tempo_loading = 480

passando_pro_level = function()
{
    if (tempo_loading > 0)
    {
        tempo_loading --
    }
    else 
    {
        instance_create_layer(0, 0, "Transition", obj_transition_level)
    }
    
    if (keyboard_check_pressed(ord("E")))
    {
        instance_create_layer(0, 0, "Transition", obj_transition_level)
    }
}