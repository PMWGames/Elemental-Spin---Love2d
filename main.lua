require "cenaMenu/cenaMenu"
require "libs/flameAnim"

function love.load()

    cenaMenu_load()

end

function love.update(dt)

    cenaMenu_update(dt)

end

function love.draw()

    cenaMenu_draw()

end


--funções de touch ou click
function love.mousepressed(x, y, button)  
    cenaMenu_mousepressed(x, y, button)
end
function love.mousereleased(x, y, button) 
    cenaMenu_mousereleased(x, y, button)
end