require 'utils'
require 'tilemap'

function love.load()

    love.window.setTitle('Pacman Map')
    love.window.setMode(800, 600, {})

    MapImage = love.graphics.newImage('levels/assets/background2.png')
    GumImage = love.graphics.newImage('levels/assets/Gum.png')

    Map = LoadJson('levels/map.json')
    MapTileset = LoadJson('levels/pacman_tileset.json')
    GumTileset = LoadJson('levels/gum.json')
end

function love.update(dt)
end

function love.draw()
    DrawLayer(Map.layers[1], MapImage, MapTileset, 1)
    DrawLayer(Map.layers[2], GumImage, GumTileset, 265)
end