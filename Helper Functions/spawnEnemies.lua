local spawnEnemies = {}

-- Spawn enemies for the game by formation
function spawnEnemies.update()
    local g = GLOBALS
    
    --[[if(g.timers.gameTimer == 0) then
        for i,e in ipairs(g.enemyFormationTable.phoenix[1]) do
            table.insert(g.enemies,e)
        end
        
    elseif(g.timers.gameTimer == 60 * 5) then
        for i,e in ipairs(g.enemyFormationTable.phoenix[2]) do
            table.insert(g.enemies,e)
        end
        
    elseif(g.timers.gameTimer == 60 * 10) then
        for i,e in ipairs(g.enemyFormationTable.phoenix[3]) do
            table.insert(g.enemies,e)
        end
    end]]
    
    -- Spawn waves of phoenixes
    if(g.timers.gameTimer % (60*5) == 0 and g.timers.gameTimer < (60*15)) then
        for i,e in ipairs(g.enemyFormationTable.phoenix[g.timers.gameTimer / (60*5) + 1]) do
            table.insert(g.enemies,g.deepCopy(e))
        end
    end
    
    if(g.timers.gameTimer % (60*5) == 0 and g.timers.gameTimer == (60*15)) then
        --for i,e in ipairs(g.enemyFormationTable.spikedBall[1]) do
        for i,e in ipairs(g.enemyFormationTable.spikedBall[2]) do
            table.insert(g.enemies,g.deepCopy(e))
        end
    end
    
    if(g.timers.gameTimer == (60*20)) then
        for i,e in ipairs(g.enemyFormationTable.phoenix[4]) do
            table.insert(g.enemies,g.deepCopy(e))
        end
    end
    
    if(g.timers.gameTimer == (60*25)) then
        --for i,e in ipairs(g.enemyFormationTable.spikedBall[1]) do
        for i,e in ipairs(g.enemyFormationTable.spikedBall[2]) do
            table.insert(g.enemies,g.deepCopy(e))
        end
    end
    
    -- Boss comes in after a minute
    if(g.timers.gameTimer == (60*30)) then
        table.insert(g.enemies,g.createEnemy.create(g.enemyTable.shadowSage,128,0,0,0))
    end
end

return spawnEnemies