function onUse(cid, item, frompos, item2, topos)

	-- uniqueid da alavanca
	uniqueID = 7000

	firstFloor = {x = 1912, y = 1229, z = 9} -- local para aonde o teleport ir� levar no primeiro andar
	thirdFloor = {x = 1912, y = 1229, z = 11} -- local para aonde o teleport ir� levar no segundo andar
	
	elevadorPos = {x = 1912, y = 1230, z = 10, stackpos=1} -- posi��o aonde ser� criado/deletado o teleport do elevador

	if item.uid == uniqueID and item.itemid == 1945 then
		print("O jogador " .. getPlayerName(cid) .. " subiu no elevador.")
		doRemoveItem(getThingfromPos(elevadorPos).uid)
		doCreateTeleport(1387,firstFloor,elevadorPos)
		doTransformItem(item.uid,item.itemid+1)
		doPlayerSendTextMessage(cid,22,'Agora o elevador ir� subir.')
	elseif item.uid == uniqueID and item.itemid == 1946 then
		print("O jogador " .. getPlayerName(cid) .. " deceu no elevador.")
		doRemoveItem(getThingfromPos(elevadorPos).uid)
		doCreateTeleport(1387,thirdFloor,elevadorPos)
		doTransformItem(item.uid,item.itemid-1)
		doPlayerSendTextMessage(cid,22,'Agora o elevador ir� descer.')
	else
		doPlayerSendCancel(cid,"Sorry, not possible.")
	end
	
	return TRUE
end 