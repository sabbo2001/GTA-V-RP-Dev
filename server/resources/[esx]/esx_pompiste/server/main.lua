ESX                = nil
local Playersrecolt = {}
local Playersdisti = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'pompiste', -1)
end

TriggerEvent('esx_society:registerSociety', 'pompiste', 'Pompiste', 'society_pompiste', 'society_pompiste', 'society_pompiste', {type = 'private'})

 


local function Recolting(source, zone) 
	if Playersrecolt[source] == true then
			
			local xPlayer = ESX.GetPlayerFromId(source)
			--local _source = source
			if zone == "recolte" then
				local itemQuantity = xPlayer.getInventoryItem('petrole').count
				if itemQuantity >= 100 then
					 TriggerClientEvent('esx:showNotification', _source, '~r~Vous n\'avez plus de place.')
					 Playersrecolt[_source] = false	
					 return
				else
					SetTimeout(1800, function()
						xPlayer.addInventoryItem('petrole', 1)	
						TriggerClientEvent('esx:showNotification', _source, 'Vous avez récolté '.. Config.ItemRecolte ..' de pétrol brut.')
						Recolting(source, zone)
	  			end)
			end
	  	end
	end
end


RegisterServerEvent('esx_pompiste:starRecolting')
AddEventHandler('esx_pompiste:startRecolting', function(zone)
	local _source = source

	if Playersrecolt[_source] == false then
	  TriggerClientEvent('esx:showNotification', _source, '~r~Sortez et revenez dans la zone !')
	  Playersrecolt[_source] = false
	else
	  Playersrecolt[_source] = true
	  TriggerClientEvent('esx:showNotification', _source, '~g~Action ~w~en cours...')
	  Recolting(_source,zone)
	end
end)

RegisterServerEvent('esx_pompiste:stopRecolting')
AddEventHandler('esx_pompiste:stopRecoting', function()
	local _source = source

	if Playersrecolt[_source] == true then
  		Playersrecolt[_source] = false
  		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
	else
  		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~récolter')
  		Playersrecolt[_source] = true
	end
end)





local function Distil(source, zone) 

 
		if Playersdisti[source] == true then

			local xPlayer = ESX.GetPlayerFromId(source)
			if zone == "disti" then
			local itemQuantity = xPlayer.getInventoryItem('petrole').count

				if itemQuantity <= 0 then
				  TriggerClientEvent('esx:showNotification', _source, '~r~Vous n\'avez plus de pétrol brut à distiller.')
				  --Playersdisti[_source] = false
				  return
				else
					 SetTimeout(1800, function()
					 xPlayer.removeInventoryItem('petrole', 1)
					--xPlayer.addInventoryItem('essence', math.floor(Config.ItemDistiled/2))
					 xPlayer.addInventoryItem('essence', 5)
					 TriggerClientEvent('esx:showNotification', _source, 'Vous avez distillé '.. Config.ItemDistiled ..' de pétrol brut.')
					 Distil(source, zone)
					 end)
	 			end
			end
		end
end



RegisterServerEvent('esx_pompiste:startDistil')
AddEventHandler('esx_pompiste:startDistil', function(zone)

	local _source = source

	if Playersdisti[_source] == false then
		  Playersdisti[_source]=false
		  TriggerClientEvent('esx:showNotification', _source, '~r~Sortez et revenez dans la zone !')

	else
	  Playersdisti[_source]=true
	  TriggerClientEvent('esx:showNotification', _source, '~g~Action ~w~en cours...')
	  Distil(_source,zone)
	end

end)


RegisterServerEvent('esx_pompiste:stopDistil')
AddEventHandler('esx_pompiste:stopDistil', function()

local _source = source

if Playersdisti[_source] == true then
	 	 Playersdisti[_source] = false
	TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')

else
  	TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~transformer votre raisin')
  	Playersdisti[_source] = true
end
end)
