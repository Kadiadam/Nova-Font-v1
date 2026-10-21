
-- Nova Font Changer
-- Font: Bangers

local TextService = game:GetService("TextService")

local function changeFont(obj)
    if obj:IsA("TextLabel")
        or obj:IsA("TextButton")
        or obj:IsA("TextBox") then

        obj.Font = Enum.Font.Bangers
    end
end

-- تغيير الخطوط الموجودة
for _, obj in ipairs(game:GetDescendants()) do
    changeFont(obj)
end

-- تغيير الخطوط التي تظهر لاحقًا
game.DescendantAdded:Connect(function(obj)
    changeFont(obj)
end)
