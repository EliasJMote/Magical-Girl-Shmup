local loadEnemyTable = {}

function loadEnemyTable.load()
    local g = GLOBALS
    
    local enemyTable = {}
    
    -- Spiky ball
    enemyTable.spikyBall = {}
    enemyTable.spikyBall.currentHealth = 5
    enemyTable.spikyBall.maxHealth = 5
    enemyTable.spikyBall.img = g.images.enemies.spikyBall
    enemyTable.spikyBall.ai = 0
    
    -- Flying meteor
    enemyTable.meteor = {}
    enemyTable.meteor.currentHealth = 1
    enemyTable.meteor.maxHealth = 1
    enemyTable.meteor.img = g.images.enemies.meteor
    enemyTable.meteor.ai = 1
    
    -- Phoenix
    enemyTable.phoenix = {}
    enemyTable.phoenix.currentHealth = 1
    enemyTable.phoenix.maxHealth = 1
    enemyTable.phoenix.img = g.images.enemies.phoenix
    enemyTable.phoenix.ai = 2
    
    -- Shadow Sage (boss)
    enemyTable.shadowSage = {}
    enemyTable.shadowSage.w = 13
    enemyTable.shadowSage.h = 29
    enemyTable.shadowSage.currentHealth = 30
    enemyTable.shadowSage.maxHealth = 30
    enemyTable.shadowSage.img = g.images.enemies.shadowSage
    enemyTable.shadowSage.ai = 3
    enemyTable.shadowSage.isBoss = true
    
    return enemyTable
end

return loadEnemyTable