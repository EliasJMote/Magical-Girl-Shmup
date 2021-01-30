local updateLevelCompleteScreen = {}

function updateLevelCompleteScreen.update()
    
    local g = GLOBALS
    
    local spd = 1.25
    
    if not(g.levelCompleteAnimation) then
    
        if(g.players[1].x < g.gameWidth / 2 - 8 - 2) then
            g.players[1].x = g.players[1].x + spd
        elseif(g.players[1].x > g.gameWidth / 2 - 8 + 2) then
            g.players[1].x = g.players[1].x - spd
        end
        
        if(g.players[1].y < g.gameHeight - 16*4 - 2) then
            g.players[1].y = g.players[1].y + spd
        elseif(g.players[1].y > g.gameHeight - 16*4 + 2) then
            g.players[1].y = g.players[1].y - spd
        end
        
        if(g.players[1].x >= g.gameWidth / 2 - 8 - 2 and g.players[1].x <= g.gameWidth / 2 - 8 + 2
            and g.players[1].y >= g.gameHeight - 16*4 - 2 and g.players[1].y <= g.gameHeight - 16*4 + 2) then
            g.levelCompleteAnimation = true
        end
    
    elseif(g.levelCompleteAnimation) then
        g.timers.levelCompleteAnimationTimer = g.timers.levelCompleteAnimationTimer + 1
        
        g.players[1].y = g.players[1].y - spd
        
        if(g.players[1].y < -48) then
            g.state = "title"
        end
    end
    
end



return updateLevelCompleteScreen