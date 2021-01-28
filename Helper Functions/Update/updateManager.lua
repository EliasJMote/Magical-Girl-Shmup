local updateManager = {}

function updateManager.update()
    local g = GLOBALS
    
    -- Update the next time we want to hit based on the minimum delta time
    g.nextTime = g.nextTime + g.minDT
    
    -- Update the window scaling (since the player can adjust this window at anytime)
    g.scale.x = love.graphics.getWidth()/g.gameWidth
    g.scale.y = love.graphics.getHeight()/g.gameHeight
    
    -- Update the event table
    g.updateEvents.update()
    
    -- Update the game screen
    if(g.state == "game") then
        g.updateGameScreen.update()
    end
end

return updateManager