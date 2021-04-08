ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
  
AddEventHandler('playerSpawned', function(spawn)
	TriggerServerEvent('javi-qrr:getJob')
end)
  
RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	TriggerServerEvent('javi-qrr:getJob')
end)
  
TriggerServerEvent('javi-qrr:getJob')
  
RegisterNetEvent('javi-qrr:setJob')
AddEventHandler('javi-qrr:setJob',function(theJob)
   job = theJob
end)
  

Citizen.CreateThread(function()
	while true do 
		Citizen.Wait(100)
		if job == 'police' or job == 'sheriff' or job == 'fbi' then 
			if IsControlJustReleased(0, 121) then 
				ExecuteCommand("entorno 10-20")
				ESX.ShowNotification("Has enviado tu ~b~10-20")
			end
		end
	end
end)
