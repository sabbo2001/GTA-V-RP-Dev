ESX                             = nil
local PlayerData                = {}
local GUI                       = {}
GUI.Time                        = 0
local HasAlreadyEnteredMarker   = false
local LastZone                  = nil
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local OnJob                     = false
local TargetCoords              = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function OpenTextilBossMenu()
	if Config.EnablePlayerManagement and PlayerData.job ~= nil then

		local elements = {
			{label = 'Retirer argent société', value = 'withdraw_society_money'},
  			{label = 'Déposer argent ',        value = 'deposit_money'},
  			{label = 'Blanchir argent',        value = 'wash_money'},
			{label = 'deposer dans le coffre ',        value = 'put_stock'},
			{label = 'Retirer du coffre',        value = 'get_stock'}
		}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'textil_boss',
			{
				title    = 'Couturier',
				elements = elements
			},
			function(data, menu)	

				if data.current.value == 'withdraw_society_money' and PlayerData.job.grade_name == 'boss' then
					ESX.UI.Menu.Open(
						'dialog', GetCurrentResourceName(), 'withdraw_society_money_amount',
						{
							title = 'Montant du retrait'
						},
						function(data, menu)
							local amount = tonumber(data.value)
							if amount == nil then
								ESX.ShowNotification('Montant invalide')
							else
								menu.close()
								TriggerServerEvent('esx_society:withdrawMoney', 'textil', amount)
							end
						end,
						function(data, menu)
							menu.close()
						end
					)
				end

				if data.current.value == 'deposit_money' and PlayerData.job.grade_name == 'boss' then
					ESX.UI.Menu.Open(
						'dialog', GetCurrentResourceName(), 'deposit_money_amount',
						{
							title = 'Montant du dépôt'
						},
						function(data, menu)
							local amount = tonumber(data.value)
							if amount == nil then
								ESX.ShowNotification('Montant invalide')
							else
								menu.close()
								TriggerServerEvent('esx_society:depositMoney', 'textil', amount)
							end
						end,
						function(data, menu)
							menu.close()
						end
					)
				end

				if data.current.value == 'wash_money' and PlayerData.job.grade_name == 'boss' then
					ESX.UI.Menu.Open(
						'dialog', GetCurrentResourceName(), 'wash_money_amount',
						{
							title = 'Montant à blanchir'
						},
						function(data, menu)
							local amount = tonumber(data.value)
							if amount == nil then
								ESX.ShowNotification('Montant invalide')
							else
								menu.close()
								TriggerServerEvent('esx_society:washMoney', 'textil', amount)
							end
						end,
						function(data, menu)
							menu.close()
						end
					)
				end
				
				if data.current.value == 'put_stock' then
					OpenPutStocksMenu()
				end	

				if data.current.value == 'get_stock' then
					OpenGetStocksMenu()
				end	
			end,
			function(data, menu)
				menu.close()
				CurrentAction     = 'textil_boss_menu'
				CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu patron.'
				CurrentActionData = {}
			end
		)
	end
end

function OpenTextilVehicleMenu()

	local elements = {
		{label = 'Camionette', value = 'youga2'}				
	}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'spawn_vehicle',
			{
				title    = 'Véhicule de service',
				elements = elements
			},
			function(data, menu)
				for i=1, #elements, 1 do							
					if Config.MaxInService == -1 then
						local playerPed = GetPlayerPed(-1)
						local coords    = Config.Zones.VehicleSpawnPoint.Pos
						ESX.Game.SpawnVehicle(data.current.value, coords, 270.0, function(vehicle)
							if data.current.value == "proute" then
            					ESX.Game.SpawnVehicle("trailers", coords, 270.0, function(trailer)
            					    AttachVehicleToTrailer(vehicle, trailer, 1.1)
            					end)
            				end
							TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
							plate = GetVehicleNumberPlateText(vehicle)
							plate = string.gsub(plate, " ", "")
							TriggerEvent('esx_vehiclemenu:updatePlayerCars', "add", plate)
						end)
						break
					else
						ESX.TriggerServerCallback('esx_service:enableService', function(canTakeService, maxInService, inServiceCount)
							if canTakeService then
								local playerPed = GetPlayerPed(-1)
								local coords    = Config.Zones.VehicleSpawnPoint.Pos
								ESX.Game.SpawnVehicle(data.current.value, coords, 270.0, function(vehicle)
									if data.current.trailer ~= "none" then
          									ESX.Game.SpawnVehicle(data.current.rem, coords, 90.0, function(trailer)
           									AttachVehicleToTrailer(vehicle, trailer, 1.1)
	   									end)
   									end
									TaskWarpPedIntoVehicle(playerPed,  vehicle, -1)
								end)
							else
								ESX.ShowNotification('Service complet : ' .. inServiceCount .. '/' .. maxInService)
							end
						end, 'textil')
						break
					end
				end						
				menu.close()		

		end,
	function(data, menu)
		menu.close()
		CurrentAction     = 'spawn_vehicle_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au Garage.'
		CurrentActionData = {}
	end
	)
end

