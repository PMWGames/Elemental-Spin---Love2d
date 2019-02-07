

function flame_drawImageScreenPercent(image, percent, pos_x_percent, pos_y_percent)

    local tam_x = love.graphics.getWidth();
    local tam_y = love.graphics.getHeight();

    local img_pos_x = flame_getPositionScreenPercentX(pos_x_percent) / 2
    local img_pos_y = flame_getPositionScreenPercentY(pos_y_percent) / 2

    local img_tam_x = ((tam_x / image:getWidth()) * percent) / 100;
    local img_tam_y = ((tam_y / image:getHeight()) * percent) / 100;

    love.graphics.draw(image, img_pos_x, img_pos_y, 0, img_tam_x, img_tam_y);

end

function flame_getPositionScreenPercentX(percent)

    local tam_x = love.graphics.getWidth();

    return tam_x * percent / 100;

end

function flame_getPositionScreenPercentY(percent)

    local tam_y = love.graphics.getHeight();

    return tam_y * percent / 100;

end
