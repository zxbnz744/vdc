-- 🧼 Cleanup
if game.CoreGui:FindFirstChild("CosmicHub") then
    game.CoreGui.CosmicHub:Destroy()
end

-- 🌌 GUI Setup
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "CosmicHub"

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 300, 0, 400)
main.Position = UDim2.new(0, 50, 0, 100)
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "🌌 COSMIC HUB"
title.TextColor3 = Color3.fromRGB(255, 0, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24

-- 🧱 Tab System
local tabs = {"Combat", "Movement", "Render", "World", "Player"}
local tabFrames = {}

for i, name in ipairs(tabs) do
    local tabBtn = Instance.new("TextButton", main)
    tabBtn.Size = UDim2.new(0, 60, 0, 30)
    tabBtn.Position = UDim2.new(0, 10 + (i-1)*65, 0, 50)
    tabBtn.Text = name
    tabBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    tabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    tabBtn.Font = Enum.Font.SourceSansBold
    tabBtn.TextSize = 14

    local tabFrame = Instance.new("Frame", main)
    tabFrame.Size = UDim2.new(0, 280, 0, 300)
    tabFrame.Position = UDim2.new(0, 10, 0, 90)
    tabFrame.BackgroundTransparency = 1
    tabFrame.Visible = i == 1
    tabFrames[name] = tabFrame

    tabBtn.MouseButton1Click:Connect(function()
        for _, frame in pairs(tabFrames) do frame.Visible = false end
        tabFrame.Visible = true
    end)
end

-- 🧨 Button Factory
local function addButton(tabName, text, yPos, callback)
    local btn = Instance.new("TextButton", tabFrames[tabName])
    btn.Size = UDim2.new(0, 260, 0, 30)
    btn.Position = UDim2.new(0, 10, 0, yPos)
    btn.Text = text
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 16
    btn.MouseButton1Click:Connect(callback)
end

-- 🧠 Sample Features
addButton("Combat", "Kill Aura (Toggle)", 10, function()
    print("Kill Aura toggled")
    -- Add your combat logic here
end)

addButton("Movement", "Speed Hack (Toggle)", 10, function()
    print("Speed Hack toggled")
    -- Add your movement logic here
end)

addButton("Render", "ESP (Toggle)", 10, function()
    print("ESP toggled")
    -- Add your ESP logic here
end)

addButton("World", "X-Ray (Toggle)", 10, function()
    print("X-Ray toggled")
    -- Add your world logic here
end)

addButton("Player", "Anti Knockback (Toggle)", 10, function()
    print("Anti Knockback toggled")
    -- Add your player logic here
end)
