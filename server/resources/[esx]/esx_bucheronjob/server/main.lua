-----------------------------------------
-- Created and modify by L'ile Légale RP
-- SenSi and Kaminosekai
-----------------------------------------

ESX = nil
local PlayersTransforming  = {}
local PlayersSelling       = {}
local PlayersHarvesting = {}
--local vine = 1
--local jus = 1
local wood = 1 
local plank = 1

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	--TriggerEvent('esx_service:activateService', 'vigne', Config.MaxInService)
	TriggerEvent('esx_service:activateService', 'buche', Config.MaxInService)
end

--TriggerEvent('esx_phone:registerNumber', 'vigne', _U('vigneron_client'), true, true)
TriggerEvent('esx_phone:registerNumber', 'buche', _U('vigneron_client'),true, true)


--TriggerEvent('esx_society:registerSociety', 'vigne', 'Vigneron', 'society_vigne', 'society_vigne', 'society_vigne', {type = 'private'})
TriggerEvent('esx_society:registerSociety', 'buche', 'Bucherons', 'society_bucheron', 'society_bucheron', 'society_bucheron', {type = 'private'})

local function Harvest(source, zone)
	if PlayersHarvesting[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "Woodfarm" then
			local itemQuantity = xPlayer.getInventoryItem('wood').count
			if itemQuantity >= 100 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_place'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.addInventoryItem('wood', 1)
					Harvest(source, zone)
				end)
			end
		end
	end
end


--RegisterServerEvent('esx_vigneronjob:startHarvest')
RegisterServerEvent('esx_bucheronjob:startHarvest')
--AddEventHandler('esx_vigneronjob:startHarvest', function(zone)
AddEventHandler('esx_bucheronjob:startHarvest', function(zone)

	local _source = source
  	
	if PlayersHarvesting[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersHarvesting[_source]=false
	else
		PlayersHarvesting[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('raisin_taken'))  
		Harvest(_source,zone)
	end
end)


--RegisterServerEvent('esx_vigneronjob:stopHarvest')
RegisterServerEvent('esx_bucheronjob:stopHarvest')
--AddEventHandler('esx_vigneronjob:stopHarvest', function()
AddEventHandler('esx_bucheronjob:stopHarvest', function ()

	local _source = source
	
	if PlayersHarvesting[_source] == true then
		PlayersHarvesting[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~récolter')
		PlayersHarvesting[_source]=true
	end
end)


local function Transform(source, zone)

	if PlayersTransforming[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "TraitementBois" then
			
			local itemQuantity = xPlayer.getInventoryItem('wood').count
			
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_raisin'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.removeInventoryItem('wood', 1)
					xPlayer.addInventoryItem('cutted_wood', 1)
		  
					Transform(source, zone)	  
				end)
			end
		end

		if zone == "TraitementPlank" then
			
			local itemQuantity = xPlayer.getInventoryItem('cutted_wood').count
			
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_raisin'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.removeInventoryItem('cutted_wood', 1)
					xPlayer.addInventoryItem('plank', 1)
		  
					Transform(source, zone)	  
				end)
			end
		end
		

		if zone == "TraitementPackage" then
			local itemQuantity = xPlayer.getInventoryItem('plank').count
			
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_raisin'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.removeInventoryItem('plank', 1)
					xPlayer.addInventoryItem('packaged_plank', 1)
		  
					Transform(source, zone)	  
				end)
			end
		end
	
	end	
end

RegisterServerEvent('esx_bucheronjob:startTransform')
AddEventHandler('esx_bucheronjob:startTransform', function(zone)
	local _source = source
  	
	if PlayersTransforming[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersTransforming[_source]=false
	else
		PlayersTransforming[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('transforming_in_progress')) 
		Transform(_source,zone)
	end
end)

RegisterServerEvent('esx_bucheronjob:stopTransform')
AddEventHandler('esx_bucheronjob:stopTransform', function()

	local _source = source
	
	if PlayersTransforming[_source] == true then
		PlayersTransforming[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~transformer votre raisin')
		PlayersTransforming[_source]=true
		
	end
end)

local function Sell(source, zone)

	if PlayersSelling[source] == true then
		
		local xPlayer  = ESX.GetPlayerFromId(source)
		
		if zone == 'SellFarm' then
		
			if xPlayer.getInventoryItem('packaged_plank').count <= 0 then
		
				wood = 0
		
			else
		
				wood = 1

			end
			
			if xPlayer.getInventoryItem('cutted_wood').count <= 0 then
		
				plank = 0
		
			else
		
				plank = 1
		
			end
		

			if wood == 0 and plank == 0 then
		
				TriggerClientEvent('esx:showNotification', source, _U('no_product_sale'))
		
				return
		
			elseif xPlayer.getInventoryItem('packaged_plank').count <= 0 and plank == 0 then
		
				TriggerClientEvent('esx:showNotification', source, _U('no_vin_sale'))
		
				wood = 0
		
				return
		
			elseif xPlayer.getInventoryItem('cutted_wood').count <= 0 and wood == 0then
		
				TriggerClientEvent('esx:showNotification', source, _U('no_jus_sale'))
		
				plank = 0
		
				return
		
			else
				if (plank == 1) then
					SetTimeout(1100, function()
						local money = math.random(18,25)
						xPlayer.removeInventoryItem('cutted_wood', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_bucheron', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
				elseif (wood == 1) then
					SetTimeout(1100, function()
						local money = math.random(30,35)
						xPlayer.removeInventoryItem('packaged_plank', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_bucheron', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
				end
				
			end
		end
	end
end

RegisterServerEvent('esx_bucheronjob:startSell')
AddEventHandler('esx_bucheronjob:startSell', function(zone)

	local _source = source
	
	if PlayersSelling[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersSelling[_source]=false
	else
		PlayersSelling[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		Sell(_source, zone)
	end

end)

RegisterServerEvent('esx_bucheronjob:stopSell')
AddEventHandler('esx_bucheronjob:stopSell', function()

	local _source = source
	
	if PlayersSelling[_source] == true then
		PlayersSelling[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre')
		PlayersSelling[_source]=true
	end

end)




RegisterServerEvent('esx_bucheronjob:getStockItem')
AddEventHandler('esx_bucheronjob:getStockItem', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bucheron', function(inventory)

		local inventoryItem = inventory.getItem(itemName)

		-- is there enough in the society?
		if count > 0 and inventoryItem.count >= count then
		
			-- can the player carry the said amount of x item?
			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
			else
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('esx:showNotification', _source, _U('have_withdrawn', count, inventoryItem.label))
			end
		else
			TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
		end
	end)

end)

ESX.RegisterServerCallback('esx_bucheronjob:getStockItems', function(source, cb)
  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bucheron', function(inventory)
    cb(inventory.items)
  end)
end)



RegisterServerEvent('esx_bucheronjob:putStockItems')
AddEventHandler('esx_bucheronjob:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bucheron', function(inventory)

		local inventoryItem = inventory.getItem(itemName)

		-- does the player have enough of the item?
		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited', count, inventoryItem.label))
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

	end)

end)



ESX.RegisterServerCallback('esx_bucheronjob:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)

