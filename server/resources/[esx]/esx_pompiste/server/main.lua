ESX                = nil
local PlayersRecolting = {}
local PlayersDistiling = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'pompiste', -1)
end

TriggerEvent('esx_society:registerSociety', 'pompiste', 'Pompiste', 'society_pompiste', 'society_pompiste', 'society_pompiste', {type = 'private'})

 


local function Recolting(source, zone) 
	if PlayersRecolting[source] == true then
			
			local xPlayer = ESX.GetPlayerFromId(source)
			--local _source = source
			if zone == "recolte" then
				TriggerServerEvent('esx:clientLog', ' dans la zone de recolte') --log for debug
				local itemQuantity = xPlayer.getInventoryItem('petrole').count
				if itemQuantity >= 100 then
					TriggerServerEvent('esx:clientLog', ' plus de place') --log for debug
					 TriggerClientEvent('esx:showNotification', _source, '~r~Vous n\'avez plus de place.')
					 TriggerServerEvent('esx:clientLog', ' send notif') --log for debug
					 PlayersRecolting[_source] = false	
					 return
				else
					TriggerServerEvent('esx:clientLog', ' settimeout1800') --log for debug
					SetTimeout(1800, function()
						TriggerServerEvent('esx:clientLog', ' add player inventory petrol +1') --log for debug
						xPlayer.addInventoryItem('petrole', 1)	
						TriggerServerEvent('esx:clientLog', ' notif') --log for debug
						TriggerClientEvent('esx:showNotification', _source, 'Vous avez récolté '.. Config.ItemRecolte ..' de pétrol brut.')
						TriggerServerEvent('esx:clientLog', ' loop') --log for debug
						Recolting(source, zone)
						TriggerServerEvent('esx:clientLog', ' loop recolte') --log for debug
	  			end)
			end
	  	end
	end
end


RegisterServerEvent('esx_pompiste:starRecolting')
AddEventHandler('esx_pompiste:startRecolting', function(zone)
	local _source = source

	if PlayersRecolting[_source] == false then
	  TriggerClientEvent('esx:showNotification', _source, '~r~Sortez et revenez dans la zone !')
	  PlayersRecolting[_source] = false
	else
	  PlayersRecolting[_source] = true
	  TriggerClientEvent('esx:showNotification', _source, '~g~Action ~w~en cours...')
	  Recolting(_source,zone)
	end
end)

RegisterServerEvent('esx_pompiste:stopRecolting')
AddEventHandler('esx_pompiste:stopRecolting', function()
	local _source = source

	if PlayersRecolting[_source] == true then
  		PlayersRecolting[_source] = false
  		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
	else
  		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~récolter')
  		PlayersRecolting[_source] = true
	end
end)





local function Distiling(source, zone) 

 
		if PlayersDistiling[source] == true then

			local xPlayer = ESX.GetPlayerFromId(source)
			if zone == "disti" then
				TriggerServerEvent('esx:clientLog', 'dans la zone de distil') --log for debug
			local itemQuantity = xPlayer.getInventoryItem('petrole').count

				if itemQuantity <= 0 then
				  TriggerServerEvent('esx:clientLog', 'TriggerServerEvent(esx:showNotification:Distiling) --->send') --log for debug
				  TriggerClientEvent('esx:showNotification', _source, '~r~Vous n\'avez plus de pétrol brut à distiller.')
				  TriggerServerEvent('esx:clientLog', 'TriggerServerEvent(esx:showNotification:Distiling) --->send2') --log for debug
				  --PlayersDistiling[_source] = false
				  return
				else
					 SetTimeout(1800, function()
					 TriggerServerEvent('esx:clientLog', 'xPlayer.removeInventoryItem(petrole, 1) --->send') --log for debug
					 xPlayer.removeInventoryItem('petrole', 1)
					--xPlayer.addInventoryItem('essence', math.floor(Config.ItemDistiled/2))
					 xPlayer.addInventoryItem('essence', 5)
					 TriggerServerEvent('esx:clientLog', ' xPlayer.addInventoryItem(essence, 5) --->send2') --log for debug
					 TriggerClientEvent('esx:showNotification', _source, 'Vous avez distillé '.. Config.ItemDistiled ..' de pétrol brut.')
					 TriggerServerEvent('esx:clientLog', ' notif') --log for debug
					 Distil(source, zone)
					 TriggerServerEvent('esx:clientLog', ' loop distil') --log for debug
					 end)
	 			end
			end
		end
end



RegisterServerEvent('esx_pompiste:startDistiling')
AddEventHandler('esx_pompiste:startDistiling', function(zone)

	local _source = source

	if PlayersDistiling[_source] == false then
		  PlayersDistiling[_source]=false
		  TriggerClientEvent('esx:showNotification', _source, '~r~Sortez et revenez dans la zone !')

	else
	  PlayersDistiling[_source]=true
	  TriggerClientEvent('esx:showNotification', _source, '~g~Action ~w~en cours...')
	  Distil(_source,zone)
	end

end)


RegisterServerEvent('esx_pompiste:stopDistiling')
AddEventHandler('esx_pompiste:stopDistiling', function()

local _source = source

if PlayersDistiling[_source] == true then
	 	 PlayersDistiling[_source] = false
	TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')

else
  	TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~transformer votre raisin')
  	PlayersDistiling[_source] = true
end
end)
