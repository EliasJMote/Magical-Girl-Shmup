local loadUI = {}

function loadUI.load()
    local uiImages = {}
    
    uiImages.emptyEnergyCell = love.graphics.newImage("Images/UI/Empty Energy Cell.png")
    uiImages.fullEnergyCell = love.graphics.newImage("Images/UI/Full Energy Cell.png")
    uiImages.heart = love.graphics.newImage("Images/UI/Heart.png")
    
    return uiImages
end

return loadUI