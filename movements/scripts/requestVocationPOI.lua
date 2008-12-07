function onStepIn(cid, item, pos) 


	local idKnight = 5541
	local idDruid = 5542
	local idSorc = 5544
	local idPaladin = 5543
	local PVoc = getPlayerVocation(cid)
	local NovaPos = {x= 386, y= 447, z= 9}

	if item.actionid == idKnight then
		if PVoc == 4 or PVoc == 8 then
			
		else
		doTeleportThing(cid, NovaPos)
		doSendMagicEffect(NovaPos, 11)
        doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Only knights enter here.')
		doSendAnimatedText(NovaPos, '\\o/', 180)
		end
	end
	
	if item.actionid == idDruid then
		if PVoc == 2 or PVoc == 6 then
			
		else
		doTeleportThing(cid, NovaPos)
		doSendMagicEffect(NovaPos, 11)
        doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Only druids enter here.')
		doSendAnimatedText(NovaPos, '\\o/', 180)
		end
	end	

	if item.actionid == idSorc then
		if PVoc == 1 or PVoc == 5 then
			
		else
		doTeleportThing(cid, NovaPos)
		doSendMagicEffect(NovaPos, 11)
        doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Only sorcerers enter here.')
		doSendAnimatedText(NovaPos, '\\o/', 180)
		end
	end	
	
	if item.actionid == idPaladin then
		if PVoc == 3 or PVoc == 7 then
			
		else
		doTeleportThing(cid, NovaPos)
		doSendMagicEffect(NovaPos, 11)
         doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Only paladins enter here.')
		doSendAnimatedText(NovaPos, '\\o/', 180)
		 end
	end
end