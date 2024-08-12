-- Script para impulso de jogador com força de 1000
-- Coloque este script em um LocalScript dentro do StarterPlayerScripts ou StarterCharacterScripts

local Players = game:GetService("Players")

local function onPlayerAdded(player)
    -- Aguarda até que o personagem do jogador esteja totalmente carregado
    player.CharacterAdded:Connect(function(character)
        -- Espera o Humanoid do personagem estar disponível
        local humanoid = character:WaitForChild("Humanoid")
        -- Espera o model do personagem estar disponível
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Adiciona um impulso ao jogador
        local function applyImpulse()
            if rootPart then
                local bodyVelocity = Instance.new("BodyVelocity")
                bodyVelocity.Velocity = Vector3.new(0, 1000, 0) -- Ajuste a força do impulso para 1000
                bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0) -- Garante que a força seja aplicada sem restrições
                bodyVelocity.Parent = rootPart
                
                -- Remove o BodyVelocity após 0.1 segundos para não afetar o movimento do jogador continuamente
                game:GetService("Debris"):AddItem(bodyVelocity, 0.1)
            end
        end

        -- Aplicar o impulso quando o jogador toca um determinado objeto (exemplo)
        local part = workspace:FindFirstChild("Impulsionador") -- Certifique-se de que o objeto existe no workspace
        if part then
            part.Touched:Connect(function(hit)
                if hit.Parent == character then
                    applyImpulse()
                end
            end)
        end
    end)
end

Players.PlayerAdded:Connect(onPlayerAdded)

-- LocalScript para teletransportar o jogador para um jogador aleatório em loop

local Players = game:GetService("Players")

