local loadPlayerShotImages = {}

function loadPlayerShotImages.load()
    local playerShots = {}
    
    playerShots.fireBall1 = {love.graphics.newImage("Images/Shots/Player/Fire/Fire Ball 1.png")}
    playerShots.fireBall2 = {love.graphics.newImage("Images/Shots/Player/Fire/Medium/Fire Ball 1.png"),love.graphics.newImage("Images/Shots/Player/Fire/Medium/Fire Ball 2.png")}
    playerShots.iceBall = {love.graphics.newImage("Images/Shots/Player/Ice/Ice Ball 1.png"),love.graphics.newImage("Images/Shots/Player/Ice/Ice Ball 2.png")}
    playerShots.elecBall = {love.graphics.newImage("Images/Shots/Player/Lightning/Elec Ball 1.png"),love.graphics.newImage("Images/Shots/Player/Lightning/Elec Ball 2.png")}
    
    return playerShots
end

return loadPlayerShotImages