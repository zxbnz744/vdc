-- 🌌 Load Rayfield UI Library
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source.lua"))()

-- 🧱 Create Main Window
local Window = Rayfield:CreateWindow({
    Name = "Cosmic Arsenal",
    LoadingTitle = "Injecting Chaos...",
    LoadingSubtitle = "by Edsa",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "CosmicArsenal",
        FileName = "config"
    },
    Discord = {
        Enabled = false
    },
    KeySystem = false
})

-- 🔖 Create Tabs
local RageTab = Window:CreateTab("Rage", 4483362458)
local LegitTab = Window:CreateTab("Legit", 4483362458)
local VisualsTab = Window:CreateTab("Visuals", 4483362458)
local SettingsTab = Window:CreateTab("Settings", 4483362458)
local ConfigTab = Window:CreateTab("Config", 4483362458)
local CreditTab = Window:CreateTab("Credits", 4483362458)

-- 🔴 Rage Tab Features
RageTab:CreateToggle({
    Name = "Silent Aim",
    CurrentValue = false,
    Callback = function(state)
        print("Silent Aim:", state)
    end
})

RageTab:CreateToggle({
    Name = "Auto Shoot",
    CurrentValue = false,
    Callback = function(state)
        print("Auto Shoot:", state)
    end
})

-- 🟢 Legit Tab Features
LegitTab:CreateToggle({
    Name = "Recoil Control",
    CurrentValue = false,
    Callback = function(state)
        print("Recoil Control:", state)
    end
})

LegitTab:CreateSlider({
    Name = "Aim Assist Strength",
    Range = {0, 100},
    Increment = 5,
    CurrentValue = 50,
    Callback = function(val)
        print("Aim Assist Strength:", val)
    end
})

-- 🟣 Visuals Tab Features
VisualsTab:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Callback = function(state)
        print("ESP:", state)
    end
})

VisualsTab:CreateColorPicker({
    Name = "ESP Color",
    Color = Color3.fromRGB(255, 0, 0),
    Callback = function(color)
        print("ESP Color:", color)
    end
})

-- ⚙️ Settings Tab Features
SettingsTab:CreateDropdown({
    Name = "Crosshair Style",
    Options = {"Dot", "Circle", "Plus", "None"},
    CurrentOption = "Dot",
    Callback = function(option)
        print("Crosshair Style:", option)
    end
})

SettingsTab:CreateSlider({
    Name = "FOV Radius",
    Range = {50, 500},
    Increment = 10,
    CurrentValue = 200,
    Callback = function(val)
        print("FOV Radius:", val)
    end
})

-- 💾 Config Tab Features
ConfigTab:CreateButton({
    Name = "Save Config",
    Callback = function()
        Rayfield:SaveConfiguration()
        print("Config saved")
    end
})

ConfigTab:CreateButton({
    Name = "Load Config",
    Callback = function()
        Rayfield:LoadConfiguration()
        print("Config loaded")
    end
})

-- 👑 Credit Tab Features
CreditTab:CreateParagraph({
    Title = "Made by Edsa",
    Content = "Cosmic Arsenal UI powered by Rayfield.\nScripted for chaos, precision, and style."
})

CreditTab:CreateButton({
    Name = "Copy Discord",
    Callback = function()
        setclipboard("discord.gg/yourserver")
        print("Discord copied to clipboard")
    end
})
