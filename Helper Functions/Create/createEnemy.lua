local createEnemy = {}

function createEnemy.create(enemy,x,y,dx,dy)
    local g = GLOBALS
    
    local e = g.deepCopy(enemy)
    e.x = x
    e.y = y
    e.dx = dx
    e.dy = dy
    if(x == nil) then e.x = 0 end
    if(y == nil) then e.y = 0 end
    if(enemy.w == nil) then e.w = 16 end
    if(enemy.h == nil) then e.h = 16 end
    e.timers = {invincibility = 0,shot = 0}
    e.faction = "Enemy"
    
    return e
end

return createEnemy