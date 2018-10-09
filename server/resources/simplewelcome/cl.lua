AddEventHandler("playerSpawned", function(spawn)
 helpText("~b~Bienvenue sur GtaVRp ~g~test ~b~Server")

   TriggerClientEvent("pNotify:SetQueueMax", -1, "lmao", 1)

    for i = 0 , 5 do 
        TriggerClientEvent("pNotify:SendNotification", -1, {
            text = "Testing Notification",
            type = "error",
            queue = "lmao",
            timeout = 300000,
            layout = "bottomCenter"
        })
    end
end)

function helpText(string)
    SetTextComponentFormat("STRING")
    AddTextComponentString(string)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

