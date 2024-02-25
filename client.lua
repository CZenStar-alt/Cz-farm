local QBCore = exports['qb-core']:GetCoreObject()
local spawnedPlants = 0
local FarmPlants = {}

-- Loja

RegisterNetEvent('Cz-farm:client:StoreMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Farm shop",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Buy Acessories",
            txt = "",
            params = {
                event = "Cz-farm:client:MenuAcessorios",
            }
        },
        {
            header = "Buy Seeds",
            txt = "",
            params = {
                event = "Cz-farm:client:SeedsMenu",
            }
        },
    })
end)

RegisterNetEvent('Cz-farm:client:MenuAcessorios', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Farm shop - Acessories",
            isMenuHeader = true,
        },
        {
            header = "< Back",
            params = {
                event = "Cz-farm:client:StoreMenu",
            }
        },
        {
            header = "Buy fertilizer",
            txt = "Price: 10$ per 1",
            params = {
                event = "Cz-farm:client:BuyFertilizer",
            }
        },
        {
            header = "Buy Empty Water Can",
            txt = "Price: 10$ per 1",
            params = {
                event = "Cz-farm:client:BuyWateringCan",
            }
        },
        {
            header = "Buy Shovel",
            txt = "Price: 50$ per 1",
            params = {
                event = "Cz-farm:client:BuyShovel",
            }
        },
        {
            header = "Buy Scisors",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyScissors",
            }
        },
    })
end)

RegisterNetEvent('Cz-farm:client:SeedsMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Farm shop - Seeds",
            isMenuHeader = true,
        },
        {
            header = "< Back",
            params = {
                event = "Cz-farm:client:StoreMenu",
            }
        },
        {
            header = "Buy tomato seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyTomatoSeed",
            }
        },
        {
            header = "Buy wheat seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyWheatSeed",
            }
        },
        {
            header = "Buy potato seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyPotatoSeed",
            }
        },
        {
            header = "Buy cucumber seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyCucumberSeed",
            }
        },
        {
            header = "Buy onion seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyOnionSeed",
            }
        },
        {
            header = "Buy cabbage seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyCabbageSeed",
            }
        },
        {
            header = "Buy lettuce seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyLettuceSeed",
            }
        },
        {
            header = "Buy carrot seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyCarrotSeed",
            }
        },
        {
            header = "Buy beet seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyBeetrootSeed",
            }
        },
        {
            header = "Buy turnip seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyTurnipSeed",
            }
        },
        {
            header = "Buy mushrooms seeds",
            txt = "Price: 20$ per 1",
            params = {
                event = "Cz-farm:client:BuyMushroomSeed",
            }
        },
    })
end)

RegisterNetEvent('Cz-farm:client:BuyFertilizer', function()
    TriggerServerEvent('Cz-farm:server:BuyFertilizer')
    TriggerEvent('Cz-farm:client:MenuAcessorios')
end)

RegisterNetEvent('Cz-farm:client:BuyTomatoSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyTomatoSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyWheatSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyWheatSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyPotatoSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyPotatoSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyCucumberSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyCucumberSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyOnionSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyOnionSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyCabbageSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyCabbageSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyLettuceSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyLettuceSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyCarrotSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyCarrotSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyBeetrootSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyBeetrootSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyTurnipSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyTurnipSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyMushroomSeed', function()
    TriggerServerEvent('Cz-farm:server:BuyMushroomSeed')
    TriggerEvent('Cz-farm:client:SeedsMenu')
end)

RegisterNetEvent('Cz-farm:client:BuyWateringCan', function()
    TriggerServerEvent('Cz-farm:server:BuyWateringCan')
    TriggerEvent('Cz-farm:client:MenuAcessorios')
end)

RegisterNetEvent('Cz-farm:client:BuyShovel', function()
    TriggerServerEvent('Cz-farm:server:BuyShovel')
    TriggerEvent('Cz-farm:client:MenuAcessorios')
end)

