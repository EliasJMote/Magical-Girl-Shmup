local loadEnemyShotImages = {}

function loadEnemyShotImages.load()
    local enemyShots = {}
    
    enemyShots.shadowBall = {love.graphics.newImage("Images/Shots/Enemy/Shadow Ball 1.png"),love.graphics.newImage("Images/Shots/Enemy/Shadow Ball 2.png"),
                            love.graphics.newImage("Images/Shots/Enemy/Shadow Ball 3.png"),love.graphics.newImage("Images/Shots/Enemy/Shadow Ball 4.png")}
    
    return enemyShots
end

return loadEnemyShotImages