local updateGameScreen = {}

function updateGameScreen.update()

    local g = GLOBALS

    -- Player controls
    for i,p in ipairs(g.players) do
        if not(p.isDead) then
            p = g.playerControls(p)
        end
    end

    -- Update player(s)
    for i,p in ipairs(g.players) do
        if not(p.isDead) then
            p = g.updateActor.update(p)
        else
            g.timers.deathTimer = g.timers.deathTimer + 1
            if(g.timers.deathTimer > 60 * 5) then
                g.state = "title"
            end
        end
    end
    
    
    
    -- Update player shots
    for i,p in ipairs(g.players) do
        for j=#p.shots,1,-1 do
            g.updateShot(p.shots[j])
            if(p.shots[j].delete) then
                table.remove(g.players[1].shots,j)
            end
        end
    end
    
    -- Update enemy shots
    for i=#g.enemyShots,1,-1 do
        g.updateShot(g.enemyShots[i])
        if(g.enemyShots[i].delete) then
            table.remove(g.enemyShots,i)
        end
    end
    
    -- Update enemies
    for i,e in ipairs(g.enemies) do
        e = g.updateActor.update(e)
        if(e.y > 240 - 24) then
            table.remove(g.enemies,i)
        end
        e = g.updateEnemyAI.update(e)
    end

    -- Background star behavior
    for i,s in ipairs(g.stars) do
        s.y = s.y + s.spd

        -- remove star if it leaves screen
        if(s.y > g.gameHeight) then
            table.remove(g.stars,i)
        end
    end

    -- Generate stars randomly
    if(g.timers.gameTimer % 2 == 0) then
        table.insert(g.stars, g.createStar(math.floor(math.random(g.gameWidth)),-1,math.random(2)+0.5))
    end

    -- "Level complete" event (when the boss is defeated)
    if(g.isBossDefeated) then
        if(g.timers.gameTimer > 60 * 6 + g.bossDefeatedTime) then
            g.state = "level complete"
        end
    end

    -- Update the game timer
    g.timers.gameTimer = g.timers.gameTimer + 1
end

return updateGameScreen