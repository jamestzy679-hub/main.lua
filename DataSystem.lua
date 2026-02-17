local DataStoreService = game:GetService("DataStoreService")
local store = DataStoreService:GetDataStore("GardenSave")

local Data = {}

function Data.Init()

    game.Players.PlayerAdded:Connect(function(player)

        local data
        pcall(function()
            data = store:GetAsync(player.UserId)
        end)

        if data then
            player.leaderstats.Coins.Value = data.Coins
            player.leaderstats.Plants.Value = data.Plants
        end

    end)

    game.Players.PlayerRemoving:Connect(function(player)

        local save = {
            Coins = player.leaderstats.Coins.Value,
            Plants = player.leaderstats.Plants.Value
        }

        pcall(function()
            store:SetAsync(player.UserId, save)
        end)

    end)

end

return Data
