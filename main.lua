function love.load()
    GLOBALS = {}
    local g = GLOBALS

    -- Load everything
    g.loadManager = require("Helper Functions/Load/loadManager")
    g.loadManager.load()
end

function love.update(dt)
    local g = GLOBALS
    
    g.updateManager.update()
end

function love.draw()
    local g = GLOBALS
    
    g.drawManager.draw()
end

-- Check for pressed functions (for navigating menus)
function love.keypressed(key, scancode, isrepeat)
    local g = GLOBALS
    
    g.keyPressedManager.keyPressed(key, scancode, isrepeat)
end