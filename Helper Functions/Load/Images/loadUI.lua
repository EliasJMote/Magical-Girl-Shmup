local loadUI = {}

function loadUI.load()
    local uiImages = {}
    
    uiImages.fireSorceressCharacterSelect = love.graphics.newImage("Images/UI/Fire Sorceress Character Select.png")
    uiImages.fireSorceressSilhouetteCharacterSelect = love.graphics.newImage("Images/UI/Fire Sorceress Silhouette Character Select.png")
    uiImages.emptyEnergyCell = love.graphics.newImage("Images/UI/Empty Energy Cell.png")
    uiImages.fullEnergyCell = love.graphics.newImage("Images/UI/Full Energy Cell.png")
    uiImages.heart = love.graphics.newImage("Images/UI/Heart.png")
    uiImages.iceWitchCharacterSelect = love.graphics.newImage("Images/UI/Ice Witch Character Select.png")
    uiImages.iceWitchSilhouetteCharacterSelect = love.graphics.newImage("Images/UI/Ice Witch Silhouette Character Select.png")
    uiImages.lightningMageCharacterSelect = love.graphics.newImage("Images/UI/Lightning Mage Character Select.png")
    uiImages.lightningMageSilhouetteCharacterSelect = love.graphics.newImage("Images/UI/Lightning Mage Silhouette Character Select.png")
    uiImages.titleScreenPendant = love.graphics.newImage("Images/UI/Title Screen Pendant.png")
    
    return uiImages
end

return loadUI