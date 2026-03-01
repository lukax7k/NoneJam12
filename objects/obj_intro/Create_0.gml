text = [
"Em meio a vastidão de um universo frio e solitário, todos nós nos perguntamos: Será que existe alguém como nós?",
"A resposta curta para essa pergunta é: Sim, existe um mundo todo *quase igual ao seu, bem mais perto do que você imagina.",
"O universo espelhado, um verdadeiro reflexo da nossa realidade, e claro, de nosso mundo",
"Cada mundo tem uma versão alternativa de si mesmo nessa outra realidade, afim de identificar, decidimos chamar os universos de Alpha e Omega",
"Os mundos normalmente não interagem entre si, mas ocasionalmente, os mundos passam por um evento chamado 'Assimilação'",
"Esse evento causa um conflito entre os mundos. Pessoas, objetos, espaços inteiros transitando entre os mundos, e é ai que entramos...",
"Nós Astromagos, somos responsáveis por arrumar essa bagunça, nosso trabalho é encontrar e restaurar os pilares que mantém os mundos estabilizados",
"O que são os pilares? Bom, na verdade são essas coisinhas fofas ai, elas parecem simples estrelas, mas não se deixe enganar, elas carregam o poder de dois universos com elas",
"Enfim, seu trabalho é colocar cada uma delas em seu mundo de origem, restaurando a ordem e garantindo a paz entre todos os mundos, yeey",
"Boa sorte pequeno aventureiro, o destino de dois mundos está sobre seus ombros, sem pressão!"
]
scribble_anim_wave(.5, .1, .1);

escrevente = scribble_typist();

escrevente.in(0.4, 3);

tempo_max = 1200
tempo_loading = tempo_max

alpha_planetas = 0
alpha_astromago = 0
alpha_estrelas = 0

idx = 0



passando_pro_level = function()
{
    if (idx < array_length(text) - 1)
    {
        if (tempo_loading > 0)
        {
            tempo_loading --
        }
        else 
        {
            idx ++
            tempo_loading = tempo_max
        }
        
        if (keyboard_check_pressed(ord("E")))
        {
            idx ++
            tempo_loading = tempo_max
        }
    }
    else 
    {
    	if (tempo_loading > 0)
        {
            tempo_loading --
        }
        else 
        {
            global.destino = rm_tutorial
            instance_create_layer(0, 0, "Transition", obj_transition_level)
        }
        
        if (keyboard_check_pressed(ord("E")))
        {
            global.destino = rm_tutorial
            instance_create_layer(0, 0, "Transition", obj_transition_level)
        }
    }
}

aparece_coisa = function()
{
    if (idx < 2)
    {
        draw_text_ext_transformed(480, 15, "Aperte [ E ] para passar", -1, -1, .15, .15, 0)
    }
    if (idx >= 2 && idx < 6)
    {
        alpha_planetas = lerp(alpha_planetas, 1, .1)
        
        draw_sprite_ext(spr_bg_intro_mundos, 0, 0, 0, 1, 1, 0, c_white, alpha_planetas)
    }
    else if (idx >= 6 && idx < 9)
    {
        alpha_astromago = lerp(alpha_astromago, 1, .1)
        draw_sprite_ext(spr_bg_astromago, 0, 400, 160, 1, 1, -30, c_white, alpha_astromago)
    
        if (idx >= 7)
        {
            alpha_estrelas = lerp(alpha_estrelas, 1, .1)
            draw_sprite_ext(spr_bg_estrela_verde, 0, 95, 100, 1, 1, 15, c_white, alpha_estrelas)
            draw_sprite_ext(spr_bg_estrela_laranja, 0, 195, 140, 1, 1, -20, c_white, alpha_estrelas)
        }
    }
    else 
    {
        alpha_astromago = lerp(alpha_astromago, 0, .1)
        draw_sprite_ext(spr_bg_astromago, 0, 400, 160, 1, 1, -30, c_white, alpha_astromago)
    	alpha_estrelas = lerp(alpha_estrelas, 0, .1)
            draw_sprite_ext(spr_bg_estrela_verde, 0, 95, 100, 1, 1, 15, c_white, alpha_estrelas)
            draw_sprite_ext(spr_bg_estrela_laranja, 0, 195, 140, 1, 1, -20, c_white, alpha_estrelas)
    }
    
}






