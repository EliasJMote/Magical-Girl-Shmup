local drawCharacterSelectScreen = {}

local g = GLOBALS

function drawCharacterSelectScreen.draw()
    love.graphics.print("Choose your mage with 'z'", 32, 32)
    
    love.graphics.setColor(1,1,1,1)
    if(g.characterSelectScreen == 1) then
        love.graphics.draw(g.images.UI.fireSorceressCharacterSelect,0,16*3+8)
        love.graphics.setColor(1,0,0,1)
    else
        love.graphics.draw(g.images.UI.fireSorceressSilhouetteCharacterSelect,0,16*3+8)
        love.graphics.setColor(1,1,1,1)
    end
    love.graphics.print("Fire", 24, 240-16)
    
    love.graphics.setColor(1,1,1,1)
    if(g.characterSelectScreen == 2) then
        love.graphics.draw(g.images.UI.iceWitchCharacterSelect,16*5+4,16*3+8)
        love.graphics.setColor(0,1,1,1)
    else
        love.graphics.draw(g.images.UI.iceWitchSilhouetteCharacterSelect,16*5+4,16*3+8)
        love.graphics.setColor(1,1,1,1)
    end
    love.graphics.print("Ice", 116+4, 240-16)
    
    love.graphics.setColor(1,1,1,1)
    if(g.characterSelectScreen == 3) then
        love.graphics.draw(g.images.UI.lightningMageCharacterSelect,16*11,16*3+8)
        love.graphics.setColor(1,1,0,1)
    else
        love.graphics.draw(g.images.UI.lightningMageSilhouetteCharacterSelect,16*11,16*3+8)
        love.graphics.setColor(1,1,1,1)
    end
    love.graphics.print("Elec", 196+8, 240-16)
    love.graphics.setColor(1,1,1,1)
end

return drawCharacterSelectScreen