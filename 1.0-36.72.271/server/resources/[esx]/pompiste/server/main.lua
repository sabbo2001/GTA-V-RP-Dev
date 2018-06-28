ESX                = nil
local Playersrecolt = {}
local Playersdisti = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'pompiste', -1)
end

TriggerEvent('esx_society:registerSociety', 'pompiste', 'Pompiste', 'society_pompiste', 'society_pompiste', 'society_pompiste', {type = 'private'})

--local function HarvestWhool(source)
--
--
--	SetTimeout(3000, function()
--
--		if PlayersHarvestingWhool[source] == true then
--
--			local xPlayer  = ESX.GetPlayerFromId(source)
--
--			local whoolQuantity = xPlayer.getInventoryItem('whool').count
--
--			if whoolQuantity >= 40 then
--				TriggerClientEvent('esx:showNotification', source, 'Vous ne pouvez plus rammasser de Laine')
--			else
--					
--				xPlayer.addInventoryItem('whool', 1)
--				HarvestWhool(source)
--			end
--
--		end
--	end)
--end
-----
local function Distil(source) 

  SetTimeout(3000, function()
		
		if Playersdisti[source] == true then

		local xPlayer = ESX.GetPlayerFromId(source)
	--local job = xPlayer["job"]["name"]
		local Quantity = xPlayer.getInventoryItem('petrole').count

		if Quantity >= 100 then
		  TriggerClientEvent('esx:showNotification', source, '~r~Vous n\'avez plus de pétrol brut à distiller.')
		else
  			xPlayer.removeInventoryItem('petrole', 1)
 			xPlayer.addInventoryItem('essence', 1)
		 --xPlayer.removeInventoryItem('petrole', Config.ItemDistiled)
			--	 xPlayer.addInventoryItem('essence', math.floor(Config.ItemDistiled/2))
			TriggerClientEvent('esx:showNotification', _source, 'Vous avez distillé '.. Config.ItemDistiled ..' de pétrol brut.')
				 Distil(source)
		end

	  end
	end)
end

local function Recolting(source) 


  SetTimeout(3000, function()
		
		if Playersdisti[source] == true then

		local xPlayer = ESX.GetPlayerFromId(source)
	--local job = xPlayer["job"]["name"]
		local Quantity = xPlayer.getInventoryItem('petrole').count

		if Quantity >= 100 then
		  TriggerClientEvent('esx:showNotification', source, '~r~Vous n\'avez plus de pétrol brut à recolter.')
		else
  		--	xPlayer.removeInventoryItem('petrole', 1)
 			xPlayer.addInventoryItem('petrole', 1)
		 --xPlayer.removeInventoryItem('petrole', Config.ItemDistiled)
			--	 xPlayer.addInventoryItem('essence', math.floor(Config.ItemDistiled/2))
			TriggerClientEvent('esx:showNotification', _source, 'Vous avez recolter 1x de pétrol brut.')
				 Distil(source)
		end

	  end
	end)
end

RegisterServerEvent('pompiste:disti')
AddEventHandler('pompiste:disti', function()
	local _source = source
	if Playersdisti[_source] == false then
	  TriggerClientEvent('esx:showNotification', _source, '~r~Sortez et revenez dans la zone !')
	  Playersdisti[_source] = false
	else
	  Playersdisti[_source] = true
	  TriggerClientEvent('esx:showNotification', _source, '~g~Action ~w~en cours...')
	  Distil(_source)
	end
end)

RegisterServerEvent('pompiste:recolte')
AddEventHandler('pompiste:recolte', function()
	local _source = source
	if Playersrecolt[_source] == false then
	  TriggerClientEvent('esx:showNotification', _source, '~r~Sortez et revenez dans la zone !')
	  Playersrecolt[_source] = false
	else
	  Playersrecolt[_source] = true
	  TriggerClientEvent('esx:showNotification', _source, '~g~Action ~w~en cours...')
	  Recolting(_source)
	end
end)





RegisterServerEvent('pompiste:stopDisti')
AddEventHandler('pompiste:stopDisti', function()

local _source = source

if Playersdisti[_source] == true then
  Playersdisti[_source] = false
else
  Playersdisti[_source] = true
end
end)

RegisterServerEvent('pompiste:stopReco')
AddEventHandler('pompiste:stopReco', function()

local _source = source

if Playersrecolt[_source] == true then
  Playersrecolt[_source] = false
else
  Playersrecolt[_source] = true
end
end)
