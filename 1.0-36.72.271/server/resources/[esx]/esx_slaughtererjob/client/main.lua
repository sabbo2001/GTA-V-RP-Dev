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

function OpenSlaughterBossMenu()
	if Config.EnablePlayerManagement and PlayerData.job ~= nil  then

		local elements = {
			{label = 'Retirer argent société', value = 'withdraw_society_money'},
  			{label = 'Déposer argent ',        value = 'deposit_money'},
  			{label = 'Blanchir argent',        value = 'wash_money'},
			{label = 'deposer dans le coffre ',        value = 'put_stock'},
			{label = 'Retirer du coffre',        value = 'get_stock'}
		}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'slaughter_boss',
			{
				title    = 'Abateur',
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
								TriggerServerEvent('esx_society:withdrawMoney', 'slaughterer', amount)
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
								TriggerServerEvent('esx_society:depositMoney', 'slaughterer', amount)
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
								TriggerServerEvent('esx_society:washMoney', 'slaughterer', amount)
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
				CurrentAction     = 'slaughter_boss_menu'
				CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu patron.'
				CurrentActionData = {}
			end
		)
	end
end

function OpenSlaughterVehicleMenu()

	local elements = {
		{label = 'Benson', value = 'benson'}				
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
					end, 'slaughterer')
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

function OpenSlaughterCloakroomtMenu()

	local elements = {
		{label = 'Tenue de travail', value = 'cloakroom'},
		{label = 'Tenue civile', value = 'cloakroom2'}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'slaughter_cloakroom',
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
		CurrentAction     = 'slaughter_cloakroom_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au vestiaire.'
		CurrentActionData = {}
	end
	)
end

