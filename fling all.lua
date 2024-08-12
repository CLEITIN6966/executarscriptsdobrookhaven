-- LocalScript

-- Função para obter todos os jogadores no servidor
local function getAllPlayers()
    local players = game:GetService("Players"):GetPlayers()
    return players
end

-- Função para teleportar o jogador para um jogador aleatório
local function teleportToRandomPlayer()
    local players = getAllPlayers()
    
    -- Certifica-se de que há mais de um jogador no jogo
    if #players > 1 then
        local localPlayer = game.Players.LocalPlayer
        local randomPlayer

        -- Remove o localPlayer da lista para evitar teleportar para si mesmo
        local otherPlayers = {}
        for _, player in ipairs(players) do
            if player ~= localPlayer then
                table.insert(otherPlayers, player)
            end
        end
        
        if #otherPlayers > 0 then
            randomPlayer = otherPlayers[math.random(#otherPlayers)]
            
            -- Teleporta o jogador para a posição do jogador aleatório
            local character = localPlayer.Character
            if character and randomPlayer.Character and randomPlayer.Character:FindFirstChild("HumanoidRootPart") then
                character:SetPrimaryPartCFrame(randomPlayer.Character.HumanoidRootPart.CFrame)
            end
        end
    end
end

-- Loop para teleportar o jogador a cada 10 segundos
while true do
    teleportToRandomPlayer()
    wait(0)  -- Tempo de espera em segundos
end

-- LocalScript

-- Função para obter todos os jogadores no servidor
local function getAllPlayers()
    local players = game:GetService("Players"):GetPlayers()
    return players
end

-- Função para teleportar o jogador para um jogador aleatório
local function teleportToRandomPlayer()
    local players = getAllPlayers()
    
    -- Certifica-se de que há mais de um jogador no jogo
    if #players > 1 then
        local localPlayer = game.Players.LocalPlayer
        local randomPlayer

        -- Remove o localPlayer da lista para evitar teleportar para si mesmo
        local otherPlayers = {}
        for _, player in ipairs(players) do
            if player ~= localPlayer then
                table.insert(otherPlayers, player)
            end
        end
        
        if #otherPlayers > 0 then
            randomPlayer = otherPlayers[math.random(#otherPlayers)]
            
            -- Teleporta o jogador para a posição do jogador aleatório
            local character = localPlayer.Character
            if character and randomPlayer.Character and randomPlayer.Character:FindFirstChild("HumanoidRootPart") then
                character:SetPrimaryPartCFrame(randomPlayer.Character.HumanoidRootPart.CFrame)
            end
        end
    end
end

-- Loop para teleportar o jogador a cada 10 segundos
while true do
    teleportToRandomPlayer()
    wait(0)  -- Tempo de espera em segundos
end

-- LocalScript

-- Função para obter todos os jogadores no servidor
local function getAllPlayers()
    local players = game:GetService("Players"):GetPlayers()
    return players
end

-- Função para teleportar o jogador para um jogador aleatório
local function teleportToRandomPlayer()
    local players = getAllPlayers()
    
    -- Certifica-se de que há mais de um jogador no jogo
    if #players > 1 then
        local localPlayer = game.Players.LocalPlayer
        local randomPlayer

        -- Remove o localPlayer da lista para evitar teleportar para si mesmo
        local otherPlayers = {}
        for _, player in ipairs(players) do
            if player ~= localPlayer then
                table.insert(otherPlayers, player)
            end
        end
        
        if #otherPlayers > 0 then
            randomPlayer = otherPlayers[math.random(#otherPlayers)]
            
            -- Teleporta o jogador para a posição do jogador aleatório
            local character = localPlayer.Character
            if character and randomPlayer.Character and randomPlayer.Character:FindFirstChild("HumanoidRootPart") then
                character:SetPrimaryPartCFrame(randomPlayer.Character.HumanoidRootPart.CFrame)
            end
        end
    end
end

-- Loop para teleportar o jogador a cada 10 segundos
while true do
    teleportToRandomPlayer()
    wait(0)  -- Tempo de espera em segundos
end
