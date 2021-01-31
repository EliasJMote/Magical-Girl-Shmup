local loadTilesImages = {}

function loadTilesImages.load()
    local tileImages = {}
    
    tileImages.grass = love.graphics.newImage("Images/Tiles/Grass Tile.png")
    
    return tileImages
end

return loadTilesImages