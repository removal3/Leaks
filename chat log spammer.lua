local function gen(length)
    local randomString = ""
    for i = 1, length do
        randomString = randomString .. string.char(math.random(65, 90 + math.random(0, 1) * 32))
    end
    return randomString
end

while task.wait() do
game.Players:chat('stop logging my chat | ' .. gen(1))
end