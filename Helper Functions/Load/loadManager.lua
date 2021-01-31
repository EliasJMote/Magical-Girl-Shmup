local loadManager = {}

function loadManager.load()

    local g = GLOBALS

    -- Load all helper functions
    -- Load all load functions
    g.loadEnemyFormationTable  = require("Helper Functions/Load/loadEnemyFormationTable")
    g.loadEnemyImages = require("Helper Functions/Load/Images/loadEnemyImages")
    g.loadEnemyShotImages = require("Helper Functions/Load/Images/loadEnemyShotImages")
    g.loadEnemyTable = require("Helper Functions/Load/loadEnemyTable")
    g.loadHelperFunctions = require("Helper Functions/Load/loadHelperFunctions")
    g.loadPlayerImages = require("Helper Functions/Load/Images/loadPlayerImages")
    g.loadPlayerShotImages = require("Helper Functions/Load/Images/loadPlayerShotImages")
    g.loadTileImages = require("Helper Functions/Load/Images/loadTileImages")
    g.loadUI = require("Helper Functions/Load/Images/loadUI")
    
    -- Load all create functions
    g.createEnemy = require("Helper Functions/Create/createEnemy")
    g.createEvent = require("Helper Functions/Create/createEvent")
    g.createGame = require("Helper Functions/Create/createGame")
    g.createPlayer = require("Helper Functions/Create/createPlayer")
    
    -- Load all update functions
    g.updateActor = require("Helper Functions/Update/updateActor")
    g.updateEnemyAI = require("Helper Functions/Update/updateEnemyAI")
    g.updateEvents = require("Helper Functions/Update/updateEvents")
    g.updateGameScreen = require("Helper Functions/Update/updateGameScreen")
    g.updateLevelCompleteScreen = require("Helper Functions/Update/updateLevelCompleteScreen")
    g.updateManager = require("Helper Functions/Update/updateManager")
    
    -- Load all draw functions
    g.drawCharacterSelectScreen = require("Helper Functions/Draw/drawCharacterSelectScreen")
    g.drawGameScreen = require("Helper Functions/Draw/drawGameScreen")
    g.drawLevelCompleteScreen = require("Helper Functions/Draw/drawLevelCompleteScreen")
    g.drawManager = require("Helper Functions/Draw/drawManager")
    g.drawTitleScreen = require("Helper Functions/Draw/drawTitleScreen")

    -- Load other functions
    g.eventLogic = require("Helper Functions/eventLogic")
    g.keyPressedManager = require("Helper Functions/keyPressedManager")
    g.spawnEnemies = require("Helper Functions/spawnEnemies")

    -- Set the scaler to use the nearest neighbor filter
    love.graphics.setDefaultFilter("nearest", "nearest", 0)

    -- Set the game window to be resizable
    love.window.setMode(love.graphics.getWidth(), love.graphics.getHeight(), {resizable = true})

    -- Set the mouse to be invisible
    love.mouse.setVisible(false)
    
    -- Initialize the max FPS
    g.minDT = 1/60 -- 1 / max FPS
    g.nextTime = love.timer.getTime()
    
    -- Initialize the game's width and height constants
    g.gameWidth = 256
    g.gameHeight = 240
    
    -- Initialize the game's scale factor
    g.scale = {}
    g.scale.x = love.graphics.getWidth()/g.gameWidth
    g.scale.y = love.graphics.getHeight()/g.gameHeight
    
    -- Initialize all images that the game uses
    g.images = {}
    g.images.playerCharacters = g.loadPlayerImages.load()
    g.images.UI = g.loadUI.load()
    g.images.enemies = g.loadEnemyImages.load()
    g.images.playerShots = g.loadPlayerShotImages.load()
    g.images.enemyShots = g.loadEnemyShotImages.load()
    g.images.tiles = g.loadTileImages.load()
    
    -- Load the enemy table
    g.enemyTable = g.loadEnemyTable.load()
    
    -- Load the enemy formation tables
    g.enemyFormationTable = g.loadEnemyFormationTable.load()
    
    -- Initialize game state
    g.state = "title"
    
    -- Set the font
    local font = love.graphics.newFont("Font/prstart.ttf", 8)
    love.graphics.setFont(font)
    
    -- Initialize the event table
    g.events = {}

end

return loadManager