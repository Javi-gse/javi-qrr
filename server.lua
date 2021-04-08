ESX  = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('javi-qrr:getJob')
AddEventHandler('javi-qrr:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('javi-qrr:setJob', xPlayers[i],xPlayer.job.name)
		end
	end
end)
