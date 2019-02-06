

function flame_drawImageScreenPercent(image, percent, pos_x_percent, pos_y_percent)

    local tam_x = love.graphics.getWidth();
    local tam_y = love.graphics.getHeight();

    pos_x_per = (tam_x * pos_x_percent) / 100 / 2;
    pos_y_per = (tam_y * pos_y_percent) / 100 / 2;

    tam_x = ((tam_x / image:getWidth()) * percent) / 100;
    tam_y = ((tam_y / image:getHeight()) * percent) / 100;

    love.graphics.draw(image, pos_x_per, pos_y_per, 0, tam_x, tam_y);

end
