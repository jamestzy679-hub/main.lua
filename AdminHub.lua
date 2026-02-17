local Admin = {}

local ADMINS = {
    12345678 -- your Roblox UserID
}

local function isAdmin(player)
    for _,id in pairs(ADMINS) do
        if player.UserId == id then
            return true
        end
    end
    return false
end

function Admin.Init()

    game.Players.PlayerAdded:Connect(function(player)

        if not isAdmin(player) then return end

        local gui = Instance.new("ScreenGui", player.PlayerGui)
        gui.Name = "AdminHub"

        local frame = Instance.new("Frame", gui)
        frame.Size = UDim2.new(0,300,0,200)
        frame.Position = UDim2.new(0.5,-150,0.5,-100)
        frame.BackgroundColor3 = Color3.fromRGB(20,20,20)

        local growBtn = Instance.new("TextButton", frame)
        growBtn.Size = UDim2.new(1,0,0,50)
        growBtn.Text = "Grow Plant +1"

        growBtn.MouseButton1Click:Connect(function()
            player.leaderstats.Plants.Value += 1
        end)

        local moneyBtn = Instance.new("TextButton", frame)
        moneyBtn.Position = UDim2.new(0,0,0,60)
        moneyBtn.Size = UDim2.new(1,0,0,50)
        moneyBtn.Text = "Give 100 Coins"

        moneyBtn.MouseButton1Click:Connect(function()
            player.leaderstats.Coins.Value += 100
        end)

    end)

end

return Admin
