local QBCore = exports['qb-core']:GetCoreObject()

-- Eventos

RegisterNetEvent('Cz-farm:server:BuyFertilizer', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_fertilizer'
    local money = 'bank'
    local quantity = 1
    local price = 10

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyShovel', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_shovel'
    local money = 'bank'
    local quantity = 1
    local price = 50

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyTomatoSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_tomato'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyWheatSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_wheat'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyPotatoSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_potato'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyCucumberSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_cucumber'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyOnionSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_onion'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyCabbageSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_cabbage'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyLettuceSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_lettuce'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyCarrotSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_carrot'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyBeetrootSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_beetrootseed'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyTurnipSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_turnip'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyMushroomSeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_mushrooms'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyWateringCan', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'watering_can'
    local money = 'bank'
    local quantity = 1
    local price = 10

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:BuyScissors', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_scissor'
    local money = 'bank'
    local quantity = 1
    local price = 20

    Player.Functions.RemoveMoney(money, price)
    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('Cz-farm:server:FillWateringCan', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local watering_can = Player.Functions.GetItemByName('watering_can')
    local item = 'watering_can'
    local item2 = 'farm_watering_can_full'
    local quantity = 1

    if watering_can ~= nil then

        Player.Functions.RemoveItem(item, quantity)
        Player.Functions.AddItem(item2, quantity)
    else
        TriggerClientEvent("QBCore:Notify", src, "You need a empty water can...", "error")
    end
end)

-- Items

QBCore.Functions.CreateUseableItem('farm_wheat', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_wheat') 
end)

QBCore.Functions.CreateUseableItem('farm_tomato', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_tomato') 
end)

QBCore.Functions.CreateUseableItem('farm_potato', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_potato') 
end)

QBCore.Functions.CreateUseableItem('farm_turnip', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_turnip') 
end)

QBCore.Functions.CreateUseableItem('farm_onion', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_onion') 
end)

QBCore.Functions.CreateUseableItem('farm_cabbage', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_cabbage') 
end)

QBCore.Functions.CreateUseableItem('farm_lettuce', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_lettuce') 
end)

QBCore.Functions.CreateUseableItem('farm_carrot', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_carrot') 
end)

QBCore.Functions.CreateUseableItem('farm_cucumber', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_cucumber') 
end)

QBCore.Functions.CreateUseableItem('farm_mushrooms', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_mushrooms') 
end)

QBCore.Functions.CreateUseableItem('farm_beetrootseed', function(source, item)
    TriggerClientEvent("Cz-farm:client:startPlanting", source, 'farm_beetrootseed') 
end)



-- Plantas

CreateThread(function()
    updatePlants()
end)

function updatePlants()
    SetTimeout(Config.GrowRate * 1000, function()
        updatePlants()
    end)
    --DEAD PLANTS
    MySQL.query("SELECT id FROM player_plants WHERE (water = 0 OR food = 0) AND rate = 0",{},function(id)
        for _, v in ipairs(id) do
            MySQL.update('DELETE FROM player_plants WHERE id = ?', {v.id}, function()
                TriggerClientEvent("Cz-farm:client:DeleteEntity", -1)  
            end)
        end
    end)
    -- ALIVE PLANT REDUCTION
    MySQL.update("UPDATE `player_plants` SET `stage`=`stage` + (0.01 * `rate`) , `food` = `food` - (0.02 * `rate`), `water` = `water` -  (0.02 * `rate`) WHERE water >= 2 OR food >= 2",{},
    function()
        TriggerClientEvent("Cz-farm:client:growthUpdate", -1)
    end)
    -- GROW PLANTS
    MySQL.query("SELECT id, stage FROM player_plants WHERE (stage >= 30 AND stage <= 31) OR (stage >= 80 AND stage <= 81)",{},
    function(info)
        for _, v in ipairs(info) do
            TriggerClientEvent("Cz-farm:client:growPlant", -1, v.id, v.stage)
        end
    end)
end

function addPlant(seed, coords, id)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local zone = nil
    MySQL.insert('INSERT INTO player_plants (coords, seed, stage, rate, water, food) VALUES (?, ?, ?, ?, ?, ?)',{
        json.encode({x = coords[1], y = coords[2], z = coords[3]}),
        seed,
        0,
        10,
        10,
        10
    },function(id)
        TriggerClientEvent("Cz-farm:client:addPlant", src, seed, coords, id)
    end)
end

RegisterNetEvent("Cz-farm:server:addPlantToDatabase",function(seed, coords)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    addPlant(seed, coords, src)
    Player.Functions.RemoveItem(seed, 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[seed], "remove", 1)
end)

RegisterNetEvent("Cz-farm:server:deletePlant",function(id)
    MySQL.update('DELETE FROM player_plants WHERE id = ?', {id})
end)

RegisterNetEvent("Cz-farm:server:updatePlant",function(id, info)
    MySQL.update('UPDATE player_plants SET stage = ?, rate = ?, food = ?, water = ? WHERE id = ?',{info.stage, info.rate, info.food, info.water, id})
end)

QBCore.Functions.CreateCallback("Cz-farm:server:getInfo",function(source, cb)
    MySQL.query('SELECT * FROM player_plants WHERE 1',{}, function(infoPlants)
        local plants = {}
        for _, v in ipairs(infoPlants) do
            local coords = json.decode(v.coords) or {x = 0, y = 0, z = 0}
            local data = {stage = v.stage, rate = v.rate, water = v.water, food = v.food} 
            coords = vector3(coords.x, coords.y, coords.z)
            plants[v.id] = {seed = v.seed, coords = coords, info = data}
        end
        cb(plants)
    end)
end)

QBCore.Functions.CreateCallback("Cz-farm:server:getPlant",function(source, cb, id)
    MySQL.query("SELECT stage,rate,food,water FROM player_plants WHERE id = @id LIMIT 1",{["@id"] = id},function(info)
        local data = {stage = info[1].stage, rate = info[1].rate, water = info[1].water, food = info[1].food}
        cb(data)
    end)
end)

RegisterNetEvent("Cz-farm:server:addAlimento", function(seed, info)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = 3 * tonumber(info.stage) / 100
    local semente = seed
    local quantity = Config.PlantAlimentsQuantity
    
    if semente == 'farm_wheat' then
        Player.Functions.AddItem('farm_wheat_harvested', quantity)
    elseif semente == 'farm_tomato' then
        Player.Functions.AddItem('farm_tomato_harvested', quantity)
    elseif semente == 'farm_turnip' then
        Player.Functions.AddItem('farm_turnip_harvested', quantity)
    elseif semente == 'farm_potato' then
        Player.Functions.AddItem('farm_potatoes_harvested', quantity)
    elseif semente == 'farm_cucumber' then
        Player.Functions.AddItem('farm_cucumber_harvested', quantity)
    elseif semente == 'farm_onion' then
        Player.Functions.AddItem('farm_onion_harvested', quantity)
    elseif semente == 'farm_cabbage' then
        Player.Functions.AddItem('farm_cabbage_harvested', quantity)
    elseif semente == 'farm_lettuce' then
        Player.Functions.AddItem('farm_lettuce_harvested', quantity)
    elseif semente == 'farm_carrot' then
        Player.Functions.AddItem('farm_carrot_harvested', quantity)
    elseif semente == 'farm_mushrooms' then
        Player.Functions.AddItem('farm_mushrooms_harvested', quantity)
    end
end)

-- Ordenhar Vacas

RegisterNetEvent('Cz-farm:server:MilkingCows', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Item = 'farm_milk'
    local quantity = Config.MilkQuantity

    Player.Functions.AddItem(Item, quantity)
end)

-- Process

RegisterNetEvent('Cz-farm:server:ProcessTomato', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_tomato_harvested'
    local item2 = 'farm_tomato_ketchup'
    local quantity = 10
    local GetItem = Player.Functions.GetItemByName(item)
    if GetItem ~= nil then

        if GetItem.amount >= 10 then
            Player.Functions.RemoveItem(item, quantity)
            Player.Functions.AddItem(item2, quantity)
        else
            TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
    end
end)

RegisterNetEvent('Cz-farm:server:ProcessWheat', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_wheat_harvested'
    local item2 = 'farm_flour'
    local quantity = 10
    local GetItem = Player.Functions.GetItemByName(item)
    if GetItem ~= nil then

        if GetItem.amount >= 10 then
            Player.Functions.RemoveItem(item, quantity)
            Player.Functions.AddItem(item2, quantity)
        else
            TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
    end
end)

RegisterNetEvent('Cz-farm:server:ProcessOranges', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_orange'
    local item2 = 'farm_orange_juice'
    local quantity = 10
    local GetItem = Player.Functions.GetItemByName(item)
    if GetItem ~= nil then

        if GetItem.amount >= 10 then
            Player.Functions.RemoveItem(item, quantity)
            Player.Functions.AddItem(item2, quantity)
        else
            TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
    end
end)

RegisterNetEvent('Cz-farm:server:ProcessPeaches', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_peach'
    local item2 = 'farm_peach_juice'
    local quantity = 10
    local GetItem = Player.Functions.GetItemByName(item)
    if GetItem ~= nil then

        if GetItem.amount >= 10 then
            Player.Functions.RemoveItem(item, quantity)
            Player.Functions.AddItem(item2, quantity)
        else
            TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
    end
end)

RegisterNetEvent('Cz-farm:server:ProcessApples', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_apple'
    local item2 = 'farm_apple_juice'
    local quantity = 10
    local GetItem = Player.Functions.GetItemByName(item)
    if GetItem ~= nil then

        if GetItem.amount >= 10 then
            Player.Functions.RemoveItem(item, quantity)
            Player.Functions.AddItem(item2, quantity)
        else
            TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
    end
end)

RegisterNetEvent('Cz-farm:server:ProcessMangoes', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_mango'
    local item2 = 'farm_mango_juice'
    local quantity = 10
    local GetItem = Player.Functions.GetItemByName(item)
    if GetItem ~= nil then

        if GetItem.amount >= 10 then
            Player.Functions.RemoveItem(item, quantity)
            Player.Functions.AddItem(item2, quantity)
        else
            TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
    end
end)

RegisterNetEvent('Cz-farm:server:ProcessPears', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_pear'
    local item2 = 'farm_pear_juice'
    local quantity = 10
    local GetItem = Player.Functions.GetItemByName(item)
    if GetItem ~= nil then

        if GetItem.amount >= 10 then
            Player.Functions.RemoveItem(item, quantity)
            Player.Functions.AddItem(item2, quantity)
        else
            TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
    end
end)

RegisterNetEvent('Cz-farm:server:ProcessLemons', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'farm_lemon'
    local item2 = 'farm_lemon_juice'
    local quantity = 10
    local GetItem = Player.Functions.GetItemByName(item)
    if GetItem ~= nil then

        if GetItem.amount >= 10 then
            Player.Functions.RemoveItem(item, quantity)
            Player.Functions.AddItem(item2, quantity)
        else
            TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "You do not have the rigth items...", "error")
    end
end)

