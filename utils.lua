local io = require('io')
local json = require('json.json')

function LoadJson(filename)
    local file = io.open(filename, 'r')
    local content = nil
    local jsonStr = ''
    repeat
        content = file:read()
        if(content ~= nil) then
            jsonStr = jsonStr .. content
        end
    until content == nil
    return json.decode(jsonStr)
end