local drawTitleScreen = {}

local g = GLOBALS

function drawTitleScreen.draw()

    love.graphics.print("Space Phantasy", 70, 32)
    love.graphics.print("Press Z to start", 66, g.gameHeight-48)
    love.graphics.print("V" .. gameVersion, g.gameWidth-60, g.gameHeight-16)
    love.graphics.draw(g.images.UI.titleScreenPendant,155,130)
end

return drawTitleScreen