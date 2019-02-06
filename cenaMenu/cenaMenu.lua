require "libs/flame"

function cenaMenu_load()

    fundo = love.graphics.newImage("cenaMenu/backgroud.png")

end

function cenaMenu_update(dt)

end

function cenaMenu_draw()


    flame_drawImageScreenPercent(fundo, 101, 0, -1)
   

end
