local createPlayer = {}

function createPlayer.create(playerImage)
    
    local g = GLOBALS
    
    local p = {}
    
    p.img = playerImage
    p.x = 64
    p.y = 88
    p.w = 13
    p.h = 29
    p.spd = 1.25
    p.hitBox = {}
    p.currentHealth = 5
    p.maximumHealth = 5
    p.isInvincible = false
    p.shots = {}
    
    if(playerImage == g.images.playerCharacters.flameSorceress1) then
        p.shot = {x=p.x+p.w/2,y=p.y,w=16,h=16,img=g.images.playerShots.fireBall2}
    elseif(playerImage == g.images.playerCharacters.iceWitch1) then
        p.shot = {x=p.x+p.w/2,y=p.y,w=16,h=16,img=g.images.playerShots.iceBall}
    else
        p.shot = {x=p.x+p.w/2,y=p.y,w=16,h=16,img=g.images.playerShots.elecBall}
    end
    
    p.canShoot = true
    p.timers = {}
    p.timers.invincibility = 0
    p.timers.shot = 0
    p.faction = "Player"
    p.isDead = false
    p.score = 0
    p.level = 1
    
    return p
end

return createPlayer