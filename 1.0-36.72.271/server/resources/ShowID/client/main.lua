
--[[

  Made with love by Cheleber, re-released by ZachDLC.
  You can customize the radious of the message in the middle of the code, by replaceing the value "< 1.5" with any sensible value. (Reccommended = 20)

--]]



RegisterNetEvent('sendMessageShowID')
AddEventHandler('sendMessageShowID', function(id, name1, name2)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {0, 150, 200}, " Fist Name: " .. name1 .." || Last Name: ".. name2 .. " ")
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 1.5 then
    TriggerEvent('chatMessage', "", {0, 150, 200}, " Fist Name: " .. name1 .." || Last Name: ".. name2 .. " ")
  end
end)

