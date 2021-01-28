local createEnemy = {}

function createEnemy.create(enemy)
    local g = GLOBALS
    local e = g.deepCopy(enemy)
    if(enemy.x == nil) then e.x = 0 end
    if(enemy.y == nil) then e.y = 0 end
    if(enemy.w == nil) then e.w = 16 end
    if(enemy.h == nil) then e.h = 16 end
    e.timers = {invincibility = 0,shot = 0}
    
    return e
end

return createEnemy