----- Entrada POI QUEST
function onStepIn(cid, item, pos) 


	local idKnight = 5541
	local idDruid = 5542
	local idSorc = 5544
	local idPaladin = 5543
	local vocation = getPlayerVocation(cid)
	local NovaPos = {x= 386, y= 447, z= 9}
		
	if item.actionid == idKnight and vocation ~= 4 or vocation ~= 8 then
		doTeleportThing(cid, NovaPos)
		doPlayerSendTextMessage(cid, MSG_INFO_DESCR, "Only knights can walk in this templarium.")
	else
	return true
	end
	if item.actionid == idDruid and vocation ~= 2 or vocation ~= 6 then
		doTeleportTing(cid, NovaPos)
		doPlayerSendTextMessage(cid, MSG_INFO_DESCR, "Only druids can walk in this templarium.")
	else
	return true
	end
	if item.actionid == isSorc and vocation ~= 1 or vocation ~= 5 then
		doTeleportTing(cid, NovaPos)
		doPlayerSendTextMessage(cid, MSG_INFO_DESCR, "Only sorcerers can walk in this templarium.")	
	else
	return true
	end
	if item.actionid == idPaladin and vocation ~= 3 or vocation ~= 7 then
		doTeleportTing(cid, NovaPos)
		doPlayerSendTextMessage(cid, MSG_INFO_DESCR, "Only paladins can walk in this templarium.")
	else
	return true
	end
end