local loadEnemyTable = {}

function loadEnemyTable.load()
    local g = GLOBALS
    
    local enemyTable = {}
    
    -- Flying meteor
    enemyTable.meteor = {}
    enemyTable.meteor.currentHealth = 1
    enemyTable.meteor.maxHealth = 1
    enemyTable.meteor.img = nil -- TODO: Draw meteor sprite
    
    -- Phoenix
    enemyTable.phoenix = {}
    enemyTable.phoenix.currentHealth = 1
    enemyTable.phoenix.maxHealth = 1
    enemyTable.phoenix.img = g.images.enemies.phoenix
    
    return enemyTable
end

return loadEnemyTable