-- venda

local ItemList = {
    ["farm_tomato_ketchup"] =  Config.TomatoJuicePrice,
    ["farm_flour"] =  Config.FlourPrice,
    ["farm_potatoes_harvested"] =  Config.PotatoPrice,
    ["farm_cucumber_harvested"] =  Config.CucumberPrice,
    ["farm_onion_harvested"] =  Config.OnionPrice,
    ["farm_cabbage_harvested"] =  Config.CabbagePrice,
    ["farm_lettuce_harvested"] =  Config.LettucePrice,
    ["farm_carrot_harvested"] =  Config.CarrotPrice,
    ["farm_beetroot_harvested"] =  Config.BeetPrice,
    ["farm_turnip_harvested"] =  Config.TurnipPrice,
    ["farm_mushrooms_harvested"] =  Config.MushroomsPrice,
    ["farm_milk"] =  Config.MilkPrice,
    ["farm_orange_juice"] =  Config.OrangePrice,
    ["farm_peach_juice"] =  Config.PeachPrice,
    ["farm_pear_juice"] =  Config.PearPrice,
    ["farm_apple_juice"] =  Config.ApplePrice,
    ["farm_mango_juice"] =  Config.MangoPrice,
    ["farm_lemon_juice"] =  Config.LemonPrice,
}

