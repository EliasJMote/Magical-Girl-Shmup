

--font = love.graphics.newFont("Font/prstart.ttf")
--love.graphics.setFont(font)

-- generate a background star
function generateStar(x,y,spd)
    local s = {}
    s.x = x
    s.y = y
    s.spd = spd or 1
    return s
end

-- generate a shot
function generateShot(x,y,w,h,spd,spr,angle)
    local s = {}
    s.x = x
    s.y = y
    s.w = w
    s.h = h
    s.spd = spd or 8
    s.img = img or nil
    s.angle = angle or 0
    return s
end

-- player controls
function playerControls(p)
    local g = GLOBALS
    if(love.keyboard.isDown("left") and p.x > 0) then
        p.x = p.x - p.spd
    end
    if(love.keyboard.isDown("right") and p.x < (g.gameWidth - p.w)) then
        p.x = p.x + p.spd
    end
    if(love.keyboard.isDown("up") and p.y > 0) then
        p.y = p.y - p.spd
    end
    if(love.keyboard.isDown("down") and p.y < (g.gameHeight - p.h)) then
        p.y = p.y + p.spd
    end
	return p
end

function love.load()
    GLOBALS = {}
    local g = GLOBALS

    createGame = require("Helper Functions/Create/createGame")

    -- Set the scaler to use the nearest neighbor filter
    love.graphics.setDefaultFilter("nearest", "nearest", 0)

    -- Set the game window to be resizable
    love.window.setMode(love.graphics.getWidth(), love.graphics.getHeight(), {resizable = true})

    love.mouse.setVisible(false)
    
    g.gameWidth = 256
    g.gameHeight = 240
    
    g.scale = {}
    g.scale.x = love.graphics.getWidth()/g.gameWidth
    g.scale.y = love.graphics.getHeight()/g.gameHeight
    
    g.images = {}
    g.images.playerCharacters = {}
    g.images.playerCharacters.flameSorceress1 = love.graphics.newImage("Images/Player Characters/Flame Sorceress/Flame Sorceress 1.png")
    
    -- Initialize game state
    g.state = "title"
    
    font = love.graphics.newFont("Font/prstart.ttf")
    love.graphics.setFont(font)
    
    createGame.create()
end

function love.update()
    local g = GLOBALS
    
    -- Update the window scaling (since the player can adjust this window at anytime)
    g.scale.x = love.graphics.getWidth()/g.gameWidth
    g.scale.y = love.graphics.getHeight()/g.gameHeight
    
    if(g.state == "game") then
    
        -- player controls
        g.players[1] = playerControls(g.players[1])

        -- background star behavior
        for i,s in ipairs(g.stars) do
            s.y = s.y + s.spd

            -- remove star if it leaves screen
            if(s.y > g.gameHeight) then
                table.remove(g.stars,i)
            end
        end

        -- generate stars randomly
        if(g.timers.gameTimer % 2 == 0) then
            table.insert(g.stars, generateStar(math.floor(math.random(g.gameWidth)),-1,math.random(2)+0.5))
        end
    end

    g.timers.gameTimer = g.timers.gameTimer + 1
end

function love.draw()
    local g = GLOBALS
    
    -- scale the window
    love.graphics.scale(g.scale.x,g.scale.y)

    if(g.state == "title") then
        love.graphics.print("Magical Girl Shmup", 20, 32)
        love.graphics.print("Press Z to start", 36, g.gameHeight-48)
        love.graphics.print("V" .. gameVersion, g.gameWidth-80, g.gameHeight-16)
    
    elseif(g.state == "game") then
        -- draw stars
        for i,s in ipairs(g.stars) do
            love.graphics.rectangle("fill",s.x,s.y,2,2)
        end
        
        love.graphics.draw(g.players[1].img,g.players[1].x,g.players[1].y)
    end
end

function love.keypressed(key, scancode, isrepeat)
    local g = GLOBALS
    if(g.state == "title") then
        if(key == "z") then
            g.state = "game"
        end
    end
end