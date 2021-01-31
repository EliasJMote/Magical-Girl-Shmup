local loadEnemyImages = {}

function loadEnemyImages.load()
    local enemyImages = {}
    
    enemyImages.meteor = {love.graphics.newImage("Images/Enemies/Meteor.png")}
    enemyImages.phoenix = {love.graphics.newImage("Images/Enemies/Phoenix 1.png"),love.graphics.newImage("Images/Enemies/Phoenix 2.png")}
    enemyImages.shadowSage = {love.graphics.newImage("Images/Boss/Shadow Sage.png")}
    enemyImages.spikyBall = {love.graphics.newImage("Images/Enemies/Spiky Ball 1.png"),love.graphics.newImage("Images/Enemies/Spiky Ball 2.png")}
    
    return enemyImages
end

return loadEnemyImages