RegisterNetEvent('Cz-farm:server:SellEverything', function()
    local src = source
    local price = 0
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then
        for k, v in pairs(Player.PlayerData.items) do
            if Player.PlayerData.items[k] ~= nil then
                if ItemList[Player.PlayerData.items[k].name] ~= nil then
                    price = price + (ItemList[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Player.PlayerData.items[k].name], "remove", Player.PlayerData.items[k].amount)
                end
            end
        end
        Player.Functions.AddMoney("cash", price)
        TriggerClientEvent('QBCore:Notify', src, "You sell some Crops for $"..price)
    else 
		TriggerClientEvent('QBCore:Notify', src, "You dont/'t have anything to sell..")
	end
end)

RegisterNetEvent('Cz-farm:server:AddItem', function(ItemName, ItemAmount)
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.AddItem(ItemName, ItemAmount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[ItemName], "add", ItemAmount)
end)

RegisterNetEvent('Cz-farm:server:RemoveItem', function(ItemName, ItemAmount)
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.RemoveItem(ItemName, ItemAmount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[ItemName], "remove", ItemAmount)
end)


QBCore.Functions.CreateCallback('Cz-farm:server:CheckItem', function(source, cb, item)
    local Player = QBCore.Functions.GetPlayer(source)

    if Player.Functions.GetItemByName(item) then
        cb(true)
    else
        cb(false)
    end
end)