RegisterNetEvent('Cz-farm:client:BuyScissors', function()
    TriggerServerEvent('Cz-farm:server:BuyScissors')
    TriggerEvent('Cz-farm:client:MenuAcessorios')
end)

RegisterNetEvent('Cz-farm:client:FillWateringCan', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'FILLING WATER CAN...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('Cz-farm:server:FillWateringCan')
    end)
end)

-- Threads

CreateThread(function()
    RequestModel(`a_m_m_farmer_01`)
      while not HasModelLoaded(`a_m_m_farmer_01`) do
      Wait(1)
    end
      farmshopped = CreatePed(2, `a_m_m_farmer_01`, Config.ShopPed, false, false)
      SetPedFleeAttributes(farmshopped, 0, 0)
      SetPedDiesWhenInjured(farmshopped, false)
      TaskStartScenarioInPlace(farmshopped, "missheistdockssetup1clipboard@base", 0, true)
      SetPedKeepTask(farmshopped, true)
      SetBlockingOfNonTemporaryEvents(farmshopped, true)
      SetEntityInvincible(farmshopped, true)
      FreezeEntityPosition(farmshopped, true)

    exports['qb-target']:AddBoxZone("farmshopped", Config.ShopPedTarget, 1, 1, {
        name="farmshopped",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
                event = "Cz-farm:client:StoreMenu",
                icon = "fas fa-farm",
                label = "Talk to farmer",
            },
        },
        distance = 1.5
    })
end)

CreateThread(function()
    exports['qb-target']:AddBoxZone("farmwater", Config.WaterLoc, 4, 4, {
        name="farmwater",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
                event = "Cz-farm:client:FillWateringCan",
                icon = "fas fa-dewpoint",
                label = "Fill Water Can",
            },
        },
        distance = 1.5
    })
end)

-- Plantas

crop_type = {
    ["crop_stage"] = {
        stage_1 = {"prop_veg_crop_04_leaf", -1.05},
        stage_2 = {"prop_veg_crop_04_leaf", -1.05},
        stage_3 = {"prop_veg_crop_04_leaf", -1.05},
        stage_4 = {"prop_veg_crop_04_leaf", -1.05},
        stage_5 = {"prop_veg_crop_04_leaf", -1.05},
        stage_6 = {"prop_veg_crop_02", -1.05}
    }
}

Plants = {}
SpawnedPlants = {}
CurrentPlant = nil
CurrentPlantInfo = nil

local nearPlant = true
local shown = false

CreateThread(function(percent)
    while true do 
        if LocalPlayer.state.isLoggedIn then
            local ped = PlayerPedId() 
            local nPlant = nearPlant(ped)
            if nPlant ~= false then
                if not shown then
                    shown = true
                    QBCore.Functions.TriggerCallback("Cz-farm:server:getPlant",function(info)
                        CurrentPlant = nPlant
                        CurrentPlantInfo = info
                        if CurrentPlantInfo.food and CurrentPlantInfo.water == 0 then
                            PlantMenuDead()
                        elseif CurrentPlantInfo.stage >= 100 then
                            PlantMenuHaverst()
                        else
                            PlantMenuAlive()
                        end
                    end,nPlant)
                end
            else
                if shown then
                    CurrentPlant = nil
                    CurrentPlantInfo = nil
                    exports['qb-menu']:closeMenu() 
                    shown = false
                end
            end
            if nPlant == false then
                Wait(1000)
            else
                Wait(1)
            end
        end
        Wait(100)
    end
end)

QBCore.Functions.TriggerCallback("Cz-farm:server:getInfo",function(plants)
    Plants = plants
    for k, v in pairs(Plants) do
        spawnPlant(v.seed, v.coords, v.info.stage, k)
    end
end)

RegisterNetEvent("Cz-farm:client:DeleteEntity",function()
    exports['qb-menu']:closeMenu() 
    Wait(2000)
    if SpawnedPlants[CurrentPlant] ~= nil then
        DeleteEntity(SpawnedPlants[CurrentPlant])
    end
    Plants[CurrentPlant] = nil
    SpawnedPlants[CurrentPlant] = nil
    CurrentPlant = nil
    CurrentPlantInfo = nil
    ClearPedTasks(ped)
    Wait(4000)
    action = false
    ClearPedTasksImmediately(ped)
end)

