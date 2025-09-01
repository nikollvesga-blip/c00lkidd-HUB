-- ===== FIESTA PHONK ULTRA ÉPICA PARA KRNL =====

local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- ==== Música Phonk ====
local phonk = Instance.new("Sound")
phonk.SoundId = "rbxassetid://14145623658" -- ID de la música phonk "Monster Bass"
phonk.Volume = 1
phonk.Looped = true
phonk.Parent = Workspace
phonk:Play()

-- ==== Función para crear altavoces con luces y partículas ====
local function crearAltavoz(pos)
    local speaker = Instance.new("Part")
    speaker.Size = Vector3.new(6,6,3)
    speaker.Position = pos
    speaker.Anchored = true
    speaker.BrickColor = BrickColor.new("Really black")
    speaker.Material = Enum.Material.Metal
    speaker.Parent = Workspace

    -- Luz parpadeante
    local light = Instance.new("PointLight")
    light.Color = Color3.fromRGB(255,0,255)
    light.Brightness = 5
    light.Range = 25
    light.Parent = speaker

    -- Hacer luz parpadear al ritmo (simulación)
    RunService.Heartbeat:Connect(function()
        light.Brightness = 3 + math.random()*4
        light.Color = Color3.fromRGB(math.random(150,255),0,math.random(150,255))
    end)

    -- Partículas tipo fiesta
    local particles = Instance.new("ParticleEmitter")
    particles.Texture = "rbxassetid://243660364" -- chispa simple
    particles.Rate = 150
    particles.Lifetime = NumberRange.new(1)
    particles.Speed = NumberRange.new(8)
    particles.Size = NumberSequence.new(2)
    particles.Color = ColorSequence.new(Color3.fromRGB(255,0,255), Color3.fromRGB(0,255,255))
    particles.Parent = speaker

    -- Efecto de humo
    local smoke = Instance.new("Smoke")
    smoke.Color = Color3.fromRGB(200,0,255)
    smoke.Opacity = 0.3
    smoke.Size = 10
    smoke.RiseVelocity = 5
    smoke.Parent = speaker

    return speaker
end

-- ==== Crear altavoces alrededor del centro ====
local centro = Vector3.new(0,3,0) -- centro de la fiesta
crearAltavoz(centro + Vector3.new(15,0,0))
crearAltavoz(centro + Vector3.new(-15,0,0))
crearAltavoz(centro + Vector3.new(0,0,15))
crearAltavoz(centro + Vector3.new(0,0,-15))

-- ==== Efectos de luces adicionales en el centro ====
local disco = Instance.new("Part")
disco.Size = Vector3.new(10,1,10)
disco.Position = centro
disco.Anchored = true
disco.BrickColor = BrickColor.new("Really black")
disco.Material = Enum.Material.Neon
disco.Parent = Workspace

local discoLight = Instance.new("PointLight")
discoLight.Color = Color3.fromRGB(0,255,255)
discoLight.Brightness = 6
discoLight.Range = 30
discoLight.Parent = disco

-- Luz parpadeante al ritmo
RunService.Heartbeat:Connect(function()
    discoLight.Brightness = 4 + math.random()*4
    discoLight.Color = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
end)

print("🎉 FIESTA PHONK ULTRA ÉPICA LISTA EN KRNL 🔥🎧")
