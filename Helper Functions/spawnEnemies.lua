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
    
    -- Spawn endless waves of phoenixes
    if(g.timers.gameTimer % (60*5) == 0) then
        for i,e in ipairs(g.enemyFormationTable.phoenix[math.random(1,3)]) do
            table.insert(g.enemies,g.deepCopy(e))
        end
    end
end

return spawnEnemies