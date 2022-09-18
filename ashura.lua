local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Roadman Ashura v1", "DarkTheme")

local http = game:GetService('HttpService')
local req = (syn and syn.request) or (http and http.request) or http_request
if req then
req({
Url = 'http://127.0.0.1:6463/rpc?v=1',
Method = 'POST',
Headers = {
['Content-Type'] = 'application/json',
Origin = 'https://discord.com'
},
Body = http:JSONEncode({
cmd = 'INVITE_BROWSER',
nonce = http:GenerateGUID(false),
args = {code = 'w29Xfrdt'} -- put your server's code here in between the single quotes, and that's literally all you need
})
})
end


--Main
local Farming = Window:NewTab("Farming")
local Farmsection = Farming:NewSection("AutoFarms:")

local Misc = Window:NewTab("Misc")
local Stats = Misc:NewSection("Stats")
local Credits = Window:NewTab("Credits")
local Credits2 = Credits:NewSection("Credits: Wunna#7805")

local function StatGui()
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Delete") then
        game.Players.LocalPlayer.PlayerGui:FindFirstChild("Delete"):Destroy()
    end


    -- Instances:

    local Delete = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")

    local TextLabel_2 = Instance.new("TextLabel")
    local TextLabel_3 = Instance.new("TextLabel")

    --Properties:

    Delete.Name = "Delete"
    Delete.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    Delete.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = Delete
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1.000
    Frame.Position = UDim2.new(0.199556544, 0, 0.19951041, 0)
    Frame.Size = UDim2.new(0, 292, 0, 116)

    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Size = UDim2.new(1, 0, 0.318965524, 0)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextStrokeTransparency = 0.000
    TextLabel.TextWrapped = true
    local places = 2 -- the amount of decimal places
    local number = game.Players.LocalPlayer.Character:FindFirstChild("Strength").Value

    local mult = 10^places
    number=math.floor(number*mult)/mult -- 0.62
    
    
    
    TextLabel.Text = "Strength: "..number

    TextLabel_2.Parent = Frame
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.Position = UDim2.new(0, 0, 0.336206883, 0)
    TextLabel_2.Size = UDim2.new(1, 0, 0.318965524, 0)
    TextLabel_2.Font = Enum.Font.SourceSans
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.TextScaled = true
    TextLabel_2.TextSize = 14.000
    TextLabel_2.TextStrokeTransparency = 0.000
    TextLabel_2.TextWrapped = true

    local places = 2 -- the amount of decimal places
    local number = game.Players.LocalPlayer.Character:FindFirstChild("Speed").Value

    local mult = 10^places
    number=math.floor(number*mult)/mult -- 0.62
    
    
    
    TextLabel_2.Text = "Speed: "..number

    TextLabel_3.Parent = Frame
    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.BackgroundTransparency = 1.000
    TextLabel_3.Position = UDim2.new(0, 0, 0.681034446, 0)
    TextLabel_3.Size = UDim2.new(1, 0, 0.318965524, 0)
    TextLabel_3.Font = Enum.Font.SourceSans
    TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.TextScaled = true
    TextLabel_3.TextSize = 14.000
    TextLabel_3.TextStrokeTransparency = 0.000
    TextLabel_3.TextWrapped = true
    local places = 2 -- the amount of decimal places
    local number = game.Players.LocalPlayer.Character:FindFirstChild("MaxStamina").Value
    local mult = 10^places
    number=math.floor(number*mult)/mult -- 0.62
    TextLabel_3.Text = "Stamina: "..number

    -- Scripts:

    local function BVPOB_fake_script() -- TextLabel.LocalScript 
        local script = Instance.new('LocalScript', TextLabel)

        local player = game.Players.LocalPlayer
        
        local char = player.Character
        
        while true do
            wait(0.1)
            
            local places = 2 -- the amount of decimal places
            local number = char:FindFirstChild("Strength").Value
        
            local mult = 10^places
            number=math.floor(number*mult)/mult -- 0.62
            
            
            
            script.Parent.Text = "Strength: "..number
        end
    end
    coroutine.wrap(BVPOB_fake_script)()
    local function LNCBETH_fake_script() -- TextLabel_2.LocalScript 
        local script = Instance.new('LocalScript', TextLabel_2)

        local player = game.Players.LocalPlayer
        
        local char = player.Character
        
        while true do
            wait(0.1)
            
            local places = 2 -- the amount of decimal places
            local number = char:FindFirstChild("Speed").Value
        
            local mult = 10^places
            number=math.floor(number*mult)/mult -- 0.62
            
            
            
            script.Parent.Text = "Speed: "..number
        end
    end
    coroutine.wrap(LNCBETH_fake_script)()
    local function LFRK_fake_script() -- TextLabel_3.LocalScript 
        local script = Instance.new('LocalScript', TextLabel_3)

        local player = game.Players.LocalPlayer
        
        local char = player.Character
        
        while true do
            wait(0.1)
            
            local places = 2 -- the amount of decimal places
            local number = char:FindFirstChild("MaxStamina").Value
        
            local mult = 10^places
            number=math.floor(number*mult)/mult -- 0.62
            
            
            
            script.Parent.Text = "Stamina: "..number
        end
    end
    coroutine.wrap(LFRK_fake_script)()
end

Stats:NewToggle("Show Stats", "Shows you your real-time stats (Auto Updates)", function(state)
    if state then
        StatGui()
    else
        game.Players.LocalPlayer.PlayerGui:FindFirstChild("Delete"):Destroy()
    end
end)

Credits2:NewButton("Rejoin", "ButtonInfo", function()
    local tpservice= game:GetService("TeleportService")
    local plr = game.Players.LocalPlayer

    tpservice:Teleport(10424457308, plr)
end)

Credits2:NewKeybind("CloseUi", "Closes the UI", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)

Farmsection:NewButton("Treadmill Glitch", "Allows you to treadmill from anywhere", function()
    for i,v in pairs(game:GetDescendants()) do
        if v:IsA("ClickDetector") then
            fireclickdetector(v)
        end
    end
end)

Farmsection:NewToggle("Auto Grinds Money", "Auto Grinds Money", function(state)
    if state then
        local board = game.workspace.bord3
        if game.Players.LocalPlayer.PlayerGui.JobGui.Frame.Type.Text == "Delivery Job" then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(3, Enum.EasingStyle.Linear) --Change Time

            tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(workspace.Jobs["POINT3"].Position)}) -- Change Teleport to Part
            tween:Play()
            wait(4)
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(3, Enum.EasingStyle.Linear) --Change Time

            tween2 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(workspace.bord3["Part"].Position)}) -- Change Teleport to Part
            tween2:Play()
            wait(4)
            
         end
    else
    print("Error")    
    end
end)
