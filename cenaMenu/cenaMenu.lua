require "libs/flame"
require "libs/flameAnim"

function cenaMenu_load()

    fundo_menu = love.graphics.newImage("cenaMenu/background.png")

    logo_menu = love.graphics.newImage("cenaMenu/dragon.png")


    --Botão play (lib flameAnim que criei)
    btn_play = flameAnim.new("cenaMenu/play_button.png") --instancia da imagem que será animada, passando o path da imagem
    btn_play:createAnim(5, 5, 25, 22)                    --define qtd rows, qtd cols, ultimo sprite, velocidade animação
    btn_play:setPosXYPercent(50, 80)                          --define posição na tela em pixels
    btn_play:setSizePercent(30)                      --define tamanho em escala

end

function cenaMenu_update(dt)

    btn_play:update(dt)

end

function cenaMenu_draw()

    flame_drawImageScreenPercent(fundo_menu, 101, -1, -1)

    flame_drawImageScreenPercent(logo_menu, 60, 40, 12)

    btn_play:anim()

end

function cenaMenu_mousepressed(x, y, button)  
    
end

function cenaMenu_mousereleased(x, y, button) 
    
end