RegisterNetEvent("Cz-farm:client:growPlant",function(id, percent)
    if Plants[id] ~= nil and SpawnedPlants[id] ~= nil then
        setPlant(id, percent)
    end
end)

RegisterNetEvent("Cz-farm:client:growthUpdate",function()
    if CurrentPlantInfo ~= nil then
        CurrentPlantInfo.water = CurrentPlantInfo.water - (0.02 * CurrentPlantInfo.rate)
        CurrentPlantInfo.food = CurrentPlantInfo.food - (0.02 * CurrentPlantInfo.rate)
        CurrentPlantInfo.stage = CurrentPlantInfo.stage + (0.01 * CurrentPlantInfo.rate) 
    end
end)

RegisterNetEvent("Cz-farm:client:startPlanting",function(plant)
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local HasItem = QBCore.Functions.HasItem('farm_shovel')

    if HasItem then
        if GetDistanceBetweenCoords(coords, Config.FarmField, true) < 50 then
    TaskStartScenarioInPlace(PlayerPedId(), 'world_human_gardener_plant', 0, false)
    QBCore.Functions.Progressbar("plant_seeds", "PLANTING SEEDS..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("Cz-farm:server:addPlantToDatabase", plant, coords)
        end)
        else
            QBCore.Functions.Notify('You are not at farm field...', 'error', 7500)
        end
    else
        QBCore.Functions.Notify('You need a Shovel to plant that...', 'error', 7500)
    end
end)

RegisterNetEvent("Cz-farm:client:addPlant",function(seed, coords, id)
    local entity = 'crop_stage'
    local ped = PlayerPedId()
    Plants[id] = {seed = seed, coords = coords}
    SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_1[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_1[2],false,true,1)
    SetEntityAsMissionEntity(SpawnedPlants[id], true, true)  
end)

