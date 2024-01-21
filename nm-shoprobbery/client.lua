------ made by lilryvert 😵 //// love u guys ------
------ https://discord.gg/gmRtqRrUEK ------

ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local shops = {
    [1] = {
        ["first_case"] = vector3(373.49, 328.49, 103.37),
        ["second_case"] = vector3(378.1662, 333.3774, 103.5664),
        ["coords"] = vector3(372.918, 328.817, 102.566),
        ["heading"] = 257.4,
    },
    [2] = {
        ["first_case"] = vector3(2554.74, 381.45, 108.54),
        ["second_case"] = vector3(2549.1829, 384.7957, 108.6171),
        ["coords"] = vector3(2554.85, 380.853, 107.622),
        ["heading"] = 353.2,
	},
    [3] = {
        ["first_case"] = vector3(-3041.52, 584.43, 7.91),
        ["second_case"] = vector3(-3047.8828, 585.5527, 7.9030),
        ["coords"] = vector3(-3041.1, 583.722, 7.90892),
        ["heading"] = 19.51,
    },
    [4] = {
        ["first_case"] = vector3(-1486.45, -378.24, 40.16),
        ["second_case"] = vector3(-1478.8367, -375.4259, 39.1634),
        ["coords"] = vector3(-1486.2, -378.07, 40.1633),
        ["heading"] = 133.74,
    },
    [5] = {
        ["first_case"] = vector3(1393.07, 3606.22, 34.99),
        ["second_case"] = vector3(1395.0361, 3613.9485, 34.9809),
        ["coords"] = vector3(1392.91, 3606.40, 34.9808),
        ["heading"] = 198.69,
    },
    [6] = {
        ["first_case"] = vector3(-2966.63, 390.88, 14.93),
        ["second_case"] = vector3(-2959.4734, 387.1378, 14.0433),
        ["coords"] = vector3(-2966.2, 390.877, 15.0433),
        ["heading"] = 89.33,
    },
    [7] = {
        ["first_case"] = vector3(2676.32, 3281.04, 55.24),
        ["second_case"] = vector3(2672.6387, 3286.5220, 55.2411),
        ["coords"] = vector3(2676.01, 3280.54, 55.2411),
        ["heading"] = 327.89,
    },
    [8] = {
        ["first_case"] = vector3(-46.88, -1757.55, 29.42),
        ["second_case"] = vector3(-43.4602, -1748.3698, 29.4210),
        ["coords"] = vector3(-46.739, -1758.0, 29.4209),
        ["heading"] = 50.33,
    },
    [9] = {
        ["first_case"] = vector3(1164.38, -322.42, 69.48),
        ["second_case"] = vector3(1159.5386, -314.0679, 69.2051),
        ["coords"] = vector3(1164.85, -322.77, 69.2050),
        ["heading"] = 102.83,
    },
    [10] = {
        ["first_case"] = vector3(-706.47, -913.51, 19.58),
        ["second_case"] = vector3(-709.7346, -904.0858, 19.2156),
        ["coords"] = vector3(-706.10, -913.69, 19.2155),
        ["heading"] = 95.35,
    },
    [11] = {
        ["first_case"] = vector3(-1820.68, 793.97, 138.09),
        ["second_case"] = vector3(-1829.1978, 798.7954, 138.1909),
        ["coords"] = vector3(-1820.0, 794.110, 138.086),
        ["heading"] = 128.6,
    },
    [12] = {
        ["first_case"] = vector3(1698.15, 4923.11, 42.07),
        ["second_case"] = vector3(1707.8662, 4920.5156, 42.0631),
        ["coords"] = vector3(1697.99, 4922.84, 42.0636),
        ["heading"] = 321.17,
    },
	[13] = {
        ["first_case"] = vector3(1959.4, 3742.23, 32.34),
        ["second_case"] = vector3(1959.3193, 3748.9512, 32.3437),
        ["coords"] = vector3(1958.80, 3742.03, 32.3437),
        ["heading"] = 293.22,
    },
	[14] = {
        ["first_case"] = vector3(1134.26, -982.52, 46.42),
        ["second_case"] = vector3(1126.6259, -980.1247, 45.4158),
        ["coords"] = vector3(1134.21, -982.42, 46.4157),
        ["heading"] = 280.21,
    },
    [15] = {
        ["first_case"] = vector3(24.75, -1344.9, 29.42),
        ["second_case"] = vector3(28.2429, -1339.2220, 29.4970),
        ["coords"] = vector3(24.5011, -1344.9, 29.4970),
        ["heading"] = 270.35,
    },
	[16] = {
        ["first_case"] = vector3(548.93, 2668.79, 42.04),
        ["second_case"] = vector3(546.4739, 2662.7456, 42.1511),
        ["coords"] = vector3(549.419, 2669.01, 42.1564),
        ["heading"] = 94.64,
    },
    [17] = {
        ["first_case"] = vector3(-3244.48, 1000.66, 12.83),
        ["second_case"] = vector3(-3250.0764, 1004.3801, 12.8307),
        ["coords"] = vector3(-3244.6, 1000.07, 12.8307),
        ["heading"] = 352.55,
    },
	[18] = {
        ["first_case"] = vector3(1166.09, 2710.28, 38.02),
        ["second_case"] = vector3(1169.2589, 2717.9746, 37.1576),
        ["coords"] = vector3(1165.98, 2710.77, 38.1576),
        ["heading"] = 179.48,
    },
	[19] = {
        ["first_case"] = vector3(1729.51, 6417.01, 35.0),
        ["second_case"] = vector3(1734.7021, 6420.9565, 35.0364),
        ["coords"] = vector3(1728.77, 6417.39, 35.0372),
        ["heading"] = 236.72,
	},
}

