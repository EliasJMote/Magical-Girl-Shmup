local loadEnemyImages = {}

function loadEnemyImages.load()
    local enemyImages = {}
    
    enemyImages.phoenix = {love.graphics.newImage("Images/Enemies/Phoenix 1.png"),love.graphics.newImage("Images/Enemies/Phoenix 2.png")}
    
    return enemyImages
end

return loadEnemyImages