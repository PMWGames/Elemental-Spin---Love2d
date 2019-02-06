require "libs/flame"

function cenaMenu_load()
    fundo = love.graphics.newImage("cenaMenu/background.png")
    logo = love.graphics.newImage("cenaMenu/dragon.png")
end

function cenaMenu_update(dt)

end

function cenaMenu_draw()
    flame_drawImageScreenPercent(fundo, 100, 0, 0)
    flame_drawImageScreenPercent(logo, 100, 0, 0)

end
