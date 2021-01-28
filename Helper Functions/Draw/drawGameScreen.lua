local drawGameScreen = {}

    local g = GLOBALS

    function drawGameScreen.draw()
        
        -- draw stars
        for i,s in ipairs(g.stars) do
            love.graphics.rectangle("fill",s.x,s.y,2,2)
        end
        
        -- Draw player shots
        for i,s in ipairs(g.players[1].shots) do
            love.graphics.setColor(1,0,0,1)
            love.graphics.rectangle("fill",s.x,s.y,2,2)
            love.graphics.setColor(1,1,1,1)
        end
        
        -- Draw enemy shots
        for i,s in ipairs(g.enemyShots) do
            love.graphics.setColor(0,1,0,1)
            love.graphics.rectangle("fill",s.x,s.y,2,2)
            love.graphics.setColor(1,1,1,1)
        end
        
        -- Draw enemies
        for i,e in ipairs(g.enemies) do
            love.graphics.setColor(1,0,1,1)
            love.graphics.rectangle("fill",e.x,e.y,e.w,e.h)
            love.graphics.setColor(1,1,1,1)
        end
        
        -- Draw the player
        love.graphics.draw(g.players[1].img,g.players[1].x,g.players[1].y)
        
    end

return drawGameScreen