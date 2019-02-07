flameAnim = {}
flameAnim.__index = flameAnim

function flameAnim.new(image_path)

    local self = setmetatable({}, flameAnim)

    self.image = love.graphics.newImage(image_path);
    self.x = 0
    self.y = 0
    self.width = 1
    self.height = 1
    self.speed_frames = 0
    self.last_spt = 0
    self.list_frames = {}
    self.isLoop = true
    self.id = 1
    self.dir = 1
    self.ang = 0
    self.end_loop = false
    self.world = nil

    self.body = {}
    self.body.x = 0
    self.body.y = 0
    self.body.body = nil
    self.body.mass = 0
    self.body.shape = nil
    self.body.fixture = nil
    self.body.fixtName = image_path

    return self

end

function flameAnim.createAnim(self, rows, cols, last_sprite, speed)

    local sprites_arr = {}
    sprites_arr[0] = self.image
    
    local w, h = self.image:getDimensions()

    local qX = w / cols
    local qY = h / rows

    local x = 0
    local y = 0
    local count = 1

    while (y < h) do

        while(x < w and count <= last_sprite) do
            local spt = love.graphics.newQuad(x, y, qX, qY, self.image:getDimensions())
            table.insert(sprites_arr, spt)
            count = count + 1
            x = x + qX
        end
        x = 0
        y = y + qY
    end

    self.list_frames = sprites_arr
    self.speed_frames = speed
    self.last_spt = last_sprite

end

function flameAnim.update(self, dt)
    
    if(self.world ~= nil) then
        self.body.x = self.x
        self.body.y = self.y
        self.world:update(dt)
    end

    if (self.end_loop == false) then

        self.id = self.id + (self.speed_frames * dt)

    end

end

function flameAnim.anim(self)

    if(self.id > self.last_spt + 1) then
        self.id = 1
        if(self.isLoop == false)then
            self.end_loop = true
        end
    end
    local i = math.floor(self.id)
    love.graphics.scale(self.w, self.h)
    love.graphics.draw(self.list_frames[0], self.list_frames[i], self.x, self.y, self.ang, self.dir)
    love.graphics.scale(1,1)
end

function flameAnim.setPosXY(self, x, y)
    self.x = x
    self.y = y  
end

function flameAnim.setPosX(self, x)
    self.x = x
end

function flameAnim.setPosY(self, y)

end

function flameAnim.getX(self)
    return self.x
end

function flameAnim.getY(self)
    return self.y
end

function flameAnim.setSizeScale(self, width, height)
    self.w = width
    self.h = height
end

function flameAnim.getwidthScale(self)
    return self.w
end

function flameAnim.getHeightScale(self)
    return self.h
end

function flameAnim.setLoop(self, loop)
    self.isLoop = loop
end

function flameAnim.getLoop(self)
    return self.isLoop
end

function flameAnim.getCurrentSprite(self)
    return math.floor(self.id)
end

function flameAnim.setDirection(self, direction)
    self.dir = direction
end

function flameAnim.getDirection(self)
    return self.dir
end

function flameAnim.setAngle(self, angle)
    self.ang = angle
end

function flameAnim.getAngle(self)
    return self.ang
end

--[[

    self.body = {}
    self.body.body = nil
    self.body.mass = 0
    self.body.shape = nil
    self.body.fixture = nil
    self.body.fixtName = image_path

]]--

function flameAnim.addColision(self, world, mass, shape, collideType, restitution)

    self.world = world

    self.body.body = love.physics.newBody(world, self.x, self.y, collideType)
    self.body.body:setMass(mass)

    if(shape > 0)then
        self.body.shape = love.physics.newCircleShape(shape)
    else
        self.body.shape = love.physics.newRectangleShape(list_frames[1]:getwidth * self.w, 
                                                            list_frames[1]:getHeight * self.h)
    end 

    self.body.fixture = love.physics.newFixture(self.body.body, self.body.shape)
    self.body.fixture:setRestitution(restitution)
    self.body.fixture:setUserData(self.body.fixtName)
    
end

function flameAnim.setWorld(self, world)
    self.world = world
end

function flameAnim.getCurrentWorld(self, world)
    self.world = world
end


