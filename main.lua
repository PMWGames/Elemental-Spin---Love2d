require "cenaMenu/cenaMenu"
require "cenaGame/cenaGame"
require "libs/flameAnim"

function love.load()

    cena_index = 2

    controle_Cenas_Load(cena_index)

end

function love.update(dt)

    controle_Cenas_Update(cena_index, dt)

end

function love.draw()

    controle_Cenas_Draw(cena_index)

end


--funções de touch ou click
function love.mousepressed(x, y, button)  
    cenaMenu_mousepressed(x, y, button)
end
function love.mousereleased(x, y, button) 
    cenaMenu_mousereleased(x, y, button)
end

function controle_Cenas_Load(cena_index)
    if(cena_index == 1)
    then
        cenaMenu_load()
    elseif(cena_index == 2) 
    then   
        cenaGame_load()
    end
end

function controle_Cenas_Update(cena_index, dt)
    if(cena_index == 1)
    then
        cenaMenu_update(dt)
    elseif(cena_index == 2)  
    then  
        cenaGame_update(dt)
    end
end

function controle_Cenas_Draw(cena_index)
    if(cena_index == 1)
    then
        cenaMenu_draw()
    elseif(cena_index == 2)  
    then  
        cenaGame_draw()
    end
end