-- Função para teletransportar o jogador
local function teleportToRandomPlayer(player)
    local allPlayers = Players:GetPlayers()
    
    -- Remove o jogador atual da lista de jogadores
    local otherPlayers = {}
    for _, p in pairs(allPlayers) do
        if p ~= player then
            table.insert(otherPlayers, p)
        end
    end
    
    -- Verifica se há outros jogadores disponíveis
    if #otherPlayers == 0 then
        warn("Nenhum jogador para teleportar.")
        return
    end

    -- Escolhe um jogador aleatório da lista
    local randomPlayer = otherPlayers[math.random(1, #otherPlayers)]
    local character = randomPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        -- Teletransporta o jogador para o HumanoidRootPart do jogador aleatório
        player.Character:SetPrimaryPartCFrame(character.HumanoidRootPart.CFrame)
    else
        warn("O jogador aleatório não tem um HumanoidRootPart.")
    end
end

-- Exemplo de uso: teletransporta o jogador que executa o script para um jogador aleatório em loop
local player = Players.LocalPlayer

while true do
    teleportToRandomPlayer(player)
    wait(000000000)  -- Aguarda 0 segundos antes de teletransportar novamente
end

-- Obtém a parte onde o script está localizado
local part = script.Parent

-- Define a força do impulso
local impulseForce = 5000

-- Função para lidar com o toque na parte
local function onTouch(other)
    -- Verifica se o objeto tocado é um jogador
    local character = other.Parent
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    
    if humanoid then
        -- Aplica uma força no personagem para impulsioná-lo
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, impulseForce, 0) -- Ajuste a direção e a força conforme necessário
        bodyVelocity.Parent = character.PrimaryPart
        
        -- Remove a BodyVelocity após um curto período para evitar efeitos contínuos
        game:GetService("Debris"):AddItem(bodyVelocity, 0.1)
    end
end

-- Conecta a função de toque ao evento de toque da parte
part.Touched:Connect(onTouch)

-- LocalScript para teletransportar o jogador para um jogador aleatório em loop

local Players = game:GetService("Players")

-- Função para teletransportar o jogador
local function teleportToRandomPlayer(player)
    local allPlayers = Players:GetPlayers()
    
    -- Remove o jogador atual da lista de jogadores
    local otherPlayers = {}
    for _, p in pairs(allPlayers) do
        if p ~= player then
            table.insert(otherPlayers, p)
        end
    end
    
    -- Verifica se há outros jogadores disponíveis
    if #otherPlayers == 0 then
        warn("Nenhum jogador para teleportar.")
        return
    end

    -- Escolhe um jogador aleatório da lista
    local randomPlayer = otherPlayers[math.random(1, #otherPlayers)]
    local character = randomPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        -- Teletransporta o jogador para o HumanoidRootPart do jogador aleatório
        player.Character:SetPrimaryPartCFrame(character.HumanoidRootPart.CFrame)
    else
        warn("O jogador aleatório não tem um HumanoidRootPart.")
    end
end

-- Exemplo de uso: teletransporta o jogador que executa o script para um jogador aleatório em loop
local player = Players.LocalPlayer

while true do
    teleportToRandomPlayer(player)
    wait(000000000)  -- Aguarda 0 segundos antes de teletransportar novamente
end
--by code CLEITI696
--fling 3 code by 0Ben1
--fling 2 code by CLEITI6966
--fling 1 code by CLEITI6966

Players.PlayerAdded:Connect(onPlayerAdded)

-- LocalScript para teletransportar o jogador para um jogador aleatório em loop

local Players = game:GetService("Players")

-- Função para teletransportar o jogador
local function teleportToRandomPlayer(player)
    local allPlayers = Players:GetPlayers()
    
    -- Remove o jogador atual da lista de jogadores
    local otherPlayers = {}
    for _, p in pairs(allPlayers) do
        if p ~= player then
            table.insert(otherPlayers, p)
        end
    end
    
    -- Verifica se há outros jogadores disponíveis
    if #otherPlayers == 0 then
        warn("Nenhum jogador para teleportar.")
        return
    end

    -- Escolhe um jogador aleatório da lista
    local randomPlayer = otherPlayers[math.random(1, #otherPlayers)]
    local character = randomPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        -- Teletransporta o jogador para o HumanoidRootPart do jogador aleatório
        player.Character:SetPrimaryPartCFrame(character.HumanoidRootPart.CFrame)
    else
        warn("O jogador aleatório não tem um HumanoidRootPart.")
    end
end

-- Exemplo de uso: teletransporta o jogador que executa o script para um jogador aleatório em loop
local player = Players.LocalPlayer

while true do
    teleportToRandomPlayer(player)
    wait(000000000)  -- Aguarda 0 segundos antes de teletransportar novamente
end

Players.PlayerAdded:Connect(onPlayerAdded)

-- LocalScript para teletransportar o jogador para um jogador aleatório em loop

local Players = game:GetService("Players")

-- Função para teletransportar o jogador
local function teleportToRandomPlayer(player)
    local allPlayers = Players:GetPlayers()
    
    -- Remove o jogador atual da lista de jogadores
    local otherPlayers = {}
    for _, p in pairs(allPlayers) do
        if p ~= player then
            table.insert(otherPlayers, p)
        end
    end
    
    -- Verifica se há outros jogadores disponíveis
    if #otherPlayers == 0 then
        warn("Nenhum jogador para teleportar.")
        return
    end

    -- Escolhe um jogador aleatório da lista
    local randomPlayer = otherPlayers[math.random(1, #otherPlayers)]
    local character = randomPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        -- Teletransporta o jogador para o HumanoidRootPart do jogador aleatório
        player.Character:SetPrimaryPartCFrame(character.HumanoidRootPart.CFrame)
    else
        warn("O jogador aleatório não tem um HumanoidRootPart.")
    end
end

-- Exemplo de uso: teletransporta o jogador que executa o script para um jogador aleatório em loop
local player = Players.LocalPlayer

while true do
    teleportToRandomPlayer(player)
    wait(000000000)  -- Aguarda 0 segundos antes de teletransportar novamente
end

-- Script para executar código de uma URL externa

-- Função para carregar e executar o script de uma URL
local function executeScriptFromUrl(url)
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)
    
    if success and response then
        local success, err = pcall(function()
            loadstring(response)()
        end)
        
        if not success then
            warn("Erro ao executar o script: " .. err)
        end
    else
        warn("Erro ao obter o conteúdo da URL: " .. (response or "Desconhecido"))
    end
end

-- URL do script a ser carregado e executado
local scriptUrl = "https://raw.githubusercontent.com/CLEITIN6966/executarscriptsdobrookhaven/main/fling%203%20code"

-- Executa o script da URL
executeScriptFromUrl(scriptUrl)
--by code CLEITI696
--fling 3 code by 0Ben1
--fling 2 code by CLEITI6966
--fling 1 code by CLEITI6966
--fling super by 0Ben1
--🇧🇷🇧🇷🇧🇷--cleiti6966
--🇺🇸🇺🇸🇺🇸--0Ben1
