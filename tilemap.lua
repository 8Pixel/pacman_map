function DrawLayer(layer, image, tileset, firstgid)
    local index = 1
    local data = layer.data
    for i = 1, layer.height, 1 do
        for j = 1, layer.width, 1 do
            local x = math.floor((data[index] - firstgid) % tileset.columns)
            local y = math.floor((data[index] - firstgid) / tileset.columns)
            local width = tileset.tilewidth
            local height = tileset.tileheight
            local offsetX = layer.x
            local offsetY = layer.y
            local position = love.graphics.newQuad(x * width, y * height, width, height, image:getDimensions())
            love.graphics.draw(image, position, (j - 1 + offsetX) * width, (i - 1 + offsetY) * height)
            index = index + 1
        end
    end
end