repeat task.wait() until game:GetService'Players'.LocalPlayer

local request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local getrenv = getrenv or function() return _G end
local sethiddenproperty = sethiddenproperty or set_hidden_property or set_hidden_prop or function (path, object, value) setscriptable(path, object, value) end
local gethiddenproperty = gethiddenproperty or get_hidden_property or get_hidden_prop or function (path, object) setscriptable(path, object) end
local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local clipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
local isnetworkowner = isnetworkowner or function(part) return part.ReceiveAge == 0 end
local global_env = (getgenv and getgenv()) or getfenv(0) or _G
local setfflag = function(fflag, value) game:DefineFastFlag(fflag, value) end
local RunService = game:GetService'RunService'
local ReplicatedStorage = game:GetService'ReplicatedStorage'
local Stats = game:GetService'Stats'
local Players = game:GetService'Players'
local Lighting = game:GetService'Lighting'
local SoundService = game:GetService'SoundService'
local CoreGui = game:GetService'CoreGui' or Players.LocalPlayer.CoreGui
local UserInputService = game:GetService'UserInputService'
local V3 = Vector3.new()
local V0 = Vector3.zero
local C3RGB = Color3.fromRGB
local Instance = Instance.new
local UserSettings = UserSettings() -- https://create.roblox.com/docs/reference/engine/classes/UserSettings

local function WaitForChildOfClass(parent, childName)
    if parent:FindFirstChildOfClass(childName) then
        return parent:FindFirstChildOfClass(childName)
    end
    while true do
        parent:FindFirstChildOfClass(childName).ChildAdded:Wait()
        if parent:FindFirstChild(childName).ClassName == childName then
            return parent:FindFirstChild(childName)
        end
    end
end

local function protect_gui(screengui)
    if not syn then
        if gethui() then
            screengui.Parent = gethui()
        else
            screengui.Parent = game:GetService("CoreGui")
        end
    else
    end
end

local function getcustomasset(asset)
if readfile then
loadstring(readfile(asset))()
end
end

if syn then
function setsimulationradius(simradius)
sethiddenproperty(Players.LocalPlayer.MaxSimulationRadius, simradius)
sethiddenproperty(Players.LocalPlayer.SimulationRadius, simradius)
end
end