local loadManager = {}

function loadManager.load()

    local g = GLOBALS

    -- Load all helper functions
    -- Load all load functions
    g.loadHelperFunctions = require("Helper Functions/Load/loadHelperFunctions")
    g.loadPlayerImages = require("Helper Functions/Load/Images/loadPlayerImages")
    
    -- Load all create functions
    g.createEvent = require("Helper Functions/Create/createEvent")
    g.createGame = require("Helper Functions/Create/createGame")
    g.createEnemy = require("Helper Functions/Create/createEnemy")
    
    -- Load all update functions
    g.updateActor = require("Helper Functions/Update/updateActor")
    g.updateEvents = require("Helper Functions/Update/updateEvents")
    g.updateGameScreen = require("Helper Functions/Update/updateGameScreen")
    g.updateManager = require("Helper Functions/Update/updateManager")
    
    -- Load all draw functions
    g.drawGameScreen = require("Helper Functions/Draw/drawGameScreen")
    g.drawManager = require("Helper Functions/Draw/drawManager")
    g.drawTitleScreen = require("Helper Functions/Draw/drawTitleScreen")

    -- Load other functions
    g.eventLogic = require("Helper Functions/eventLogic")
    g.keyPressedManager = require("Helper Functions/keyPressedManager")

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
    
    -- Initialize game state
    g.state = "title"
    
    -- Set the font
    local font = love.graphics.newFont("Font/prstart.ttf", 8)
    love.graphics.setFont(font)
    
    -- Initialize the event table
    g.events = {}

end

return loadManager