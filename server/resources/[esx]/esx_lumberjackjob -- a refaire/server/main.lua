


ESX     = nil
local PlayersHarvestingWood 		 = {}
local PlayersCutingWood    			 = {}
local PlayersPackagingPlank      	 = {}
local PlayersReselling            	 = {}


--local PlayersTransforming  = {}
--local PlayersSelling       = {}
--local PlayersHarvesting = {}
--local Player... = {}

local wood = 1
local wood_clear = 1




TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'lumberjack', Config.MaxInService)
end


TriggerEvent('esx_phone:registerNumber', 'lumberjack', 'Client bucherons', false, false)

TriggerEvent('esx_society:registerSociety', 'lumberjack', 'lumberjack', 'society_bucheron', 'society_bucheron', 'society_bucheron', {type = 'private'})


-----------------------------Recolte---------------------------------------------

local function HarvestWood(source, zone)
	SetTimeout(3000, function()

		if PlayersHarvestingWood[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local woodQuantity = xPlayer.getInventoryItem('wood').count

			if woodQuantity >= 20 then
				TriggerClientEvent('esx:showNotification', source, 'Vous ne pouvez plus rammasser de Bois')
			else
					
				xPlayer.addInventoryItem('wood', 1)
				HarvestChicken(source)
			end

		end
	end)
end




RegisterServerEvent('esx_lumberjackjob:startHarvestWood')
		AddEventHandler('esx_lumberjackjob:startHarvestWood', function(zone)
			local _source = source
  	
			if PlayersHarvestingWood[_source] == false then
				TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
				PlayersHarvestingWood[_source]=false
			else
				PlayersHarvestingWood[_source]=true
				TriggerClientEvent('esx:showNotification', _source, 'Bois')  
				HarvestWood(_source,zone)
			end
	end)


RegisterServerEvent('esx_lumberjackjob:stopHarvest')
		AddEventHandler('esx_lumberjackjob:stopHarvest', function()
			local _source = source
	
			if PlayersHarvestingWood[_source] == true then
			PlayersHarvestingWood[_source]=false
			TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		else
			TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~récolter')
			PlayersHarvestingWood[_source]=true
		end
	end)



--RegisterServerEvent('esx_lumberjackjob:startHarvestWood')
--AddEventHandler('esx_lumberjackjob:startHarvestWood', function()
--	PlayersHarvestingWood[source] = true
--	TriggerClientEvent('esx:showNotification', source, 'Ramassage en cours...')
--	HarvestWood(source)
--end)

--RegisterServerEvent('esx_lumberjackjob:stopHarvestWood')
--AddEventHandler('esx_lumberjackjob:stopHarvestWood', function()
--	PlayersHarvestingWood[source] = false
--end)


-------------------------------------------Coupage--------------------------------
local function CutWood(source, zone)

		if PlayersCutingWood[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
			if zone == "CuttedWood" then
				local itemQuantity = xPlayer.getInventoryItem('wood').count
				if itemQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, 'pas assez de bois')
					return
				else
					--local rand = math.random(0,100)
		
					--if (rand >= 98) then
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('wood', 1)
						xPlayer.addInventoryItem('cutted_wood', 5)
						--TriggerClientEvent('esx:showNotification', source, _U('grand_cru'))
						Transform(source, zone)
					end)
				--else
				--	SetTimeout(1800, function()
				--		xPlayer.removeInventoryItem('wood', 1)
				--		xPlayer.addInventoryItem('cutted_wood', 1)
				--
				--		Transform(source, zone)
				--	end)
				end
			end
		end	
	end	

--local function CutWood(source)
--
--	SetTimeout(5000, function()

--		if PlayersTransformChicken[source] == true then

--			local xPlayer  = ESX.GetPlayerFromId(source)

--			local woodQuantity = xPlayer.getInventoryItem('wood').count
--			local cutedWoodQuantity 	  = xPlayer.getInventoryItem('cutted_wood').count
--
--			if woodQuantity <= 0 or cutedWoodQuantity >= 20 then
--				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez plus de bois ou de place')
--			else
--					
--				xPlayer.removeInventoryItem('wood', 1)
--				xPlayer.addInventoryItem('cutted_wood', 1)
--
--				TransformChicken(source)
--			end
--
--		end
--	end)
--end





