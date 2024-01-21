ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= 'nm-shoprobbery') then
      return
    end
    Wait(2500)
    print('^2 The resource ' .. resourceName .. ' has been started.')
    print('^2 The resource ' .. resourceName .. ' has been started.')
    print('^4 Thanks for choosing us! NProbleM 💞')
    print('^4 Thanks for choosing us! NProbleM 💞')
    print('^1 Need any help? Login DISCORD https://discord.gg/gmRtqRrUEK')
    print('^1 Need any help? Login DISCORD https://discord.gg/gmRtqRrUEK')
    print('^1 Need any help? Login DISCORD https://discord.gg/gmRtqRrUEK')
    print('^1 Need any help? Login DISCORD https://discord.gg/gmRtqRrUEK')
end)

local shops = {
    [1] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [2] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [3] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [4] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [5] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [6] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [7] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [8] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [9] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [10] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [11] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [12] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
	[13] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
	[14] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [15] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
	[16] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
    [17] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
	[18] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
	[19] = {
		["first_cd"] = 0,
        ["second_cd"] = 0,
    },
}

ESX.RegisterServerCallback('nm-shoprobbery:serversidecooldown', function(source, cb, marketNo, tip)
    local xPlayer = ESX.GetPlayerFromId(source)
    if marketNo ~= nil then
        if tip == "first" and (os.time() - shops[marketNo]["first_cd"]) > NMConfig['General']['firstCDTime'] then
            cb(true)
        elseif tip == "second" and (os.time() - shops[marketNo]["second_cd"]) > NMConfig['General']['secondCDTime'] then
            cb(true)
        else
            TriggerClientEvent('showNotifyToPlayerServer', source, NMConfig['Notify']['texts']['already_robbery'], 'error')
            cb(false)
        end   
    else
        TriggerClientEvent('showNotifyToPlayerServer', source, 'not close enough or using executor :))', 'error')
    end
end)

RegisterServerEvent("nm-shoprobbery:givereward")
AddEventHandler("nm-shoprobbery:givereward", function(tip, kasaNo)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if tip == "first" and (os.time() - shops[kasaNo]["first_cd"]) > NMConfig['General']['firstCDTime'] then
        xPlayer.addMoney(math.random(NMConfig['General']['firstCaseReward'][1], NMConfig['General']['firstCaseReward'][2]))
        shops[kasaNo]["first_cd"] = os.time()
    elseif tip == "second" and (os.time() - shops[kasaNo]["second_cd"]) > NMConfig['General']['secondCDTime'] then
        xPlayer.addMoney(math.random(NMConfig['General']['secondCaseReward'][1], NMConfig['General']['secondCaseReward'][2]))
        shops[kasaNo]["second_cd"] = os.time()
    else
       TriggerClientEvent('showNotifyToPlayerServer', source, NMConfig['Notify']['texts']['empty_safe'], 'error')
    end
end)