function OpenMobileSlaughterActionsMenu()

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'mobile_slaughter_actions',
		{
			title    = 'Abateur',
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
								TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_slaughterer', 'Abateur', amount)
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

	ESX.TriggerServerCallback('esx_slaughtererjob:getStockItems', function(items)

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

							TriggerServerEvent('esx_slaughtererjob:getStockItem', itemName, count)
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

ESX.TriggerServerCallback('esx_slaughtererjob:getPlayerInventory', function(inventory)

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

							TriggerServerEvent('esx_slaughtererjob:putStockItems', itemName, count)
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

AddEventHandler('esx_slaughtererjob:hasEnteredMarker', function(zone)
	if zone == 'Bossroom' then
		CurrentAction     = 'slaughter_boss_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu patron.'
		CurrentActionData = {}
	end
	if zone == 'Cloakroom' then
		CurrentAction     = 'slaughter_cloakroom_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au vestiaire.'
		CurrentActionData = {}
	end
	if zone == 'AliveChicken' then
		CurrentAction     = 'harvest_chicken'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour attrapper des poulets vivants.'
		CurrentActionData = {}
	end
	if zone == 'TransformChicken' then
		CurrentAction     = 'transform_chicken'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour dépecer les poulets.'
		CurrentActionData = {}
	end
	if zone == 'PackageChicken' then
		CurrentAction     = 'package_chicken'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour conditionner le poulet en barquette.'
		CurrentActionData = {}
	end
	if zone == 'Delivery' then
		CurrentAction     = 'resell'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour livrer les barquettes de poulet.'
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

AddEventHandler('esx_slaughtererjob:hasExitedMarker', function(zone)

	if zone == 'AliveChicken' then
		TriggerServerEvent('esx_slaughtererjob:stopHarvestChicken')
	end

	if zone == 'TransformChicken' then
		TriggerServerEvent('esx_slaughtererjob:stopTransformingChicken')
	end

	if zone == 'PackageChicken' then
		TriggerServerEvent('esx_slaughtererjob:stopPackageChicken')
	end

	if zone == 'Delivery' then
		TriggerServerEvent('esx_slaughtererjob:stopResell')
	end

	CurrentAction = nil
	ESX.UI.Menu.CloseAll()
end)

-- RegisterNetEvent('esx_phone:loaded')
-- AddEventHandler('esx_phone:loaded', function(phoneNumber, contacts)
	-- local specialContact = {
		-- name       = 'Abateur',
		-- number     = 'slaughterer',
		-- base64Icon = 'data:image/png;base64,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'
		-- }
	-- TriggerEvent('esx_phone:addSpecialContact', specialContact.name, specialContact.number, specialContact.base64Icon)
-- end)

-- Create Blips
Citizen.CreateThread(function()		
	local blip = AddBlipForCoord(Config.Zones.Cloakroom.Pos.x, Config.Zones.Cloakroom.Pos.y, Config.Zones.Cloakroom.Pos.z)
	SetBlipSprite (blip, 237)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 1.0)
	SetBlipColour (blip, 5)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Dépôt Abateur")
	EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()		
	local blip = AddBlipForCoord(Config.Zones.AliveChicken.Pos.x, Config.Zones.AliveChicken.Pos.y, Config.Zones.AliveChicken.Pos.z)
	SetBlipSprite (blip, 237)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 1.0)
	SetBlipColour (blip, 5)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Abbatoir")
	EndTextCommandSetBlipName(blip)
end)

-- Display markers
Citizen.CreateThread(function()
	while true do		
		Wait(0)		
		if PlayerData.job ~= nil and PlayerData.job.name == 'slaughterer' then

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
		if PlayerData.job ~= nil and PlayerData.job.name == 'slaughterer' then
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
				TriggerEvent('esx_slaughtererjob:hasEnteredMarker', currentZone)
			end
			if not isInMarker and HasAlreadyEnteredMarker then
				HasAlreadyEnteredMarker = false
				TriggerEvent('esx_slaughtererjob:hasExitedMarker', LastZone)
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
            if IsControlJustReleased(0, 38) and PlayerData.job ~= nil and PlayerData.job.name == 'slaughterer' then                
                if CurrentAction == 'slaughter_boss_menu' then
                    ESX.UI.Menu.CloseAll()

					TriggerEvent('esx_society:openBossMenu', 'slaughter', function(data, menu)

						menu.close()

						CurrentAction     = 'slaughter_boss_menu'
						CurrentActionMsg  = _U('open_bossmenu')
						CurrentActionData = {}

					end)
                end
                if CurrentAction == 'slaughter_cloakroom_menu' then
                    OpenSlaughterCloakroomtMenu()
                end
                if CurrentAction == 'spawn_vehicle_menu' then
                    OpenSlaughterVehicleMenu()
                end
                if CurrentAction == 'harvest_chicken' then
                    TriggerServerEvent('esx_slaughtererjob:startHarvestChicken')
                end
                if CurrentAction == 'transform_chicken' then
                    TriggerServerEvent('esx_slaughtererjob:startTransformingChicken')
                end
                if CurrentAction == 'package_chicken' then
                    TriggerServerEvent('esx_slaughtererjob:startPackageChicken')
                end
                if CurrentAction == 'resell' then
                    TriggerServerEvent('esx_slaughtererjob:startResell')
                end
                if CurrentAction == 'delete_vehicle' then
                    local playerPed = GetPlayerPed(-1)
                    local vehicle   = GetVehiclePedIsIn(playerPed,  false)
                    local hash      = GetEntityModel(vehicle)
                    if hash == GetHashKey('benson') then
                        if Config.MaxInService ~= -1 then
                            TriggerServerEvent('esx_service:disableService', 'slaughterer')
                        end
                        local vehicle = GetVehiclePedIsIn(playerPed, false)
						local plate = GetVehicleNumberPlateText(vehicle)
						plate = string.gsub(plate, " ", "")
						TriggerEvent('esx_vehiclelock:updatePlayerCars', "remove", plate)                     
                        DeleteVehicle(vehicle)
                    else
                        ESX.ShowNotification('Vous ne pouvez ranger que des ~b~véhicules d\'Abateur~s~.')
                    end
                end
                CurrentAction = nil               
            end
        end

        if IsControlJustReleased(0, 167) and PlayerData.job ~= nil and PlayerData.job.name == 'slaughterer' then
            OpenMobileSlaughterActionsMenu()
        end
    end
end)