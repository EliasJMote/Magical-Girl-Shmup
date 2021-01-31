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
    
    -- Horizontal phoenixs
    enemyFormationTable.phoenix[4] = {}
    for i=1,16 do
        table.insert(enemyFormationTable.phoenix[4],g.createEnemy.create(g.enemyTable.phoenix,16 * (i-1),-16,0,1))
    end
    
    enemyFormationTable.spikedBall = {}
    
    -- 3 spiked balls mid screen
    enemyFormationTable.spikedBall[1] = {}
    table.insert(enemyFormationTable.spikedBall[1],g.createEnemy.create(g.enemyTable.spikyBall,7*16,-16,0,1))
    table.insert(enemyFormationTable.spikedBall[1],g.createEnemy.create(g.enemyTable.spikyBall,8*16,-32,0,1))
    table.insert(enemyFormationTable.spikedBall[1],g.createEnemy.create(g.enemyTable.spikyBall,9*16,-16,0,1))
    
    -- Spiked ball circle
    enemyFormationTable.spikedBall[2] = {}
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,6*16,-16,0,1))
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,7*16,-16,0,1))
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,8*16,-16,0,1))
    
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,9*16,-16*2,0,1))
    
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,10*16,-16*3,0,1))
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,10*16,-16*4,0,1))
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,10*16,-16*5,0,1))
    
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,9*16,-16*6,0,1))
    
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,8*16,-16*7,0,1))
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,7*16,-16*7,0,1))
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,6*16,-16*7,0,1))
    
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,5*16,-16*6,0,1))
    
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,4*16,-16*5,0,1))
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,4*16,-16*4,0,1))
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,4*16,-16*3,0,1))
    
    table.insert(enemyFormationTable.spikedBall[2],g.createEnemy.create(g.enemyTable.spikyBall,5*16,-16*2,0,1))
    
    return enemyFormationTable
end

return loadEnemyFormationTable