Citizen.CreateThread(function()
    -- Target
    if NMConfig['Target']['targetType'] == 'qbcore' then
        exports['qb-target']:AddTargetModel(303280717, {
            options = {
                {
                    type = "client",
                    event = "nm-shoprobbery:firstcase",
                    icon = NMConfig['Target']['targetIcon']['firstcase'],
                    label = NMConfig['Target']['targetLabels']['firstcase'],
                },
            },
            distance = 2.5
        })
        for i=1, #shops do
            exports['qb-target']:AddCircleZone("kasa" ..i , shops[i]["second_case"], 0.47, {
                name = "kasa" ..i,
                useZ=true,
                debugPoly = false,
                }, {
                options = {
                    {
                        event = "nm-shoprobbery:secondrobbery",
                        icon = NMConfig['Target']['targetIcon']['secondcase'],
                        label = NMConfig['Target']['targetLabels']['secondcase'],
                    },
                    {
                        event = "nm-shoprobbery:collect",
                        icon = NMConfig['Target']['targetIcon']['secondcase'],
                        label = NMConfig['Target']['targetLabels']['secondcase2'],
                    },
                },
                distance = 3
            })
        end
    elseif NMConfig['Target']['targetType'] == 'ox' then
    end
end)

local kasa = nil
local kasaNo = nil
local collectmoney = nil

RegisterNetEvent('nm-shoprobbery:collect')
AddEventHandler('nm-shoprobbery:collect', function()
    if collectmoney then
        TriggerServerEvent("nm-shoprobbery:givereward", "second", kasaNo)
        collectmoney = false
    end
end)

