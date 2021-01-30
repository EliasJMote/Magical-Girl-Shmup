local drawLevelCompleteScreen = {}

function drawLevelCompleteScreen.draw()
    local g = GLOBALS
    
    local num = 20
    
    -- Draw the player
    for i,p in ipairs(g.players) do
        if not(p.isDead) then
            if(g.levelCompleteAnimation) then
                for i=1,num do
                    love.graphics.setColor(1-i/num,1-i/num,1-i/num,1-i/num)
                    love.graphics.draw(p.img,p.x,p.y - i * g.timers.levelCompleteAnimationTimer)
                end
                love.graphics.setColor(1,1,1,1)
            end
            love.graphics.draw(p.img,p.x,p.y)
        end
    end
end

return drawLevelCompleteScreen