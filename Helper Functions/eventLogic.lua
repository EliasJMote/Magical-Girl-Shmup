local eventLogic = {}

function eventLogic.event(event)
    local g = GLOBALS
    
    if(event.name == "Move Actor Left") then
        -- Move left if possible
        if(event.act.x > 0) then
            event.act.x = event.act.x - event.act.spd
        end
        
    elseif(event.name == "Move Actor Right") then
        -- Move right if possible
        if(event.act.x < (g.gameWidth - event.act.w)) then
            event.act.x = event.act.x + event.act.spd
        end
        
    elseif(event.name == "Move Actor Up") then
        -- Move up if possible
        if(event.act.y > 0) then
            event.act.y = event.act.y - event.act.spd
        end
        
    elseif(event.name == "Move Actor Down") then
        -- Move down if possible
        if(event.act.y < (g.gameHeight - event.act.h - 32)) then
            event.act.y = event.act.y + event.act.spd
        end
        
    elseif(event.name == "Create Shot") then
        -- Create a shot if possible
        if(event.act.canShoot) then
            table.insert(event.shotTable,g.createShot(event.act.x+event.act.w/2,event.act.y))
            event.act.canShoot = false
        end
    end
end

return eventLogic