function love.conf(t)
    debug = false
    gameVersion = "1.0.0"
    local scale = 3
    t.title = "Space Phantasy V" .. gameVersion
    t.version = "11.1"
    t.window.width = 256 * scale
    t.window.height = 240 * scale
    t.console = false
end