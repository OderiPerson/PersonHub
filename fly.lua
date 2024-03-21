--переплайр
local player = game.Players.LocalPlayer

--движж
local function onCharacterMove()
--перспоз
local position = player.Character.HumanoidRootPart.Position

--пересек
local parts = workspace:FindPartsInRegion3(Region3.new(position - Vector3.new(5, 5, 5), position + Vector3.new(5, 5, 5)), nil, math.huge)

--ппвно
for _, part in pairs(parts) do
--ппвно2
if part:IsA("Part") and part.CanCollide then
--вкдс
part.CanCollide = false
end
end
end

--пфскпп
player.Character.Humanoid.Move:Connect(onCharacterMove)
