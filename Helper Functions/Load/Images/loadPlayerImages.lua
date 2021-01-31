local loadPlayerImages = {}

function loadPlayerImages.load()
    local playerCharacters = {}
    
    playerCharacters.flameSorceress1 = {love.graphics.newImage("Images/Player Characters/Flame Sorceress/Flame Sorceress 1.png"),
                                        love.graphics.newImage("Images/Player Characters/Flame Sorceress/Flame Sorceress 2.png")}
    
    playerCharacters.iceWitch1 = {love.graphics.newImage("Images/Player Characters/Ice Witch/Ice Witch 1.png"),
                                    love.graphics.newImage("Images/Player Characters/Ice Witch/Ice Witch 2.png"),}
    
    playerCharacters.lightningMage1 =  {love.graphics.newImage("Images/Player Characters/Lightning Mage/Lightning Mage 1.png"),
                                        love.graphics.newImage("Images/Player Characters/Lightning Mage/Lightning Mage 2.png")}
    
    return playerCharacters
end

return loadPlayerImages