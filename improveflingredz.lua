-- Script Local para fazer o personagem girar rapidamente

-- Espera o jogador estar completamente carregado
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Define a velocidade de rotação
local rotationSpeed = 99999999999999999999999999999999999999999999

-- Função para atualizar a rotação
local function updateRotation()
    while true do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(rotationSpeed), 0)
        wait(0.1) -- Ajuste o intervalo para controlar a suavidade da rotação
    end
end

-- Inicia a rotação
updateRotation()
