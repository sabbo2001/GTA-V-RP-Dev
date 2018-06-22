ESX                		= nil
local PlayersAliveChicken 		 = {}
local PlayersTransformChicken    			 = {}
local PlayersPackagingChicken      	 = {}
local PlayersReselling 				 = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'slaughterer', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'slaughtererjob', 'Client abateur', false, false)
-----------------------------Recolte---------------------------------------------
local function HarvestChicken(source)


	SetTimeout(3000, function()

		if PlayersAliveChicken[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local chickenQuantity = xPlayer.getInventoryItem('alive_chicken').count

			if chickenQuantity >= 20 then
				TriggerClientEvent('esx:showNotification', source, 'Vous ne pouvez plus rammasser de Poulets vivants')
			else
					
				xPlayer.addInventoryItem('alive_chicken', 1)
				HarvestChicken(source)
			end

		end
	end)
end

RegisterServerEvent('esx_slaughtererjob:startHarvestChicken')
AddEventHandler('esx_slaughtererjob:startHarvestChicken', function()
	local _source = source
	PlayersAliveChicken[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Ramassage en cours...')
	HarvestChicken(source)
end)

RegisterServerEvent('esx_slaughtererjob:stopHarvestChicken')
AddEventHandler('esx_slaughtererjob:stopHarvestChicken', function()
	local _source = source
	PlayersAliveChicken[_source] = false
end)
-------------------------------------------Coupage--------------------------------
local function TransformChicken(source)

	SetTimeout(5000, function()

		if PlayersTransformChicken[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local chickenQuantity = xPlayer.getInventoryItem('alive_chicken').count
			local cutedChickenQuantity 	  = xPlayer.getInventoryItem('slaughtered_chicken').count

			if chickenQuantity <= 0 or cutedChickenQuantity >= 20 then
				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez plus de poulets à dépecer ou plus de place')
			else
					
				xPlayer.removeInventoryItem('alive_chicken', 1)
				xPlayer.addInventoryItem('slaughtered_chicken', 1)

				TransformChicken(source)
			end

		end
	end)
end

RegisterServerEvent('esx_slaughtererjob:startTransformingChicken')
AddEventHandler('esx_slaughtererjob:startTransformingChicken', function()
	local _source = source
	PlayersTransformChicken[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Dépeçage en cours...')
	TransformChicken(source)
end)

RegisterServerEvent('esx_slaughtererjob:stopTransformingChicken')
AddEventHandler('esx_slaughtererjob:stopTransformingChicken', function()
	local _source = source
	PlayersTransformChicken[_source] = false
end)
-----------------------------Conditionement--------------------------------
local function PackageChicken(source)

	SetTimeout(4000, function()

		if PlayersPackagingChicken[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local cutedChickenQuantity 	  = xPlayer.getInventoryItem('slaughtered_chicken').count
			local packagedChickenQuantity    = xPlayer.getInventoryItem('packaged_chicken').count

			if cutedChickenQuantity <= 0 or packagedChickenQuantity >= 100 then
				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez plus de poulets à conditionner ou plus de place')
			else
					
				xPlayer.removeInventoryItem('slaughtered_chicken', 1)
				xPlayer.addInventoryItem('packaged_chicken', 5)
				
				PackageChicken(source)
			end

		end
	end)
end

RegisterServerEvent('esx_slaughtererjob:startPackageChicken')
AddEventHandler('esx_slaughtererjob:startPackageChicken', function()
	local _source = source
	PlayersPackagingChicken[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Conditonnement en cours...')
	PackageChicken(source)
end)

RegisterServerEvent('esx_slaughtererjob:stopPackageChicken')
AddEventHandler('esx_slaughtererjob:stopPackageChicken', function()
	local _source = source
	PlayersPackagingChicken[_source] = false
end)
----------------Revente---------------------------
local function Resell(source)

	SetTimeout(500, function()

		if PlayersReselling[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local packagedChickenQuantity = xPlayer.getInventoryItem('packaged_chicken').count

			if packagedChickenQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez plus de poulets à vendre')
			else
					
				xPlayer.removeInventoryItem('packaged_chicken', 1)
				local total 	   = 15
				local playerMoney  = math.floor(total / 100 * 33.34)
	  			local societyMoney = math.floor(total / 100 * 66.67)

	  				xPlayer.addMoney(playerMoney)
	  				TriggerEvent('esx_addonaccount:getSharedAccount', 'society_slaughterer', function(societyAccount)  
      					societyAccount.addMoney(societyMoney)
  					end)

	  				TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez gagné ~g~$'.. playerMoney)
	  				TriggerClientEvent('esx:showNotification', xPlayer.source, 'Votre société a gagné ~g~$'.. societyMoney)
					
				Resell(source)
			end

		end
	end)
end

RegisterServerEvent('esx_slaughtererjob:startResell')
AddEventHandler('esx_slaughtererjob:startResell', function()
	local _source = source
	PlayersReselling[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Vente en cours...')
	Resell(source)
end)

RegisterServerEvent('esx_slaughtererjob:stopResell')
AddEventHandler('esx_slaughtererjob:stopResell', function()
	local _source = source
	PlayersReselling[_source] = false
end)




RegisterServerEvent('esx_slaughtererjob:getStockItem')
AddEventHandler('esx_slaughtererjob:getStockItem', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_slaughtererjob', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= count then
			inventory.removeItem(itemName, count)
			xPlayer.addInventoryItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, 'Quantité invalide')
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez retiré x' .. count .. ' ' .. item.label)

	end)

end)

ESX.RegisterServerCallback('esx_slaughtererjob:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_slaughtererjob', function(inventory)
		cb(inventory.items)
	end)

end)

-------------
-- AJOUT 2 --
-------------

RegisterServerEvent('esx_slaughtererjob:putStockItems')
AddEventHandler('esx_slaughtererjob:putStockItems', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_slaughtererjob', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, 'Quantité invalide')
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez ajouté x' .. count .. ' ' .. item.label)

	end)

end)


ESX.RegisterServerCallback('esx_slaughtererjob:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)