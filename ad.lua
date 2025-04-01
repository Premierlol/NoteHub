--setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
--loadstring(game:HttpGet('https://raw.githubusercontent.com/Premierlol/Gui/refs/heads/main/GuiFischkaitan.lua'))()
spawn(function()
    while _G.AutoStatus do 
        wait()
        --Gui Kiatan Fisch
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Premierlol/Gui/refs/heads/main/GuiFischkaitan.lua'))()
    end
end)



wait(0.1)
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flimsy Rod")
}

game:GetService("ReplicatedStorage"):WaitForChild("packages"):WaitForChild("Net"):WaitForChild("RE/Backpack/Equip"):FireServer(unpack(args))



equipitem = function(v)
if LocalPlayer.Backpack:FindFirstChild(v) then
    local a = LocalPlayer.Backpack:FindFirstChild(v)
        Humanoid:EquipTool(a)
    end
end


local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()



local Player = game:GetService("Players")
local LocalPlayer = Player.LocalPlayer
local Char = LocalPlayer.Character
local Humanoid = Char.Humanoid
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GuiService = game:GetService("GuiService")

equipitem = function(v)
if LocalPlayer.Backpack:FindFirstChild(v) then
    local a = LocalPlayer.Backpack:FindFirstChild(v)
        Humanoid:EquipTool(a)
    end
end







local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")



_G.AutoAll = getgenv().Setting.AutoAll







while _G.AutoAll do wait(0)

                _G.AutoTp = getgenv().Setting.AutoTp
            _G.AutoCast = getgenv().Setting.AutoCast
        _G.AutoShake = getgenv().Setting.AutoShake
    _G.AutoReel = getgenv().Setting.AutoReel
_G.AutoStatus = getgenv().Setting.AutoStatus











---------------------------------------------------------------------------------------------------------Auto Farm-----------------------------------------------------------------------------------------------------

-- Auto Tp เด้อ
spawn(function()
        wait(0)
            while _G.AutoTp do wait()
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5802.04053, 135.301498, 407.609955, 0.421697021, 9.91535529e-08, -0.906736791, -3.99928197e-08, 1, 9.07525717e-08, 0.906736791, -2.00712913e-09, 0.421697021)
    end
end)



-- Auto ลงเบ็ดเด้อ
wait(0.5)
spawn(function()
    while _G.AutoCast do
        wait(0.5)
        local rod = character:FindFirstChild("Flimsy Rod") or player.Backpack:FindFirstChild("Flimsy Rod")
        if rod and rod:FindFirstChild("events") and rod.events:FindFirstChild("cast") then
            while _G.AutoCa do
                local args = {
                    [1] = 80.80000000000005,
                    [2] = 1
                }
                rod.events.cast:FireServer(unpack(args))
                task.wait(3)
            end
        end
    end
end)






--Auto Shake เด้อ
wait(0.2)
spawn(function()
    task.wait(0.00)
    local GuiService = game:GetService("GuiService")
    local VirtualInputManager = game:GetService("VirtualInputManager")
    while _G.AutoShake do
        wait()
        local PlayerGUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
        local shakeUI = PlayerGUI:WaitForChild("shakeui", 3)
        
        if shakeUI and shakeUI.Enabled then
            local safezone = shakeUI:FindFirstChild("safezone")
            if safezone then
                local button = safezone:FindFirstChild("button")
                if button and button:IsA("ImageButton") and button.Visible then
                    GuiService.SelectedObject = button
                    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                end
            end
        
        end
    end
end)


--Auto Reel เด้อ
wait(0.3)
pcall(function()
    while _G.AutoReel do wait()
            for i,v in pairs(LocalPlayer.PlayerGui:GetChildren()) do
                if v:IsA "ScreenGui" and v.Name == "reel"then
                    if v:FindFirstChild "bar" then
                        wait(.15)
                            ReplicatedStorage.events.reelfinished:FireServer(100,true)
                    end
                end
            end
        end
    end)


-- มาจาก _G.AutoAll
end

---------------------------------------------------------------------------------------------------------------Over-----------------------------------------------------------------------------------------------------------


--print ให้รู้ว่าเริ่ม Auto Farm
print("Start Auto Farm Level,Money")































