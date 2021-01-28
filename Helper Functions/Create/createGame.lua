local createGame = {}

    function createGame.create(player)

        local g = GLOBALS
        
        -- Initialize events table
        g.events = {}
        
        -- current text onscreen
        --g.curText = {}
    
        -- Player table
        g.players = {}
        g.players[1] = {}
        g.players[1].img = player
        g.players[1].x = 64
        g.players[1].y = 88
        g.players[1].w = 13
        g.players[1].h = 29
        g.players[1].spd = 1
        g.players[1].hitBox = {}
        g.players[1].currentHealth = 5
        g.players[1].maximumHealth = 5
        g.players[1].isInvincible = false
        g.players[1].shots = {}
        g.players[1].shot = {x=g.players[1].x+g.players[1].w/2,y=g.players[1].y,w=2,h=2,img=nil}
        g.players[1].canShoot = true
        g.players[1].timers = {}
        g.players[1].timers.invincibility = 0
        g.players[1].timers.shot = 0
        g.players[1].faction = "Player"

        -- Initialize the enemies and their shot table
        g.enemies = {}
        g.enemyShots = {}

        -- Initialize the power-up table
        g.powerUps = {}

        -- Star field table
        g.stars = {}

        g.timers = {}
        g.timers.titleTimer = 0
        g.timers.gameTimer = 0
        
        table.insert(g.enemies,g.createEnemy.create({x=128,y=16}))
    end

return createGame