-- ========================================================
-- YOUNGPRINCEHUB.V1 (BILLIONAIRE ROYAL CLASS EDITION)
-- Deep Royal Obsidian Black & 24K Polished Gold Theme
-- Handcrafted for Pure Wealth & Absolute Aesthetic Superiority
-- ========================================================

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local VirtualUser = game:GetService("VirtualUser")

_G.AutoHarvest = false
_G.AutoSell = false
_G.AntiAFK = true

-- Core Screen GUI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "YoungPrinceHub_Luxury"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

pcall(function() ScreenGui.Parent = game:GetService("CoreGui") end)
if not ScreenGui.Parent then ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui") end

-- ========================================================
-- 👑 FLOATING LOGO (24K SOLID GOLD CROWN)
-- ========================================================
local LogoButton = Instance.new("ImageButton")
LogoButton.Name = "RoyalGoldLogo"
LogoButton.Size = UDim2.new(0, 68, 0, 68)
LogoButton.Position = UDim2.new(0.05, 0, 0.2, 0)
LogoButton.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
LogoButton.BorderSizePixel = 0
LogoButton.Image = "rbxassetid://10803403217" -- Premium Crown Asset
LogoButton.ImageColor3 = Color3.fromRGB(235, 180, 50) -- Polished Gold Base
local LogoCorner = Instance.new("UICorner", LogoButton)
LogoCorner.CornerRadius = UDim.new(1, 0)

local LogoStroke = Instance.new("UIStroke", LogoButton)
LogoStroke.Color = Color3.fromRGB(255, 215, 0) -- 24K Yellow Gold
LogoStroke.Thickness = 2.5

local LogoGlow = Instance.new("ImageLabel", LogoButton)
LogoGlow.Size = UDim2.new(1, 30, 1, 30)
LogoGlow.Position = UDim2.new(0, -15, 0, -15)
LogoGlow.BackgroundTransparency = 1
LogoGlow.Image = "rbxassetid://13160451551"
LogoGlow.ImageColor3 = Color3.fromRGB(218, 165, 32)
LogoGlow.ImageTransparency = 0.4
LogoGlow.ZIndex = LogoButton.ZIndex - 1
LogoButton.Parent = ScreenGui

-- Metallic Gold Reflection Simulation (Logo)
coroutine.wrap(function()
    while task.wait(0.05) do
        for i = 1, 10 do
            local ratio = i / 10
            LogoStroke.Color = Color3.fromRGB(218 + (37 * ratio), 165 + (50 * ratio), 32 - (32 * ratio))
            task.wait(0.05)
        end
    end
end)()

-- Smooth Drag Engine for the Floating Logo Button
local l_dragging, l_dragInput, l_dragStart, l_startPos
LogoButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        l_dragging = true; l_dragStart = input.Position; l_startPos = LogoButton.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then l_dragging = false end end)
    end
end)
LogoButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then l_dragInput = input end
end)
game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == l_dragInput and l_dragging then
        local delta = input.Position - l_dragStart
        LogoButton.Position = UDim2.new(l_startPos.X.Scale, l_startPos.X.Offset + delta.X, l_startPos.Y.Scale, l_startPos.Y.Offset + delta.Y)
    end
end)

-- ========================================================
-- 📱 MAIN ROYAL MATRIX PANEL
-- ========================================================
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 430, 0, 330)
MainFrame.Position = UDim2.new(0.5, -215, 0.4, -165)
MainFrame.BackgroundColor3 = Color3.fromRGB(14, 14, 16)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Visible = false
MainFrame.Parent = ScreenGui

local PanelCorner = Instance.new("UICorner", MainFrame)
PanelCorner.CornerRadius = UDim.new(0, 14)

-- Dual-Stroked Heavy Gold Outline Frame
local PanelStroke = Instance.new("UIStroke", MainFrame)
PanelStroke.Color = Color3.fromRGB(218, 165, 32)
PanelStroke.Thickness = 3

local PanelGlow = Instance.new("ImageLabel", MainFrame)
PanelGlow.Size = UDim2.new(1, 40, 1, 40)
PanelGlow.Position = UDim2.new(0, -20, 0, -20)
PanelGlow.BackgroundTransparency = 1
PanelGlow.Image = "rbxassetid://13160451551"
PanelGlow.ImageColor3 = Color3.fromRGB(184, 134, 11)
PanelGlow.ImageTransparency = 0.5
PanelGlow.ZIndex = MainFrame.ZIndex - 1

-- Metallic Gold Reflection Simulation (Main Board)
coroutine.wrap(function()
    while task.wait(0.04) do
        for i = 1, 20 do
            local ratio = i / 20
            PanelStroke.Color = Color3.fromRGB(184 + (71 * ratio), 134 + (81 * ratio), 11 + (21 * ratio))
            task.wait(0.04)
        end
    end
end)()

-- Header Core (True Silk Ribbon Style)
local Header = Instance.new("Frame", MainFrame)
Header.Size = UDim2.new(1, 0, 0, 58)
Header.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
Header.BorderSizePixel = 0

local Title = Instance.new("TextLabel", Header)
Title.Size = UDim2.new(1, -30, 1, 0)
Title.Position = UDim2.new(0, 24, 0, 0)
Title.Text = "YOUNGPRINCEHUB.V1"
Title.TextColor3 = Color3.fromRGB(255, 235, 180) -- Champagne Gold Text
Title.Font = Enum.Font.GothamBold
Title.TextSize = 17
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.BackgroundTransparency = 1

