local drawGameScreen = {}

    local g = GLOBALS

    function drawGameScreen.draw()
        
        -- draw stars
        for i,s in ipairs(g.stars) do
            love.graphics.rectangle("fill",s.x,s.y,2,2)
        end
        
        -- Draw player shots
        for i,p in ipairs(g.players) do
            for j,s in ipairs(p.shots) do
                love.graphics.setColor(1,0,0,1)
                love.graphics.rectangle("fill",s.x,s.y,2,2)
                love.graphics.setColor(1,1,1,1)
            end
        end
        
        -- Draw enemy shots
        for i,s in ipairs(g.enemyShots) do
            love.graphics.setColor(0,1,0,1)
            love.graphics.rectangle("fill",s.x,s.y,2,2)
            love.graphics.setColor(1,1,1,1)
        end
        
        -- Draw enemies
        for i,e in ipairs(g.enemies) do
            love.graphics.draw(e.img[math.floor(g.timers.gameTimer/15)%2+1],e.x,e.y)
        end
        
        -- Draw the player
        for i,p in ipairs(g.players) do
            if not(p.isDead) then
                if(p.isInvincible == false or g.timers.gameTimer % 2 == 0) then
                    love.graphics.draw(p.img,p.x,p.y)
                end
            end
        end
        
        -- Status bar
        -- Draw the black rectangular background for the status UI
        love.graphics.setColor(0,0,0,1)
        love.graphics.rectangle("fill",0,g.gameHeight-32,g.gameWidth,32)
        love.graphics.setColor(1,1,1,1)
        
        -- Draw the score
        love.graphics.print("Score " .. g.players[1].score,160,g.gameHeight-24)
        
        -- Draw the heart for the status UI
        love.graphics.draw(g.images.UI.heart,8,g.gameHeight-24)
        
        -- Draw the current health number for the status UI
        love.graphics.print(g.players[1].currentHealth,16,g.gameHeight-24)
        
        -- Draw the health bar
        for i=1,g.players[1].currentHealth do
            love.graphics.draw(g.images.UI.fullEnergyCell,24+8*(i-1),g.gameHeight-24)
        end
        for i=g.players[1].currentHealth+1,g.players[1].maximumHealth do
            love.graphics.draw(g.images.UI.emptyEnergyCell,24+8*(i-1),g.gameHeight-24)
        end
        
        -- Draw the charge meter
        --[[love.graphics.setColor(228/256,0,96/256,1)
        love.graphics.rectangle("fill",24,g.gameHeight-8,40,7)
        love.graphics.setColor(1,1,1,1)
        
        -- Draw the charge meter border
        love.graphics.rectangle("line",24,g.gameHeight-8,40,7)]]
        
        -- Draw the area number
        love.graphics.print("Area 1",112,g.gameHeight-8)
        
        -- Draw the "area clear" message when the boss is vanquished
        --[[if(g.timers.gameTimer > 60 * 3) then
            love.graphics.print("Area Clear",96,g.gameHeight/2-8)
        end]]
    end

return drawGameScreen