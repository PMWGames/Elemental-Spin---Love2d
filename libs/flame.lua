

function flame_drawImageScreenPercent(image, percent, pos_x_percent, pos_y_percent)

    local tam_x = love.graphics.getWidth();
    local tam_y = love.graphics.getHeight();

    local img_pos_x = flame_getPositionScreenPercentX(pos_x_percent) / 2
    local img_pos_y = flame_getPositionScreenPercentY(pos_y_percent) / 2

    local img_tam_x = ((tam_x / image:getWidth()) * percent) / 100;
    local img_tam_y = ((tam_y / image:getHeight()) * percent) / 100;

    love.graphics.draw(image, img_pos_x, img_pos_y, 0, img_tam_x, img_tam_y);

end

function flame_drawAnimScreenPercent(lst_frames, percent, quad_w, quad_y, pos_x_percent, pos_y_percent, lst_index)

    local tam_x = love.graphics.getWidth();
    local tam_y = love.graphics.getHeight();

    local img_pos_x = flame_getPositionScreenPercentX(pos_x_percent) / 2
    local img_pos_y = flame_getPositionScreenPercentY(pos_y_percent) / 2

    local img_tam_x = ((tam_x / lst_frames[0]:getWidth()) * percent) / 100;
    local img_tam_y = ((tam_y / lst_frames[0]:getHeight()) * percent) / 100;

    --local img_tam_x = ((tam_x / quad_w) * percent) / 100;
    --local img_tam_y = ((tam_y / quad_y) * percent) / 200;

    print(img_tam_x .. " | " .. img_tam_y)

    love.graphics.draw(lst_frames[0], lst_frames[lst_index], img_pos_x, img_pos_y, 0, img_tam_x, img_tam_y);

end

function flame_getPositionScreenPercentX(percent)

    local tam_x = love.graphics.getWidth();

    return tam_x * percent / 100;

end

function flame_getPositionScreenPercentY(percent)

    local tam_y = love.graphics.getHeight();

    return tam_y * percent / 100;

end
