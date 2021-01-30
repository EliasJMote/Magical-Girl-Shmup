local loadEnemyFormationTable = {}

function loadEnemyFormationTable.load()
    local g = GLOBALS
    
    local enemyFormationTable = {}
    
    enemyFormationTable.phoenix = {}
    
    -- 5 vertical phoenixs at x=128
    enemyFormationTable.phoenix[1] = {}
    for i=1,5 do
        table.insert(enemyFormationTable.phoenix[1],g.createEnemy.create(g.enemyTable.phoenix,128,0 - 16 * i,0,1))
    end
    
    -- 5 vertical phoenixs at x=64
    enemyFormationTable.phoenix[2] = {}
    for i=1,5 do
        table.insert(enemyFormationTable.phoenix[2],g.createEnemy.create(g.enemyTable.phoenix,64,0 - 16 * i,0,1))
    end
    
    -- 5 vertical phoenixs at x=192
    enemyFormationTable.phoenix[3] = {}
    for i=1,5 do
        table.insert(enemyFormationTable.phoenix[3],g.createEnemy.create(g.enemyTable.phoenix,192,0 - 16 * i,0,1))
    end
    
    return enemyFormationTable
end

return loadEnemyFormationTable