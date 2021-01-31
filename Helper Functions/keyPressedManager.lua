local keyPressedManager = {}

function keyPressedManager.keyPressed(key, scancode, isrepeat)
    local g = GLOBALS
    
    if(g.state == "title") then
        if(key == "z") then
            g.state = "character select"
            g.characterSelectScreen = 1
        end
    elseif(g.state == "character select") then
        -- (1-3)
        if(key == "left") then
            g.characterSelectScreen = g.characterSelectScreen - 1
            if(g.characterSelectScreen < 1) then g.characterSelectScreen = 3 end
        elseif(key == "right") then
            g.characterSelectScreen = g.characterSelectScreen + 1
            if(g.characterSelectScreen > 3) then g.characterSelectScreen = 1 end
        end
        if(key == "z") then
            --g.state = "game"
            g.state = "story"
            if(g.characterSelectScreen == 1) then g.createGame.create(g.images.playerCharacters.flameSorceress1)
            elseif(g.characterSelectScreen == 2) then g.createGame.create(g.images.playerCharacters.iceWitch1)
            else g.createGame.create(g.images.playerCharacters.lightningMage1)
            end
        end
    elseif(g.state == "story") then
        if(key == "z") then
            g.state = "game"
        end
    elseif(g.state == "game") then
        if(key == "space") then g.state = "paused" end
    elseif(g.state == "paused") then
        if(key == "space") then g.state = "game" end
    end
end

return keyPressedManager