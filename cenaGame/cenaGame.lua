require "libs/flame"
require "libs/flameAnim"

function cenaGame_load()

    fundo_game = love.graphics.newImage("cenaGame/background.png")

end

function cenaGame_update(dt)


end

function cenaGame_draw()

     flame_drawImageScreenPercent(fundo_game, 101, -1, -1)

end

function cenaGame_mousepressed(x, y, button)  
    
end

function cenaGame_mousereleased(x, y, button) 
    
end