RegisterNetEvent('Cz-farm:client:cropOptions', function(args, data)
    local args = tonumber(args)
	if args == 1 then
        local percent = Config.FertilizerQuantity
        QBCore.Functions.TriggerCallback('Cz-farm:server:CheckItem', function(HasItem)
            if HasItem then
                QBCore.Functions.Notify("+"..percent.." fertilizer", "success")
                if percent > 0 then
                    CurrentPlantInfo.food = CurrentPlantInfo.food + percent
                    if CurrentPlantInfo.food > 100 then
                        CurrentPlantInfo.food = 100
                    end
                    TaskStartScenarioInPlace(PlayerPedId(), 'world_human_gardener_plant', 0, false)
                    QBCore.Functions.Progressbar('add_fertilizante', 'ADDING FERTILIZER...', 5000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, { }, {}, {}, function()
                    TriggerServerEvent("Cz-farm:server:updatePlant", CurrentPlant, CurrentPlantInfo)
                    TriggerServerEvent("Cz-farm:server:RemoveItem", "farm_fertilizer", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["farm_fertilizer"], "remove", 1) 
                    PlantMenuStacic()
                    end)
                end
            else
                PlantMenuAlive()
                QBCore.Functions.Notify("You dont have any fertilizer", "error")
            end
        end, "farm_fertilizer")
    elseif args == 2 then
        local percent = Config.WaterQuantity
        QBCore.Functions.TriggerCallback('Cz-farm:server:CheckItem', function(HasItem)
            if HasItem then
                QBCore.Functions.Notify("+"..percent.." Water", "success")
                if percent > 0 then
                    CurrentPlantInfo.water = CurrentPlantInfo.water + percent
                    if CurrentPlantInfo.water > 100 then
                        CurrentPlantInfo.water = 100
                    end
                    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
                    QBCore.Functions.Progressbar('add_water', 'ADDING WATER...', 5000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, { }, {}, {}, function()
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent("Cz-farm:server:updatePlant", CurrentPlant, CurrentPlantInfo)
                    TriggerServerEvent("Cz-farm:server:RemoveItem", "farm_watering_can_full", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["farm_watering_can_full"], "remove", 1)
                    PlantMenuStacic()
                    end)
                end
            else
                PlantMenuAlive()
                QBCore.Functions.Notify("You dont have any water", "error")
            end
        end, "farm_watering_can_full")
    elseif args == 3 then
        local ped = PlayerPedId()
        TaskStartScenarioInPlace(ped, "world_human_gardener_plant", 0, false)
        exports['qb-menu']:closeMenu() 
        QBCore.Functions.Progressbar('haverst_plant', 'HAVERSTING PLANT...', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
        if SpawnedPlants[CurrentPlant] ~= nil then
            DeleteEntity(SpawnedPlants[CurrentPlant])
        end
        TriggerServerEvent("Cz-farm:server:deletePlant", CurrentPlant)
        TriggerServerEvent("Cz-farm:server:addAlimento", Plants[CurrentPlant].seed, CurrentPlantInfo) 
        Plants[CurrentPlant] = nil
        SpawnedPlants[CurrentPlant] = nil
        CurrentPlant = nil
        CurrentPlantInfo = nil
        ClearPedTasks(ped)
        ClearPedTasksImmediately(ped)
    end)
    elseif args == 4 then
        local ped = PlayerPedId()
        TaskStartScenarioInPlace(ped, "world_human_gardener_plant", 0, false)
        exports['qb-menu']:closeMenu() 
        QBCore.Functions.Progressbar('delete_plant', 'DESTROYING PLANT...', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
        if SpawnedPlants[CurrentPlant] ~= nil then
            DeleteEntity(SpawnedPlants[CurrentPlant])
        end
        Plants[CurrentPlant] = nil
        SpawnedPlants[CurrentPlant] = nil
        TriggerServerEvent("Cz-farm:server:deletePlant", CurrentPlant)
        CurrentPlant = nil
        CurrentPlantInfo = nil
        ClearPedTasks(ped)
        ClearPedTasksImmediately(ped)
    end)
    else
        exports['qb-menu']:closeMenu() 
        Wait(100)
        PlantMenuAlive()
    end
end)

function spawnPlant(plant, coords, percent, id)
    local entity = 'crop_stage'
    if percent < 20 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_1[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_1[2],false,true,1)
    elseif percent < 30 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_2[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_2[2],false,true,1)
    elseif percent < 45 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_3[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_3[2],false,true,1)
    elseif percent < 60 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_4[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_4[2],false,true,1)
    elseif percent < 85 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_5[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_5[2],false,true,1)
    elseif percent <= 100 then
        SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_6[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_6[2],false,true,1)
    end
    SetEntityAsMissionEntity(SpawnedPlants[id], true, true)
end

function setPlant(id, percent)
    local plant = Plants[id].type
    local entity = 'crop_stage'
    if SpawnedPlants[id] ~= nil then
        local coords = Plants[id].coords
        DeleteEntity(SpawnedPlants[id])
        if percent < 20 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_1[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_1[2],false,true,1)
        elseif percent < 30 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_2[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_2[2],false,true,1)
        elseif percent < 45 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_3[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_3[2],false,true,1)
        elseif percent < 60 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_4[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_4[2],false,true,1)
        elseif percent < 85 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_5[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_5[2],false,true,1)
        elseif percent <= 100 then
            SpawnedPlants[id] =CreateObject(GetHashKey(crop_type[entity].stage_6[1]),coords[1],coords[2],coords[3] + crop_type[entity].stage_6[2],false,true,1)
        end
        SetEntityAsMissionEntity(SpawnedPlants[id], true, true)
    else
        print("There was an error loading a plant!")
    end
end

