local updateActor = {}

function updateActor.update(act)
    local g = GLOBALS
    
    if not(act.canShoot) then
        act.timers.shot = act.timers.shot + 1
        if(act.timers.shot >= 15) then
            act.canShoot = true
            act.timers.shot = 0
        end
    end
    
    return act
end

return updateActor