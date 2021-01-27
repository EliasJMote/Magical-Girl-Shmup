local createGame = {}

    function createGame.create()

        local g = GLOBALS
        
        -- Initialize scale of the game
        --g.scale = {}
        
        -- Initialize events table
        g.events = {}
        
        -- current text onscreen
        --g.curText = {}
    
        -- player table
        g.players = {}
        g.players[1] = {}
        g.players[1].img = g.images.playerCharacters.flameSorceress1
        g.players[1].x = 64
        g.players[1].y = 88
        g.players[1].w = 13
        g.players[1].h = 29
        g.players[1].spd = 1
        g.players[1].hitBox = {}
        g.players[1].currentHealth = 5
        g.players[1].maximumHealth = 5
        g.players[1].isInvincible = false
        g.players[1].invincibilityTimer = 0

        -- star field table
        g.stars = {}

        g.timers = {}
        g.timers.gameTimer = 0
    end

return createGame