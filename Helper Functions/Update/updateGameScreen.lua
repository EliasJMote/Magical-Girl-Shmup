local updateGameScreen = {}

function updateGameScreen.update()

    local g = GLOBALS

    -- Player controls
    g.players[1] = g.playerControls(g.players[1])

    -- Update player(s)
    g.players[1] = g.updateActor.update(g.players[1])
    
    -- Update enemies
    for i,e in ipairs(g.enemies) do
        e = g.updateActor.update(e)
    end

    -- Update player shots
    for i=#g.players[1].shots,1,-1 do
        g.updateShot(g.players[1].shots[i])
        if(g.players[1].shots[i].delete) then
            table.remove(g.players[1].shots,i)
        end
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

    -- Update the game timer
    g.timers.gameTimer = g.timers.gameTimer + 1
end

return updateGameScreen