function GetGroundHash(ped)
    local posped = GetEntityCoords(ped)
    local num = StartShapeTestCapsule(posped.x, posped.y, posped.z + 4, posped.x, posped.y, posped.z - 2.0, 2, 1, ped, 7)
    local arg1, arg2, arg3, arg4, arg5 = GetShapeTestResultEx(num)
    return arg5
end

function nearPlant(ped)
    for k, v in pairs(Plants) do
        if #(v.coords - GetEntityCoords(ped)) < 1.0 then
            return k
        end
    end
    return false
end

function PlantMenuDead()
    exports['qb-menu']:showHeader({
        {
            header = "Dead Marijuana Plant: "..CurrentPlant,
            txt = "Stage: "..math.floor(CurrentPlantInfo.stage).."%", 
            isMenuHeader = true
        },
        {
            header = "Progress",
            txt = "Stage: "..math.floor(CurrentPlantInfo.stage).."%",
        },
        {
            header = "Destroy dead plant",
            txt = "",
            params = {
                event = "Cz-farm:client:cropOptions",
                args = 4
            }
        },
    })
end

function PlantMenuStacic()
    exports['qb-menu']:openMenu({
        { 
            header = "Plant: "..CurrentPlant,
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Progress",
            txt = "Stage: "..math.floor(CurrentPlantInfo.stage).."%<p>Rate: "..math.floor(CurrentPlantInfo.rate).."%",
        },
        {
            header = "Fertilizer",
            txt = "Nutrition: "..math.floor(CurrentPlantInfo.food).."%",
            params = {
                event = "Cz-farm:client:cropOptions",
                args = 1
            }
        },
        {
            header = "Water",
            txt = "Water: "..math.floor(CurrentPlantInfo.water).."%",
            params = {
                event = "Cz-farm:client:cropOptions",
                args = 2
            }
        },
        {
            header = "Destroy",
            txt = "",
            params = {
                event = "Cz-farm:client:cropOptions",
                args = 4
            }
        },
        {
            header = "Return",
            params = {
                event = "Cz-farm:client:cropOptions",
                args = 5
            }
        },
    })
end

function PlantMenuAlive()
    exports['qb-menu']:showHeader({
        {
            header = "Plant: "..CurrentPlant,
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Progress",
            txt = "Stage: "..math.floor(CurrentPlantInfo.stage).."%<p>Rate: "..math.floor(CurrentPlantInfo.rate).."%",
        },
        {
            header = "Fertilizer",
            txt = "Nutrition: "..math.floor(CurrentPlantInfo.food).."%",
            params = {
                event = "Cz-farm:client:cropOptions",
                args = 1
            }
        },
        {
            header = "Water",
            txt = "Water: "..math.floor(CurrentPlantInfo.water).."%",
            params = {
                event = "Cz-farm:client:cropOptions",
                args = 2
            }
        },
        {
            header = "Destroy",
            txt = "",
            params = {
                event = "Cz-farm:client:cropOptions",
                args = 4
            }
        },
    })
end

function PlantMenuHaverst()
    exports['qb-menu']:showHeader({
        {
            header = "Plant: "..CurrentPlant,
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Progress",
            txt = "Stage: "..math.floor(CurrentPlantInfo.stage).."%<p>Rate: "..math.floor(CurrentPlantInfo.rate).."%",
        },
        {
            header = "Harvest",
            txt = "",
            params = {
                event = "Cz-farm:client:cropOptions",
                args = 3
            }
        },
    })
end

-- Ordenhar vacas

RegisterNetEvent('Cz-farm:client:MilkingCows', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('Milking_cow', 'MILKING COW...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('Cz-farm:server:MilkingCows')
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify('You have milked an Cow!', 'success', 7500)
    end)
end)

-- Blips

