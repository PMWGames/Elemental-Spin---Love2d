

function flame_drawImageScreenPercent(image, percent, pos_x, pos_y)

    local tam_x = love.graphics.getWidth();
    local tam_y = love.graphics.getHeight();

    tam_x = ((tam_x / image:getWidth()) * percent) / 100;
    tam_y = ((tam_y / image:getHeight()) * percent) / 100;

    love.graphics.draw(image, pos_x, pos_y, 0, tam_x, tam_y);

end
