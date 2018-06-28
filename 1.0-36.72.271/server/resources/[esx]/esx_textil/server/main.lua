ESX                		= nil
local PlayersHarvestingWhool 		 = {}
local PlayersCutingWhool   			 = {}
local PlayersPackagingWhool     	 = {}
local PlayersReselling 				 = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'textil', Config.MaxInService)
end


-----------------------------Recolte---------------------------------------------
local function HarvestWhool(source)


	SetTimeout(3000, function()

		if PlayersHarvestingWhool[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local whoolQuantity = xPlayer.getInventoryItem('whool').count

			if whoolQuantity >= 40 then
				TriggerClientEvent('esx:showNotification', source, 'Vous ne pouvez plus rammasser de Laine')
			else
					
				xPlayer.addInventoryItem('whool', 1)
				HarvestWhool(source)
			end

		end
	end)
end

RegisterServerEvent('esx_textil:startHarvestWhool')
AddEventHandler('esx_textil:startHarvestWhool', function()
	local _source = source
	PlayersHarvestingWhool[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Ramassage en cours...')
	HarvestWhool(source)
end)

RegisterServerEvent('esx_textil:stopHarvestWhool')
AddEventHandler('esx_textil:stopHarvestWhool', function()
	local _source = source
	PlayersHarvestingWhool[_source] = false
end)
-------------------------------------------Coupage--------------------------------
local function CutWhool(source)

	SetTimeout(5000, function()

		if PlayersCutingWhool[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local whoolQuantity = xPlayer.getInventoryItem('whool').count

			if whoolQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez plus de laine a traiter')
			else
					
				xPlayer.removeInventoryItem('whool', 1)
				xPlayer.addInventoryItem('fabric', 2)

				CutWhool(source)
			end

		end
	end)
end

RegisterServerEvent('esx_textil:startCutingWhool')
AddEventHandler('esx_textil:startCutingWhool', function()
	local _source = source
	PlayersCutingWhool[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Traitement en cours ....')
	CutWhool(source)
end)

RegisterServerEvent('esx_textil:stopCutingWhool')
AddEventHandler('esx_textil:stopCutingWhool', function()
	local _source = source
	PlayersCutingWhool[_source] = false
end)
-----------------------------Conditionement--------------------------------
local function PackageWhool(source)

	SetTimeout(4000, function()

		if PlayersPackagingWhool[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local cutedWhoolQuantity 	  = xPlayer.getInventoryItem('fabric').count
			local packagedWhoolQuantity    = xPlayer.getInventoryItem('clothe').count

			if cutedWhoolQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez plus de vetements a fabriquer')
			elseif packagedWhoolQuantity >= 40 then
				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez plus de place pour des vetements')
			else
					
				xPlayer.removeInventoryItem('fabric', 2)
				xPlayer.addInventoryItem('clothe', 1)
				
				PackageWhool(source)
			end

		end
	end)
end

RegisterServerEvent('esx_textil:startPackageWhool')
AddEventHandler('esx_textil:startPackageWhool', function()
	local _source = source
	PlayersPackagingWhool[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Fabrication en cours...')
	PackageWhool(source)
end)

RegisterServerEvent('esx_textil:stopPackageWhool')
AddEventHandler('esx_textil:stopPackageWhool', function()
	local _source = source
	PlayersPackagingWhool[_source] = false
end)
----------------Revente---------------------------
local function Resell(source)

	SetTimeout(500, function()

		if PlayersReselling[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local packagedWhoolQuantity = xPlayer.getInventoryItem('clothe').count

			if packagedWhoolQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez plus de vetement a vendre')
			else
					
				xPlayer.removeInventoryItem('clothe', 1)
				local total 	   = 35
				local playerMoney  = math.floor(total / 100 * 15)
	  			local societyMoney = math.floor(total / 100 * 85)

	  				xPlayer.addMoney(playerMoney)
	  				TriggerEvent('esx_addonaccount:getSharedAccount', 'society_textil', function(societyAccount)
      					societyAccount.addMoney(societyMoney)
  					end)

	  				TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez gagné ~g~$'.. playerMoney)
	  				TriggerClientEvent('esx:showNotification', xPlayer.source, 'Votre société a gagné ~g~$'.. societyMoney)
					
				Resell(source)
			end

		end
	end)
end

RegisterServerEvent('esx_textil:startResell')
AddEventHandler('esx_textil:startResell', function()
	local _source = source
	PlayersReselling[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Vente en cours...')
	Resell(source)
end)

RegisterServerEvent('esx_textil:stopResell')
AddEventHandler('esx_textil:stopResell', function()
	local _source = source
	PlayersReselling[_source] = false
end)


RegisterServerEvent('esx_textil:getStockItem')
AddEventHandler('esx_textil:getStockItem', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_textil', function(inventory)

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

ESX.RegisterServerCallback('esx_textil:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_textil', function(inventory)
		cb(inventory.items)
	end)

end)

-------------
-- AJOUT 2 --
-------------

RegisterServerEvent('esx_textil:putStockItems')
AddEventHandler('esx_textil:putStockItems', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_textil', function(inventory)

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


ESX.RegisterServerCallback('esx_textil:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)