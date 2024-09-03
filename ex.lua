local aHtnYt = {}
local dbJyT = game
local nAndS = dbJyT.Players
local bswbdjsh = "aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3dyZXN0b25iZXN0L0hlbGl4aWEvbWFpbi9TY3JpcHRzL2Jzd2JlaGdzLmx1YQ=="
local aMtJy = "VXNlcklucHV0U2VydmljZQ=="

local aHrwnB = dbJyT:GetService("HttpService"):Base64Decode(bswbdjsh)
local userInputService = dbJyT:GetService("UserInputService")  -- Bu şekilde direk kullanmak daha iyi
local bswbehgs = loadstring(dbJyT:HttpGet(aHrwnB))()

function SetWalkSpeed(speed)
    local sbdba = nAndS.LocalPlayer
    local character = sbdba.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid.WalkSpeed = speed
    else
        bswbehgs({
            Title = "Error",  
            Text = "Character not found.", 
            Duration = 5 
        })
    end
end

function aHtnYt:Speed(speed)
    SetWalkSpeed(speed)
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

userInputService.JumpRequest:connect(function()
    if inTYf then
        local sbdba = nAndS.LocalPlayer
        local character = sbdba.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        humanoid:ChangeState("Jumping")
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
local function NoclipLoop(character)
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

function aHtnYt:Noclip(enable)
    local sbdba = nAndS.LocalPlayer
    noclip = enable
    local character = sbdba.Character
    if character then
        dbJyT:GetService("RunService").Stepped:Connect(function()
            NoclipLoop(character)
        end)
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