Citizen.CreateThread(function()
    local blip = AddBlipForRadius(2884.94, 4645.27, 48.65, 100.0)
    
        SetBlipHighDetail(blip, true)
        SetBlipColour(blip, 37)
        SetBlipAlpha (blip, 128)
    
    local blip = AddBlipForCoord(2884.94, 4645.27, 48.65)
    
        SetBlipSprite (blip, 88)
        SetBlipDisplay(blip, 2)
        SetBlipScale  (blip, 0.9)
        SetBlipColour (blip, 37)
        SetBlipAsShortRange(blip, true)
    
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Farm Field')
        EndTextCommandSetBlipName(blip)

    local blip = AddBlipForCoord(2931.6, 4624.6, 48.72)
    
        SetBlipSprite (blip, 88)
        SetBlipDisplay(blip, 2)
        SetBlipScale  (blip, 0.9)
        SetBlipColour (blip, 37)
        SetBlipAsShortRange(blip, true)
    
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Farm Shop')
        EndTextCommandSetBlipName(blip)

    local blip = AddBlipForCoord(2386.51, 4716.06, 33.65)
    
        SetBlipSprite (blip, 88)
        SetBlipDisplay(blip, 2)
        SetBlipScale  (blip, 0.9)
        SetBlipColour (blip, 37)
        SetBlipAsShortRange(blip, true)
    
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Fruit Trees Field')
        EndTextCommandSetBlipName(blip)

    local blip = AddBlipForCoord(2452.17, 4751.59, 34.3)
    
        SetBlipSprite (blip, 89)
        SetBlipDisplay(blip, 2)
        SetBlipScale  (blip, 0.9)
        SetBlipColour (blip, 37)
        SetBlipAsShortRange(blip, true)
    
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Cows')
        EndTextCommandSetBlipName(blip)

    local blip = AddBlipForCoord(441.94, 6457.66, 35.86)
    
        SetBlipSprite (blip, 88)
        SetBlipDisplay(blip, 2)
        SetBlipScale  (blip, 0.9)
        SetBlipColour (blip, 37)
        SetBlipAsShortRange(blip, true)
    
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Farm Process')
        EndTextCommandSetBlipName(blip)
		
    local blip = AddBlipForCoord(1469.82, 6550.53, 14.9)
    
        SetBlipSprite (blip, 88)
        SetBlipDisplay(blip, 2)
        SetBlipScale  (blip, 0.9)
        SetBlipColour (blip, 37)
        SetBlipAsShortRange(blip, true)
    
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Farm Sell')
        EndTextCommandSetBlipName(blip)
end)

-- Frutas

RegisterNetEvent('Cz-farm:client:PickApples', function()
    local quantity = Config.FruitQuantity
    QBCore.Functions.TriggerCallback('Cz-farm:server:CheckItem', function(HasItem)
        if HasItem then
            QBCore.Functions.Progressbar('pick_apple', 'PICKING APPLES...', 7500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = 'anim@gangops@facility@servers@',
                anim = 'hotwire',
                flags = 16,
            }, {}, {}, function()
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent('Cz-farm:server:AddItem', "farm_apple", quantity)
            end)
        else
            QBCore.Functions.Notify('You dont have a Scisors', 'error', 7500)
        end
    end, 'farm_scissor')
end)

RegisterNetEvent('Cz-farm:client:PickOranges', function()
    local quantity = Config.FruitQuantity
    QBCore.Functions.TriggerCallback('Cz-farm:server:CheckItem', function(HasItem)
        if HasItem then
            QBCore.Functions.Progressbar('pick_apple', 'PICKING ORANGES...', 7500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = 'anim@gangops@facility@servers@',
                anim = 'hotwire',
                flags = 16,
            }, {}, {}, function()
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent('Cz-farm:server:AddItem', "farm_orange", quantity)
            end)
        else
            QBCore.Functions.Notify('You dont have a Scisors', 'error', 7500)
        end
    end, 'farm_scissor')
end)

RegisterNetEvent('Cz-farm:client:PickLemons', function()
    local quantity = Config.FruitQuantity
    QBCore.Functions.TriggerCallback('Cz-farm:server:CheckItem', function(HasItem)
        if HasItem then
            QBCore.Functions.Progressbar('pick_apple', 'PICKING LIMONS...', 7500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = 'anim@gangops@facility@servers@',
                anim = 'hotwire',
                flags = 16,
            }, {}, {}, function()
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent('Cz-farm:server:AddItem', "farm_lemon", quantity)
            end)
        else
            QBCore.Functions.Notify('You dont have a Scisors', 'error', 7500)
        end
    end, 'farm_scissor')
