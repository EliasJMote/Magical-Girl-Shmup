local drawManager = {}

function drawManager.draw()
    local g = GLOBALS
    
    -- scale the window
    love.graphics.scale(g.scale.x,g.scale.y)

    -- Draw different screens based on the current state
    if(g.state == "title") then
        g.drawTitleScreen.draw()
    
    elseif(g.state == "game") then
        g.drawGameScreen.draw()
        
    elseif(g.state == "level complete") then
        g.drawLevelCompleteScreen.draw()
    end
    
    -- Set the game to sleep or return if needed to cap the frame rate
    local curTime = love.timer.getTime()
    if g.nextTime <= curTime then
        g.nextTime = curTime
        return
    end
    love.timer.sleep(g.nextTime - curTime)
end

return drawManager