RegisterNetEvent('nm-shoprobbery:firstcase')
AddEventHandler('nm-shoprobbery:firstcase', function()
    local playerPed = PlayerPedId()
    local PlayerCoords = GetEntityCoords(playerPed)
    kasa = nil
    kasaNo = nil
    for i=1, #shops do
    local basitKasaMesafe = #(PlayerCoords - shops[i]["first_case"])
    local hardKasaMesafe = #(PlayerCoords - shops[i]["second_case"])
        if basitKasaMesafe < 2 then
            kasa = "first"
            kasaNo = i
        elseif hardKasaMesafe < 4 then
            kasa = "second"
            kasaNo = i
        end
    end
	ESX.TriggerServerCallback('nm-shoprobbery:serversidecooldown', function(cb)
		if cb then
            local obj = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 2.0, 303280717, false, false, false)
            if GetEntityHealth(obj) < 800 then
                SetEntityCoords(PlayerPedId(), shops[kasaNo]["coords"])
                SetEntityHeading(PlayerPedId(), shops[kasaNo]["heading"])
                cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
                camOffset = vector3(-0.025120, 0.812561, 0.559709)
                SetCamActive(cam, true)
                RenderScriptCams(true, true, 2000, true, false)
                SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(obj, camOffset))
                SetCamRot(cam, vector3(-20.0, 0.0, GetEntityHeading(obj) + 180))
                playAnim()
                RenderScriptCams(false, true, 1500, true, false)
                DestroyCam(cam, false)
                TriggerServerEvent("nm-shoprobbery:givereward", "first", kasaNo)
            else
                showNotifyToPlayer(NMConfig['Notify']['texts']['not_broken'], 'error')
            end
		end
	end, kasaNo, "first")
end)

RegisterNetEvent('nm-shoprobbery:secondrobbery')
AddEventHandler('nm-shoprobbery:secondrobbery', function()
    local playerPed = PlayerPedId()
    local PlayerCoords = GetEntityCoords(playerPed)
    kasa = nil
    kasaNo = nil
    for i=1, #shops do
        local basitKasaMesafe = #(PlayerCoords - shops[i]["first_case"])
        local hardKasaMesafe = #(PlayerCoords - shops[i]["second_case"])
        if basitKasaMesafe < 1.5 then
            kasa = "first"
            kasaNo = i
        elseif hardKasaMesafe < 1.5 then
            kasa = "second"
            kasaNo = i
        end
    end
    ESX.TriggerServerCallback('nm-shoprobbery:serversidecooldown', function(atat)
		if atat then
            minigame()
		end
	end, kasaNo, "second")
end)

function minigame()
    exports["memorygame"]:thermiteminigame(9, 6, 4, 8, function()
        minigameSuccess()
    end,
    function()
        showNotifyToPlayer(NMConfig['Notify']['texts']['fail_minigame'], 'error')
    end)
end

function minigameSuccess()
    showNotifyToPlayer(NMConfig['Notify']['texts']['collect_cooldown'], 'error')
    Citizen.Wait(60000)
    showNotifyToPlayer(NMConfig['Notify']['texts']['collect_cdfinish'], 'error')
    collectmoney = true
end

function playAnim()
    loadAnimDict('oddjobs@shop_robbery@rob_till')
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(1000)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(1000)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(1000)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(1000)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(1000)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(1000)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(1000)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(1000)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(1000)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(1000)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'loop', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    TaskPlayAnim(PlayerPedId(), 'oddjobs@shop_robbery@rob_till', 'exit', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
end

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(50)
    end
end

function showNotifyToPlayer(textdata, type)
    if NMConfig['Notify']['notifyOptions'] then
        if NMConfig['Notify']['currentNotifyResource'] == 'native' then
            SetNotificationTextEntry("STRING")
            AddTextComponentString(textdata)
            DrawNotification(false, false)
        elseif NMConfig['Notify']['currentNotifyResource'] == 'qbcore' then
            QBCore.Functions.Notify(textdata, type)
        end
    end
end

RegisterNetEvent('showNotifyToPlayerServer')
AddEventHandler('showNotifyToPlayerServer', function(textdata, type)
    if NMConfig['Notify']['notifyOptions'] then
        if NMConfig['Notify']['currentNotifyResource'] == 'native' then
            SetNotificationTextEntry("STRING")
            AddTextComponentString(textdata)
            DrawNotification(false, false)
        elseif NMConfig['Notify']['currentNotifyResource'] == 'qbcore' then
            QBCore.Functions.Notify(textdata, type)
        end
    end
end)