function OpenTextilCloakroomtMenu()

	local elements = {
		{label = 'Tenue de travail', value = 'cloakroom'},
		{label = 'Tenue civile', value = 'cloakroom2'}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'textil_cloakroom',
		{
			title    = 'Vestiaire',
			elements = elements
		},
		function(data, menu)

			if data.current.value == 'cloakroom' then
			menu.close()
			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)

   				if skin.sex == 0 then
       				TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
   				else
       				TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)
   				end
    
			end)
		end

		if data.current.value == 'cloakroom2' then
			menu.close()
			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
   				TriggerEvent('skinchanger:loadSkin', skin)
   
			end)
		end

		end,
	function(data, menu)
		menu.close()
		CurrentAction     = 'textil_cloakroom_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au véstiaire.'
		CurrentActionData = {}
	end
	)
end

function OpenMobileTextilActionsMenu()

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'mobile_textil_actions',
		{
			title    = 'Couturier',
			elements = {
				{label = 'Facturation', value = 'billing'}
			}
		},
		function(data, menu)
			if data.current.value == 'billing' then
				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'billing',
					{
						title = 'Montant de la facture'
					},
					function(data, menu)
						local amount = tonumber(data.value)
						if amount == nil then
							ESX.ShowNotification('Montant invalide')
						else							
							menu.close()							
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
							if closestPlayer == -1 or closestDistance > 3.0 then
								ESX.ShowNotification('Aucun joueur à proximité')
							else
								TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_textil', 'Couturier', amount)
							end
						end
					end,
				function(data, menu)
					menu.close()
				end
				)
			end

		end,
	function(data, menu)
		menu.close()
	end
	)
end


function OpenGetStocksMenu()

	ESX.TriggerServerCallback('esx_textil:getStockItems', function(items)

		print(json.encode(items))

		local elements = {}

		for i=1, #items, 1 do
			table.insert(elements, {label = 'x' .. items[i].count .. ' ' .. items[i].label, value = items[i].name})
		end

	  ESX.UI.Menu.Open(
	    'default', GetCurrentResourceName(), 'stocks_menu',
	    {
	      title    = 'Bucheron Stock',
	      elements = elements
	    },
	    function(data, menu)

	    	local itemName = data.current.value

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
					{
						title = 'Quantité'
					},
					function(data2, menu2)

						local count = tonumber(data2.value)

						if count == nil then
							ESX.ShowNotification('Quantité invalide')
						else
							menu2.close()
				    	menu.close()
				    	OpenGetStocksMenu()

							TriggerServerEvent('esx_textil:getStockItem', itemName, count)
						end

					end,
					function(data2, menu2)
						menu2.close()
					end
				)

	    end,
	    function(data, menu)
	    	menu.close()
	    end
	  )

	end)

end

function OpenPutStocksMenu()

ESX.TriggerServerCallback('esx_textil:getPlayerInventory', function(inventory)

		local elements = {}

		for i=1, #inventory.items, 1 do

			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
			end

		end

	  ESX.UI.Menu.Open(
	    'default', GetCurrentResourceName(), 'stocks_menu',
	    {
	      title    = 'Inventaire',
	      elements = elements
	    },
	    function(data, menu)

	    	local itemName = data.current.value

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
					{
						title = 'Quantité'
					},
					function(data2, menu2)

						local count = tonumber(data2.value)

						if count == nil then
							ESX.ShowNotification('Quantité invalide')
						else
							menu2.close()
				    	menu.close()
				    	OpenPutStocksMenu()

							TriggerServerEvent('esx_textil:putStockItems', itemName, count)
						end

					end,
					function(data2, menu2)
						menu2.close()
					end
				)

	    end,
	    function(data, menu)
	    	menu.close()
	    end
	  )

	end)

end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

AddEventHandler('esx_textil:hasEnteredMarker', function(zone)
	if zone == 'Bossroom' then
		CurrentAction     = 'textil_boss_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu patron.'
		CurrentActionData = {}
	end
	if zone == 'Cloakroom' then
		CurrentAction     = 'textil_cloakroom_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au véstiaire.'
		CurrentActionData = {}
	end
	if zone == 'Whool' then
		CurrentAction     = 'harvest_whool'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour récolter de la laine.'
		CurrentActionData = {}
	end
	if zone == 'CuttedWhool' then
		CurrentAction     = 'transform_cuttedwhool'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour traiter la laine.'
		CurrentActionData = {}
	end
	if zone == 'Clothe' then
		CurrentAction     = 'package_whool'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour Fabriquer des vetements'
		CurrentActionData = {}
	end
	if zone == 'Delivery' then
		CurrentAction     = 'resell'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour vendre des vetements'
		CurrentActionData = {}
	end
	if zone == 'VehicleSpawner' then
		CurrentAction     = 'spawn_vehicle_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au garage.'
		CurrentActionData = {}
	end
	if zone == 'VehicleDeleter' then
		local playerPed = GetPlayerPed(-1)
		if IsPedInAnyVehicle(playerPed,  false) then
			CurrentAction     = 'delete_vehicle'
			CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour ranger le véhicule.'
			CurrentActionData = {}
		end
	end
end)

