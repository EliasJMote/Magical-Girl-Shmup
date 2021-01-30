local updateActor = {}

function updateActor.update(act)
    local g = GLOBALS
    
    -- Check if enough time has passed before the actor can shoot again
    if not(act.canShoot) then
        act.timers.shot = act.timers.shot + 1
        if(act.timers.shot >= 15) then
            act.canShoot = true
            act.timers.shot = 0
        end
    end
    
    if(act.faction == "Player") then
        for i,p in ipairs(g.players) do
            if(p.isInvincible) then
                if(p.timers.invincibility >= 60) then
                    p.isInvincible = false
                    p.timers.invincibility = 0
                else
                    p.timers.invincibility = p.timers.invincibility + 1
                end
            end
        end
    end
    
    -- Check if the actor is the enemy
    if(act.faction == "Enemy") then
        
        -- Check for collisions with player characters
        for i,p in ipairs(g.players) do
            if(p.isInvincible == false and p.isDead == false) then
                if(g.rectCollision(act,p)) then
                    g.players[i].currentHealth = g.players[i].currentHealth - 1
                    g.players[i].isInvincible = true
                    if(g.players[i].currentHealth <= 0) then
                        g.players[i].isDead = true
                    end
                end
            end
        end
    end
    
    return act
end

return updateActor