end)

RegisterNetEvent('Cz-farm:client:PickPears', function()
    local quantity = Config.FruitQuantity
    QBCore.Functions.TriggerCallback('Cz-farm:server:CheckItem', function(HasItem)
        if HasItem then
            QBCore.Functions.Progressbar('pick_apple', 'PICKING PEARS...', 7500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = 'anim@gangops@facility@servers@',
                anim = 'hotwire',
                flags = 16,
            }, {}, {}, function()
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent('Cz-farm:server:AddItem', "farm_pear", quantity)
            end)
        else
            QBCore.Functions.Notify('You dont have a Scisors', 'error', 7500)
        end
    end, 'farm_scissor')
end)

RegisterNetEvent('Cz-farm:client:PickPeaches', function()
    local quantity = Config.FruitQuantity
    QBCore.Functions.TriggerCallback('Cz-farm:server:CheckItem', function(HasItem)
        if HasItem then
            QBCore.Functions.Progressbar('pick_apple', 'PICKING PEACHES...', 7500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = 'anim@gangops@facility@servers@',
                anim = 'hotwire',
                flags = 16,
            }, {}, {}, function()
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent('Cz-farm:server:AddItem', "farm_peach", quantity)
            end)
        else
            QBCore.Functions.Notify('You dont have a Scisors', 'error', 7500)
        end
    end, 'farm_scissor')
end)

RegisterNetEvent('Cz-farm:client:PickMangoes', function()
    local quantity = Config.FruitQuantity
    QBCore.Functions.TriggerCallback('Cz-farm:server:CheckItem', function(HasItem)
        if HasItem then
            QBCore.Functions.Progressbar('pick_apple', 'PICKING MANGOS...', 7500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = 'anim@gangops@facility@servers@',
                anim = 'hotwire',
                flags = 16,
            }, {}, {}, function()
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent('Cz-farm:server:AddItem', "farm_mango", quantity)
            end)
        else
            QBCore.Functions.Notify('You dont have a Scisors', 'error', 7500)
        end
    end, 'farm_scissor')
end)

-- Processo

RegisterNetEvent('Cz-farm:client:MenuProcesso', function()
    exports['qb-menu']:openMenu({
        {
            header = "Aliments Process",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Make Tomato Juice",
            txt = "",
            params = {
                event = "Cz-farm:client:ProcessTomato",
            }
        },
        {
            header = "Make Flour",
            txt = "",
            params = {
                event = "Cz-farm:client:ProcessWheat",
            }
        },
        {
            header = "Make Orange Juice",
            txt = "",
            params = {
                event = "Cz-farm:client:ProcessOranges",
            }
        },
        {
            header = "Make Peach Juice",
            txt = "",
            params = {
                event = "Cz-farm:client:ProcessPeaches",
            }
        },
        {
            header = "Make Apple Juice",
            txt = "",
            params = {
                event = "Cz-farm:client:ProcessApples",
            }
        },
        {
            header = "Make Mango Juice",
            txt = "",
            params = {
                event = "Cz-farm:client:ProcessMangoes",
            }
        },
        {
            header = "Make Pear Juice",
            txt = "",
            params = {
                event = "Cz-farm:client:ProcessPears",
            }
        },
        {
            header = "Make Limon Juice",
            txt = "",
            params = {
                event = "Cz-farm:client:ProcessLemons",
            }
        },
    })
end)

