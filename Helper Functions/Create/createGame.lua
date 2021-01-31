local createGame = {}

    function createGame.create(player)

        local g = GLOBALS
        
        -- Initialize events table
        g.events = {}
        
        -- current text onscreen
        --g.curText = {}
    
        -- Player table
        g.players = {}
        table.insert(g.players,g.createPlayer.create(player))

        -- Initialize the enemies and their shot table
        g.enemies = {}
        g.enemyShots = {}

        -- Initialize the power-up table
        g.powerUps = {}

        -- Star field table
        g.stars = {}
        
        -- Tile table
        --g.tiles = {}
        
        -- The level complete animation is disabled by default
        g.levelCompleteAnimation = false

        g.timers = {}
        g.timers.titleTimer = 0
        g.timers.gameTimer = 0
        g.timers.deathTimer = 0
        g.timers.levelCompleteAnimationTimer = 0
    end

return createGame