RegisterServerEvent('esx_lumberjackjob:startTransform')
AddEventHandler('esx_lumberjackjob:startTransform', function(zone)
	local _source = source
  	
	if PlayersHarvestingWood[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersHarvestingWood[_source]=false
	else
		PlayersHarvestingWood[_source]=true
		TriggerClientEvent('esx:showNotification', _source, 'transformations en  cours') 
		Transform(_source,zone)
	end
end)


RegisterServerEvent('esx_lumberjackjob:stopTransform')
AddEventHandler('esx_lumberjackjob:stopTransform', function()

	local _source = source
	
	if PlayersHarvestingWood[_source] == true then
		PlayersHarvestingWood[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~transformer votre poisson')
		PlayersHarvestingWood[_source]=true
		
	end
end)

--RegisterServerEvent('esx_lumberjackjob:startCutingWood')
--AddEventHandler('esx_lumberjackjob:startCutingWood', function()
--	PlayersCutingWood[source] = true
--	TriggerClientEvent('esx:showNotification', source, 'Coupage en cours...')
--	CutWood(source)
--end)
--
--RegisterServerEvent('esx_lumberjackjob:stopCutingWood')
--AddEventHandler('esx_lumberjackjob:stopCutingWood', function()
--	PlayersCutingWood[source] = false
--end)

































----------------Revente---------------------------


local function Resell(source, zone)

	if PlayersReselling[source] == true then
		local xPlayer  = ESX.GetPlayerFromId(source)
		


		if zone == 'Delivery' then
			if xPlayer.getInventoryItem('packaged_plank').count <= 0 then
				wood = 0
			else
				wood = 1
			end

			
			if xPlayer.getInventoryItem('cutted_wood').count <= 0 then
				wood_clear = 0
			else
				wood_clear = 1
			end
		


			if wood == 0 and wood_clear == 0 then
				TriggerClientEvent('esx:showNotification', _source, 'Vous n\'avez plus de produit a vendre')
				return

		
			elseif xPlayer.getInventoryItem('packaged_plank').count <= 0 and wood == 0 then
				TriggerClientEvent('esx:showNotification', _source, 'Vous n\'avez pas de bois a vendre')
				wood = 0
				return

		
			elseif xPlayer.getInventoryItem('cutted_wood').count <= 0 and wood == 0 then
				TriggerClientEvent('esx:showNotification', _source, 'vous n\'avez plus de planche a vendre')
				wood_clear = 0
				return

		
			else

		
				if (wood_clear == 1) then
					SetTimeout(1100, function()
						local money = math.random(18,25)
						xPlayer.removeInventoryItem('cutted_wood', 1)
						local societyAccount = nil


						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_bucheron', function(account)
							societyAccount = account
						end)

		
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, 'comp_earned' .. money)
						end
						Resell(source,zone)
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
							TriggerClientEvent('esx:showNotification', xPlayer.source, 'comp_earned' .. money)
						end
						Resell(source,zone)
					end)
				end
				
			end
		end
	end
end


--local function Resell(source)
--	SetTimeout(500, function()
--
--		if PlayersReselling[source] == true then
--
--			local xPlayer  = ESX.GetPlayerFromId(source)
--
--			local packagedPlankQuantity = xPlayer.getInventoryItem('packaged_plank').count
--
--			if packagedPlankQuantity <= 0 then
--				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez plus de poulets à vendre')
--			else
--					
--				xPlayer.removeInventoryItem('packaged_plank', 1)
--				local total 	   = 15
--				local playerMoney  = math.floor(total / 100 * 33.34)
---	  			local societyMoney = math.floor(total / 100 * 66.67)
--
--	  				xPlayer.addMoney(playerMoney)
--	  				TriggerEvent('esx_addonaccount:getSharedAccount', 'society_lumberjackjob', function(societyAccount)  
--	    					societyAccount.addMoney(societyMoney)
--  					end)
--
--	  				TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez gagné ~g~$'.. playerMoney)
--	  				TriggerClientEvent('esx:showNotification', xPlayer.source, 'Votre société a gagné ~g~$'.. societyMoney)
--					
--				Resell(source)
--			end
--
--		end
--	end)
--end















RegisterServerEvent('esx_lumberjackjob:startSell')
AddEventHandler('esx_lumberjackjob:startSell', function(zone)

	local _source = source
	
	if PlayersReselling[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersReselling[_source]=false
	else
		PlayersReselling[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		Sell(_source, zone)
	end

end)

RegisterServerEvent('esx_lumberjackjob:stopSell')
AddEventHandler('esx_lumberjackjob:stopSell', function()

	local _source = source
	
	if PlayersReselling[_source] == true then
		PlayersReselling[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre')
		PlayersReselling[_source]=true
	end

end)

--RegisterServerEvent('esx_lumberjackjob:startResell')
--AddEventHandler('esx_lumberjackjob:startResell', function()
--	local _source = source
--	PlayersReselling[_source] = true
--	TriggerClientEvent('esx:showNotification', _source, 'Vente en cours...')
--	Resell(source)
--end)

--RegisterServerEvent('esx_lumberjackjob:stopResell')
--AddEventHandler('esx_lumberjackjob:stopResell', function()
--	local _source = source
--	PlayersReselling[_source] = false
--end)


----------------Revente---------------------------






RegisterServerEvent('esx_lumberjackjob:getStockItem')
AddEventHandler('esx_lumberjackjob:getStockItem', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bucheron', function(inventory)

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







ESX.RegisterServerCallback('esx_lumberjackjob:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bucheron', function(inventory)
		cb(inventory.items)
	end)

end)








RegisterServerEvent('esx_lumberjackjob:putStockItems')
AddEventHandler('esx_lumberjackjob:putStockItems', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bucheron', function(inventory)

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




ESX.RegisterServerCallback('esx_lumberjackjob:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)