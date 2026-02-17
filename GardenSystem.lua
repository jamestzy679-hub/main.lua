local Garden = {}

function Garden.Start()
    game.Players.PlayerAdded:Connect(function(player)

        local leaderstats = Instance.new("Folder")
        leaderstats.Name = "leaderstats"
        leaderstats.Parent = player

        local Coins = Instance.new("IntValue")
        Coins.Name = "Coins"
        Coins.Value = 100
        Coins.Parent = leaderstats

        local Plants = Instance.new("IntValue")
        Plants.Name = "Plants"
        Plants.Parent = leaderstats

    end)
end

return Garden
