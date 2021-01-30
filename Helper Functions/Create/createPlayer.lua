local createPlayer = {}

function createPlayer.create(playerImage)
    
    local player = {}
    
    player.img = playerImage
    player.x = 64
    player.y = 88
    player.w = 13
    player.h = 29
    player.spd = 1.25
    player.hitBox = {}
    player.currentHealth = 5
    player.maximumHealth = 5
    player.isInvincible = false
    player.shots = {}
    player.shot = {x=player.x+player.w/2,y=player.y,w=2,h=2,img=nil}
    player.canShoot = true
    player.timers = {}
    player.timers.invincibility = 0
    player.timers.shot = 0
    player.faction = "Player"
    player.isDead = false
    player.score = 0
    
    return player
end

return createPlayer