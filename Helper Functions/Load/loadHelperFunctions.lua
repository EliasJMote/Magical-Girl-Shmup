local loadHelperFunctions = {}

local g = GLOBALS

function g.getAngle(a,b)
    return math.atan2((a.x-b.x),(a.y-b-y))
end

-- Rounding function
function g.round(x)
    return math.floor(x + 0.5)
end

function g.deepCopy(a)
    local b = {}
    for k in pairs(a) do
        if(type(a[k]) == "table") then
            b[k] = g.deepCopy(a[k])
        else
            b[k] = a[k]
        end
    end
    return b
end

-- AABB rectangular collision
function g.rectCollision(a,b)
    if(a.x<b.x+b.w and a.x+a.w>b.x and a.y<b.y+b.h and a.y+a.h>b.y) then
        return true, b
    end
    return false
end

-- Player controls
function g.playerControls(p)
    --local g = GLOBALS
    
    if(love.keyboard.isDown("left")) then
        g.createEvent.create({name="Move Actor Left",act=p})
    end
    
    -- Move right if possible
    if(love.keyboard.isDown("right")) then
        g.createEvent.create({name="Move Actor Right",act=p})
    end
    
    -- Move up if possible
    if(love.keyboard.isDown("up")) then
        g.createEvent.create({name="Move Actor Up",act=p})
    end
    
    -- Move down if possible
    if(love.keyboard.isDown("down")) then
        g.createEvent.create({name="Move Actor Down",act=p})
    end
    
    -- Fire a shot
    if(love.keyboard.isDown("z")) then
        g.createEvent.create({name="Create Shot",act=p,shotTable=p.shots,shot=p.shot})
    end
    return p
end

-- Create a background star
function g.createStar(x,y,spd)
    local s = {}
    s.x = x
    s.y = y
    s.spd = spd or 1
    s.col = {math.random(1,256)/256,math.random(1,256)/256,math.random(1,256)/256,1}
    return s
end

-- Create a shot
function g.createShot(x,y,w,h,dx,dy,img,faction)
    local s = {}
    s.x = x or 0
    s.y = y or 0
    s.w = w or 2
    s.h = h or 2
    s.dx = dx or 0
    s.dy = dy or -2
    s.img = img or nil
    --s.angle = angle or 0
    s.faction = faction or "Player"
    return s
end

-- Update a shot
function g.updateShot(s)
    -- Move shot
    s.x = s.x + s.dx
    s.y = s.y + s.dy

    -- Remove shot if it leaves the screen
    if(s.y < -16 or s.y >= g.gameHeight) then
        s.delete = true
    end

    -- Damage enemy if it collides with one
    if(s.faction == "Player") then
        for i,e in ipairs(g.enemies) do
            if(g.rectCollision(s,e)) then
                e.currentHealth = e.currentHealth - 1
                s.delete = true
                if(e.currentHealth <= 0) then
                    table.remove(g.enemies,i)
                    g.players[1].score = g.players[1].score + 100
                    if(e.isBoss) then g.isBossDefeated = true end
                    g.bossDefeatedTime = g.timers.gameTimer
                    --genexplosion(e.x,e.y)
                    --sfx(1,0)
                end
            end
        end
    
    -- Damage player if it collides with one
    elseif(s.faction == "Enemy") then
        for i,p in ipairs(g.players) do
            if not(p.isInvincible) then
                if(g.rectCollision(s,p)) then
                    p.currentHealth = p.currentHealth - 1
                    p.isInvincible = true
                    s.delete = true
                    if(p.currentHealth <= 0) then
                        p.isDead = true
                        --g.players[1].score = g.players[1].score + 100
                        --genexplosion(e.x,e.y)
                        --sfx(1,0)
                    end
                end
            end
        end
    end
end

return loadHelperFunctions