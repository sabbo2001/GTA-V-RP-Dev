
--[[

  Made with love by Cheleber, re-released by ZachDLC

--]]



AddEventHandler('chatMessage', function(source, color, msg)
	cm = stringsplit(msg, " ")
	if cm[1] == "/showid" then
		CancelEvent()
		if tablelength(cm) == 3 then
			local firsname = tostring(cm[2])
			local lastname = tostring(cm[3])
		    TriggerClientEvent("sendMessageShowID", -1, source, firsname, lastname)
		else
		    TriggerClientEvent('chatMessage', source, "Use the following format:", {255, 0, 0}, "/showid [First Name] [Last Name]")
	    end
	end	
	
end)


  
function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end



function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end