local RoyalTag = Instance.new("TextLabel", Header)
RoyalTag.Size = UDim2.new(0, 95, 0, 22)
RoyalTag.Position = UDim2.new(1, -120, 0.5, -11)
RoyalTag.BackgroundColor3 = Color3.fromRGB(218, 165, 32)
RoyalTag.Text = "ROYAL CLASS"
RoyalTag.TextColor3 = Color3.fromRGB(15, 15, 15)
RoyalTag.Font = Enum.Font.GothamBold
RoyalTag.TextSize = 10
Instance.new("UICorner", RoyalTag).CornerRadius = UDim.new(0, 4)

local HeaderLine = Instance.new("Frame", Header)
HeaderLine.Size = UDim2.new(1, 0, 0, 2.5)
HeaderLine.Position = UDim2.new(0, 0, 1, -2.5)
HeaderLine.BackgroundColor3 = Color3.fromRGB(218, 165, 32)
HeaderLine.BorderSizePixel = 0

-- Items Content Container
local Container = Instance.new("Frame", MainFrame)
Container.Size = UDim2.new(1, -40, 1, -85)
Container.Position = UDim2.new(0, 20, 0, 75)
Container.BackgroundTransparency = 1

local UIList = Instance.new("UIListLayout", Container)
UIList.SortOrder = Enum.SortOrder.LayoutOrder
UIList.Padding = UDim.new(0, 14)

-- ========================================================
-- 💎 EXQUISITE LUXURY ROW TOGGLE FRAMEWORK
-- ========================================================
local function AddBillionaireToggle(labelText, defaultState, callback)
    local RowFrame = Instance.new("Frame", Container)
    RowFrame.Size = UDim2.new(1, 0, 0, 54)
    RowFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 28)
    RowFrame.BorderSizePixel = 0
    Instance.new("UICorner", RowFrame).CornerRadius = UDim.new(0, 8)
    
    local RowStroke = Instance.new("UIStroke", RowFrame)
    RowStroke.Color = Color3.fromRGB(45, 45, 50)
    RowStroke.Thickness = 1.5

    local Label = Instance.new("TextLabel", RowFrame)
    Label.Size = UDim2.new(0.65, 0, 1, 0)
    Label.Position = UDim2.new(0, 20, 0, 0)
    Label.Text = labelText
    Label.TextColor3 = Color3.fromRGB(240, 240, 245)
    Label.Font = Enum.Font.GothamMedium
    Label.TextSize = 13
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.BackgroundTransparency = 1
    
    local StatusTag = Instance.new("TextLabel", RowFrame)
    StatusTag.Size = UDim2.new(0, 85, 0, 20)
    StatusTag.Position = UDim2.new(1, -165, 0.5, -10)
    StatusTag.BackgroundTransparency = 1
    StatusTag.Text = defaultState and "• ENGAGED" or "• STANDBY"
    StatusTag.TextColor3 = defaultState and Color3.fromRGB(255, 215, 0) or Color3.fromRGB(110, 110, 115)
    StatusTag.Font = Enum.Font.GothamBold
    StatusTag.TextSize = 11
    StatusTag.TextXAlignment = Enum.TextXAlignment.Right

    local SwitchBtn = Instance.new("TextButton", RowFrame)
    SwitchBtn.Size = UDim2.new(0, 56, 0, 28)
    SwitchBtn.Position = UDim2.new(1, -76, 0.5, -14)
    SwitchBtn.BackgroundColor3 = defaultState and Color3.fromRGB(218, 165, 32) or Color3.fromRGB(40, 40, 45)
    SwitchBtn.Text = ""
    SwitchBtn.AutoButtonColor = false
    Instance.new("UICorner", SwitchBtn).CornerRadius = UDim.new(1, 0)
    
    local SwitchBall = Instance.new("Frame", SwitchBtn)
    SwitchBall.Size = UDim2.new(0, 22, 0, 22)
    SwitchBall.Position = defaultState and UDim2.new(1, -26, 0.5, -11) or UDim2.new(0, 4, 0.5, -11)
    SwitchBall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Instance.new("UICorner", SwitchBall).CornerRadius = UDim.new(1, 0)
    
    local active = defaultState
    SwitchBtn.MouseButton1Click:Connect(function()
        active = not active
        local endPos = active and UDim2.new(1, -26, 0.5, -11) or UDim2.new(0, 4, 0.5, -11)
        local endColor = active and Color3.fromRGB(218, 165, 32) or Color3.fromRGB(40, 40, 45)
        local borderGlow = active and Color3.fromRGB(255, 215, 0) or Color3.fromRGB(45, 45, 50)
        
        StatusTag.Text = active and "• ENGAGED" or "• STANDBY"
        StatusTag.TextColor3 = active and Color3.fromRGB(255, 215, 0) or Color3.fromRGB(110, 110, 115)
        
        TweenService:Create(SwitchBall, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = endPos}):Play()
        TweenService:Create(SwitchBtn, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = endColor}):Play()
        TweenService:Create(RowStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = borderGlow}):Play()
        
        callback(active)
    end)
end

-- Render Luxury Rows Inside Options Screen
AddBillionaireToggle("Harvest Matured Plots (Stationary Link)", _G.AutoHarvest, function(state)
    _G.AutoHarvest = state
end)

AddBillionaireToggle("Liquefy Stock Inventory (Direct Sell)", _G.AutoSell, function(state)