AddEventHandler('esx_textil:hasExitedMarker', function(zone)

	if zone == 'Whool' then
		TriggerServerEvent('esx_textil:stopHarvestWhool')
	end

	if zone == 'CuttedWhool' then
		TriggerServerEvent('esx_textil:stopCutingWhool')
	end

	if zone == 'Clothe' then
		TriggerServerEvent('esx_textil:stopPackageWhool')
	end

	if zone == 'Delivery' then
		TriggerServerEvent('esx_textil:stopResell')
	end

	CurrentAction = nil
	ESX.UI.Menu.CloseAll()
end)


-- Create Blips
Citizen.CreateThread(function()		
	local blip = AddBlipForCoord(Config.Zones.Cloakroom.Pos.x, Config.Zones.Cloakroom.Pos.y, Config.Zones.Cloakroom.Pos.z)
	SetBlipSprite (blip, 366)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 1.0)
	SetBlipColour (blip, 5)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Usine")
	EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()		
	local blip = AddBlipForCoord(Config.Zones.Whool.Pos.x, Config.Zones.Whool.Pos.y, Config.Zones.Whool.Pos.z)
	SetBlipSprite (blip, 366)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 1.0)
	SetBlipColour (blip, 5)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Champ Laine")
	EndTextCommandSetBlipName(blip)
end)

-- Display markers
Citizen.CreateThread(function()
	while true do		
		Wait(0)		
		if PlayerData.job ~= nil and PlayerData.job.name == 'textil' then

			local coords = GetEntityCoords(GetPlayerPed(-1))
			
			for k,v in pairs(Config.Zones) do
				if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
					DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
				end
			end
		end
	end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()
	while true do
		Wait(0)
		if PlayerData.job ~= nil and PlayerData.job.name == 'textil' then
			local coords      = GetEntityCoords(GetPlayerPed(-1))
			local isInMarker  = false
			local currentZone = nil
			for k,v in pairs(Config.Zones) do
				if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
					isInMarker  = true
					currentZone = k
				end
			end
			if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
				HasAlreadyEnteredMarker = true
				LastZone                = currentZone
				TriggerEvent('esx_textil:hasEnteredMarker', currentZone)
			end
			if not isInMarker and HasAlreadyEnteredMarker then
				HasAlreadyEnteredMarker = false
				TriggerEvent('esx_textil:hasExitedMarker', LastZone)
			end
		end
	end
end)

-- Key Controls
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if CurrentAction ~= nil then
            SetTextComponentFormat('STRING')
            AddTextComponentString(CurrentActionMsg)
            DisplayHelpTextFromStringLabel(0, 0, 1, -1)
            if IsControlJustReleased(0, 38) and PlayerData.job ~= nil and PlayerData.job.name == 'textil' then                
                if CurrentAction == 'textil_boss_menu' then
                    ESX.UI.Menu.CloseAll()

					TriggerEvent('esx_society:openBossMenu', 'textil', function(data, menu)

						menu.close()

						CurrentAction     = 'textil_boss_menu'
						CurrentActionMsg  = _U('open_bossmenu')
						CurrentActionData = {}

					end)
                end
                if CurrentAction == 'textil_cloakroom_menu' then
                    OpenTextilCloakroomtMenu()
                end
                if CurrentAction == 'spawn_vehicle_menu' then
                    OpenTextilVehicleMenu()
                end
                if CurrentAction == 'harvest_whool' then
                    TriggerServerEvent('esx_textil:startHarvestWhool')
                end
                if CurrentAction == 'transform_cuttedwhool' then
                    TriggerServerEvent('esx_textil:startCutingWhool')
                end
                if CurrentAction == 'package_whool' then
                    TriggerServerEvent('esx_textil:startPackageWhool')
                end
                if CurrentAction == 'resell' then
                    TriggerServerEvent('esx_textil:startResell')
                end
                if CurrentAction == 'delete_vehicle' then
                    local playerPed = GetPlayerPed(-1)
                    local vehicle   = GetVehiclePedIsIn(playerPed,  false)
                    local hash      = GetEntityModel(vehicle)
                    if hash == GetHashKey('youga2') or hash == GetHashKey('youga2') or hash == GetHashKey('youga2') or hash == GetHashKey('youga2') then
                        if Config.MaxInService ~= -1 then
                            TriggerServerEvent('esx_service:disableService', 'textil')
                        end
                        local vehicle = GetVehiclePedIsIn(playerPed, false)
						local plate = GetVehicleNumberPlateText(vehicle)
						plate = string.gsub(plate, " ", "")
						TriggerEvent('esx_vehiclelock:updatePlayerCars', "remove", plate)                     
                        DeleteVehicle(vehicle)
                    else
                        ESX.ShowNotification('Vous ne pouvez ranger que des ~b~véhicules de Couturier~s~.')
                    end
                end
                CurrentAction = nil               
            end
        end

        if IsControlJustReleased(0, 167) and PlayerData.job ~= nil and PlayerData.job.name == 'textil' then
            OpenMobileLumberActionsMenu()
        end
    end
end)