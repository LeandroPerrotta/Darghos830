function onUse(cid, item, fromPosition, itemEx, toPosition)
	
	ferumbrasToweRef = {x = 2690, y = 2344, z = 7}
	playerpos = getPlayerPosition(cid)

	if fromPosition.x ~= 65535 then
		doPlayerSendCancel(cid, "Este item s� pode ser usado de dentro de um countainer.")

		return TRUE
	end
	
	if getPlayerStorageValue(cid, 25110) ~= -1 then
		doPlayerSendCancel(cid, "Voc� j� conhece as anota��es deste pergaminho.")

		return TRUE
	end	
	
	if math.max(math.abs(playerpos.x-ferumbrasToweRef.x), math.abs(playerpos.y-ferumbrasToweRef.y)) > 3 then
		doPlayerSendCancel(cid, "Voc� n�o pode usar este item aqui.")
		
		return TRUE
	end
	
	doRemoveItem(item.uid, 1)
	doCreatureSay(cid, "Agora voc� possui o conhecimento das anota��es do mago supremo!", TALKTYPE_ORANGE_1)
	setPlayerStorageValue(cid, 25110, 1) 
	
	return TRUE	
end 