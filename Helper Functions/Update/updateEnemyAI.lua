local updateEnemyAI = {}

function updateEnemyAI.update(e)

    local g = GLOBALS

    -- Shadow sage ai
    if(e.ai == 3) then
        
        if(e.timers.ai < 60) then
            if(e.x < g.players[1].x - 1) then
                e.dx = 1
            elseif(e.x > g.players[1].x + 1) then
                e.dx = -1
            else
                e.dx = 0
            end
        elseif(e.timers.ai == 60) then
            e.dx = 0
            table.insert(g.enemyShots,g.createShot(e.x,e.y,16,16,0,2,g.images.enemyShots.shadowBall,"Enemy"))
        elseif(e.timers.ai >= 90) then
            e.timers.ai = 0
        end
    end

    if(e.currentHealth/e.maxHealth > 2/3) then
        e.timers.ai = e.timers.ai + 1
    elseif(e.currentHealth/e.maxHealth > 1/3) then
        e.timers.ai = e.timers.ai + 1.5
    else
        e.timers.ai = e.timers.ai + 2
    end
    
    return e
end

return updateEnemyAI