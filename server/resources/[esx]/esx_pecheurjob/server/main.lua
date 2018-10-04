-----------------------------------------
-- Created and modify by L'ile Légale RP
-- SenSi and Kaminosekai
-----------------------------------------

ESX = nil
local PlayersTransforming  = {}
local PlayersSelling       = {}
local PlayersHarvesting = {}
local fish = 1
local fish_clear = 1





TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

	if Config.MaxInService ~= -1 then
		TriggerEvent('esx_service:activateService', 'peche', Config.MaxInService)
	end





TriggerEvent('esx_phone:registerNumber', 'peche', _U('Pecheur_client'), true, true)







	local function Harvest(source, zone)
		if PlayersHarvesting[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)
			if zone == "PecheFarm" then
				local itemQuantity = xPlayer.getInventoryItem('poisson_vivant').count
				if itemQuantity >= 100 then
					TriggerClientEvent('esx:showNotification', source, _U('not_enough_place'))
					return
				else
				SetTimeout(1800, function()
					xPlayer.addInventoryItem('poisson_vivant', 1)
					Harvest(source, zone)
					end)
				end
			end
		end
	end)






	RegisterServerEvent('esx_pecheurjob:startHarvest')
		AddEventHandler('esx_pecheurjob:startHarvest', function(zone)
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





	RegisterServerEvent('esx_pecheurjob:stopHarvest')
		AddEventHandler('esx_pecheurjob:stopHarvest', function()
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
		
		if zone == "Traitementpoissonlave" then
			local itemQuantity = xPlayer.getInventoryItem('poisson_vivant').count
			
		
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_raisin'))
				return
			else
				local rand = math.random(0,100)
		
				if (rand >= 98) then
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('poisson_vivant', 1)
						xPlayer.addInventoryItem('poisson_lave', 1)
						--TriggerClientEvent('esx:showNotification', source, _U('grand_cru'))
						Transform(source, zone)
					end)
				else
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('poisson_vivant', 1)
						xPlayer.addInventoryItem('poisson_lave', 1)
				
						Transform(source, zone)
					end)
				end
			end
		
		elseif zone == "Traitementpoissonprepare" then
			local itemQuantity = xPlayer.getInventoryItem('poisson_lave').count
		
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_raisin'))
				return
		
			else
				SetTimeout(1800, function()
					xPlayer.removeInventoryItem('poisson_lave', 1)
					xPlayer.addInventoryItem('poisson_préparé', 1)
		  
					Transform(source, zone)	  
				end)
		
			end
		end

	end	
end







RegisterServerEvent('esx_pecheurjob:startTransform')
AddEventHandler('esx_pecheurjob:startTransform', function(zone)
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







RegisterServerEvent('esx_pecheurjob:stopTransform')
AddEventHandler('esx_pecheurjob:stopTransform', function()

	local _source = source
	
	if PlayersTransforming[_source] == true then
		PlayersTransforming[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~transformer votre poisson')
		PlayersTransforming[_source]=true
		
	end
end)







local function Sell(source, zone)

	if PlayersSelling[source] == true then
		local xPlayer  = ESX.GetPlayerFromId(source)
		


		if zone == 'SellFarm' then
			if xPlayer.getInventoryItem('poisson_vente').count <= 0 then
				fish = 0
			else
				fish = 1
			end

			
			if xPlayer.getInventoryItem('poisson_lave').count <= 0 then
				fish_clear = 0
			else
				fish_clear = 1
			end
		


			if fish == 0 and fish_clear == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_product_sale'))
				return

		
			elseif xPlayer.getInventoryItem('poisson_vente').count <= 0 and fish == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_vin_sale'))
				fish = 0
				return

		
			elseif xPlayer.getInventoryItem('poisson_lave').count <= 0 and fish == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_jus_sale'))
				fish_clear = 0
				return

		
			else

		
				if (fish_clear == 1) then
					SetTimeout(1100, function()
						local money = math.random(18,25)
						xPlayer.removeInventoryItem('poisson_lave', 1)
						local societyAccount = nil


						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_peche', function(account)
							societyAccount = account
						end)

		
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
		
				elseif (fish == 1) then
					SetTimeout(1100, function()
						local money = math.random(30,35)
						xPlayer.removeInventoryItem('poisson_vente', 1)
						local societyAccount = nil
						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_peche', function(account)
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









RegisterServerEvent('esx_pecheurjob:startSell')
AddEventHandler('esx_pecheurjob:startSell', function(zone)

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








RegisterServerEvent('esx_pecheurjob:stopSell')
AddEventHandler('esx_pecheurjob:stopSell', function()

	local _source = source
	
	if PlayersSelling[_source] == true then
		PlayersSelling[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre')
		PlayersSelling[_source]=true
	end

end)








RegisterServerEvent('esx_pecheurjob:getStockItem')
AddEventHandler('esx_pecheurjob:getStockItem', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_peche', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= count then
			inventory.removeItem(itemName, count)
			xPlayer.addInventoryItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn') .. count .. ' ' .. item.label)

	end)

end)








ESX.RegisterServerCallback('esx_pecheurjob:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_peche', function(inventory)
		cb(inventory.items)
	end)

end)








RegisterServerEvent('esx_pecheurjob:putStockItems')
AddEventHandler('esx_pecheurjob:putStockItems', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_peche', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('added') .. count .. ' ' .. item.label)

	end)
end)







ESX.RegisterServerCallback('esx_pecheurjob:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)