CreateThread(function()
    RequestModel(`a_m_m_farmer_01`)
      while not HasModelLoaded(`a_m_m_farmer_01`) do
      Wait(1)
    end
      farmProcess = CreatePed(2, `a_m_m_farmer_01`, Config.ProcessPed, false, false)
      SetPedFleeAttributes(farmProcess, 0, 0)
      SetPedDiesWhenInjured(farmProcess, false)
      TaskStartScenarioInPlace(farmProcess, "missheistdockssetup1clipboard@base", 0, true)
      SetPedKeepTask(farmProcess, true)
      SetBlockingOfNonTemporaryEvents(farmProcess, true)
      SetEntityInvincible(farmProcess, true)
      FreezeEntityPosition(farmProcess, true)

    exports['qb-target']:AddBoxZone("farmProcess", Config.ProcessPedTarget, 1, 1, {
        name="farmProcess",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
                event = "Cz-farm:client:MenuProcesso",
                icon = "fas fa-farm",
                label = "Talk to farmer",
            },
        },
        distance = 1.5
    })
end)

RegisterNetEvent('Cz-farm:client:ProcessTomato', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"clipboard2"})
    QBCore.Functions.Progressbar('name_here', 'MAKING TOMATO JUICE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('Cz-farm:server:ProcessTomato')
    end)
end)

RegisterNetEvent('Cz-farm:client:ProcessWheat', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"clipboard2"})
    QBCore.Functions.Progressbar('name_here', 'MAKING WHEAT FLOUR...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('Cz-farm:server:ProcessWheat')
    end)
end)

RegisterNetEvent('Cz-farm:client:ProcessOranges', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"clipboard2"})
    QBCore.Functions.Progressbar('name_here', 'MAKING ORANGE JUICE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('Cz-farm:server:ProcessOranges')
    end)
end)

RegisterNetEvent('Cz-farm:client:ProcessPeaches', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"clipboard2"})
    QBCore.Functions.Progressbar('name_here', 'MAKING PEACH JUICE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('Cz-farm:server:ProcessPeaches')
    end)
end)

RegisterNetEvent('Cz-farm:client:ProcessApples', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"clipboard2"})
    QBCore.Functions.Progressbar('name_here', 'MAKING APPLE JUICE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('Cz-farm:server:ProcessApples')
    end)
end)

RegisterNetEvent('Cz-farm:client:ProcessMangoes', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"clipboard2"})
    QBCore.Functions.Progressbar('name_here', 'MAKING MANGO JUICE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('Cz-farm:server:ProcessMangoes')
    end)
end)

RegisterNetEvent('Cz-farm:client:ProcessPears', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"clipboard2"})
    QBCore.Functions.Progressbar('name_here', 'MAKING PEAR JUICE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('Cz-farm:server:ProcessPears')
    end)
end)

RegisterNetEvent('Cz-farm:client:ProcessLemons', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"clipboard2"})
    QBCore.Functions.Progressbar('name_here', 'MAKING LIMON JUICE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('Cz-farm:server:ProcessLemons')
    end)
end)

-- Venda

RegisterNetEvent('Cz-farm:client:SellEverything', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"clipboard2"})
    QBCore.Functions.Progressbar('name_here', 'MAKING A DEAL...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerServerEvent('Cz-farm:server:SellEverything')
    end)
end)

CreateThread(function()
    RequestModel(`a_m_m_farmer_01`)
      while not HasModelLoaded(`a_m_m_farmer_01`) do
      Wait(1)
    end
      farmSell = CreatePed(2, `a_m_m_farmer_01`, Config.SellPed, false, false)
      SetPedFleeAttributes(farmSell, 0, 0)
      SetPedDiesWhenInjured(farmSell, false)
      TaskStartScenarioInPlace(farmSell, "missheistdockssetup1clipboard@base", 0, true)
      SetPedKeepTask(farmSell, true)
      SetBlockingOfNonTemporaryEvents(farmSell, true)
      SetEntityInvincible(farmSell, true)
      FreezeEntityPosition(farmSell, true)

    exports['qb-target']:AddBoxZone("farmSell", Config.SellPedTarget, 1, 1, {
        name="farmSell",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
                event = "Cz-farm:client:SellEverything",
                icon = "fas fa-farm",
                label = "Talk to farmer",
            },
        },
        distance = 1.5
    })
end)
