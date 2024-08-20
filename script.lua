-- Script para carregar e executar múltiplos scripts

-- Função para carregar e executar um script remoto
local function loadRemoteScript(url)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)
    
    if not success then
        warn("Erro ao carregar o script: " .. result)
    end
end

-- URLs dos scripts remotos
local scriptUrls = {
    "https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source",
    "https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB",
    "https://raw.githubusercontent.com/CLEITIN6966/executarscriptsdobrookhaven/main/fly.lua",
    "https://raw.githubusercontent.com/CLEITIN6966/executarscriptsdobrookhaven/main/rochips.lua" -- URL do novo script
}

-- Carregar e executar cada script remoto
for _, url in ipairs(scriptUrls) do
    loadRemoteScript(url)
end

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/CLEITIN6966/executarscriptsdobrookhaven/main/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "by CLEITI6966";
Title = "load success";
Duration = 9;
});
