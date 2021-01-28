local keyPressedManager = {}

function keyPressedManager.keyPressed(key, scancode, isrepeat)
    local g = GLOBALS
    
    if(g.state == "title") then
        if(key == "z") then
            g.state = "game"
            g.createGame.create(g.images.playerCharacters.flameSorceress1)
        elseif(key == "x") then
            g.state = "game"
            g.createGame.create(g.images.playerCharacters.iceWitch1)
        elseif(key == "c") then
            g.state = "game"
            g.createGame.create(g.images.playerCharacters.lightningMage1)
        end
    end
end

return keyPressedManager