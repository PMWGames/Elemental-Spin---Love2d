require "libs/flame"
require "libs/gooiComponents"

function cenaMenu_load()

    fundo = love.graphics.newImage("cenaMenu/backgroud.png")

    logo = love.graphics.newImage("cenaMenu/dragon.png")

end

function cenaMenu_update(dt)

end

function cenaMenu_draw()


    flame_drawImageScreenPercent(fundo, 101, 0, -1)

    flame_drawImageScreenPercent(logo, 100, 0, 0)

end
