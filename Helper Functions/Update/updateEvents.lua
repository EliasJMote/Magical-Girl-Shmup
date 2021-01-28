local updateEvents = {}

updateEvents.update = function()
    
    local g = GLOBALS
    
    -- Event handling (modeled as a queue)
    while(#g.events > 0) do
        
        -- Grab the first event in the queue
        local event = g.events[1]
        
        -- Perform an action based on the event logic table
        g.eventLogic.event(event)
        
        -- First in, first out
        table.remove(g.events,1)
    end
    
end

return updateEvents