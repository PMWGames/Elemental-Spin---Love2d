require "libs/flame"
require "libs/gooiComponents"

function cenaMenu_load()

    fundo = love.graphics.newImage("cenaMenu/background.png")

    logo = love.graphics.newImage("cenaMenu/dragon.png")


    --fonte do texto dos botões
    style = {
        font = love.graphics.newFont("fonts/Arimo-Bold.ttf", love.graphics.getWidth() / 26),
        showBorder = true,
        bgColor = {0.208, 0.220, 0.222}
    }
    gooi.setStyle(style)

    --botão iniciar
    btn_iniciar_w = love.graphics.getWidth() / 5;
    btn_iniciar_h = love.graphics.getHeight() / 14;
    btn_iniciar_x = love.graphics.getWidth() / 2.35;
    btn_iniciar_y = love.graphics.getHeight() / 1.4;
    btn_iniciar = gooi.newButton({text = "Iniciar", x = btn_iniciar_x, y = btn_iniciar_y, 
                                    w = btn_iniciar_w, h = btn_iniciar_h}):onRelease(function()
        --love.event.quit()
    end):success()

    --botão sair
    btn_sair_w = love.graphics.getWidth() / 5;
    btn_sair_h = love.graphics.getHeight() / 14;
    btn_sair_x = love.graphics.getWidth() / 2.35;
    btn_sair_y = love.graphics.getHeight() / 1.2;
    btn_sair = gooi.newButton({text = "Sair", x = btn_sair_x, y = btn_sair_y, 
                                w = btn_sair_w, h = btn_sair_h}):onRelease(function()
        love.event.quit()
    end):danger()

end

function cenaMenu_update(dt)

end

function cenaMenu_draw()

    flame_drawImageScreenPercent(fundo, 101, -1, -1)

    flame_drawImageScreenPercent(logo, 60, 40, 12)


    gooi.draw()

end

function cenaMenu_mousepressed(x, y, button)  
    gooi.pressed() 
end

function cenaMenu_mousereleased(x, y, button) 
    gooi.released() 
end
