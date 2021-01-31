local drawManager = {}

function drawManager.draw()
    local g = GLOBALS
    
    -- scale the window
    love.graphics.scale(g.scale.x,g.scale.y)

    -- Draw different screens based on the current state
    if(g.state == "title") then
        g.drawTitleScreen.draw()
    
    elseif(g.state == "character select") then
        g.drawCharacterSelectScreen.draw()
    
    elseif(g.state == "story") then
        love.graphics.print("3 magical sisters have lost", 12, 32)
        love.graphics.print("their way and need to get", 12, 32+16)
        love.graphics.print("back home. Help them find", 12, 32+16*2)
        love.graphics.print("their way through the star", 12, 32+16*3)
        love.graphics.print("field and return to their", 12, 32+16*4)
        love.graphics.print("home on Garlock-8 where", 12, 32+16*5)
        love.graphics.print("their grandma is waiting!", 12, 32+16*6)
        
        love.graphics.print("The 'z' key fires magic shots.", 12, 32+16*8)
        love.graphics.print("Directional keys is movement.", 12, 32+16*9)
        love.graphics.print("Space bar is used to pause.", 12, 32+16*10)
        love.graphics.print("Press z to continue", 12, 32+16*12)
    
    elseif(g.state == "game") then
        g.drawGameScreen.draw()
        
    elseif(g.state == "paused") then
        love.graphics.print("Paused", 112, 120)
        
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