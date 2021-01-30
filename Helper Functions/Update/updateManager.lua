local updateManager = {}

function updateManager.update()
    local g = GLOBALS
    
    -- Update the next time we want to hit based on the minimum delta time
    g.nextTime = g.nextTime + g.minDT
    
    -- Update the window scaling (since the player can adjust this window at anytime)
    g.scale.x = love.graphics.getWidth()/g.gameWidth
    g.scale.y = love.graphics.getHeight()/g.gameHeight
    
    if(g.state == "game") then
        
        -- Spawn in enemies
        g.spawnEnemies.update()
        
        -- Update enemy movement
        for i,e in ipairs(g.enemies) do
            e.x = e.x + e.dx
            e.y = e.y + e.dy
        end
    end
    
    -- Update the event table
    g.updateEvents.update()
    
    -- Update the game screen
    if(g.state == "game") then
        g.updateGameScreen.update()
        
    elseif(g.state == "level complete") then
        g.updateLevelCompleteScreen.update()
    end
end

return updateManager