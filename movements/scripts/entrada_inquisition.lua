function onStepIn(cid, item, pos) 

	local valueEnter = getPlayerStorageValue(cid, 10103)
	local valueStat = getPlayerStorageValue(cid, 10102)
	local pos1 = {x= 2151, y= 2087,z= 9}
	local pos2 = {x= 2144, y= 2093,z= 9}
	local id1 = 10103
	local id2 = 10102
	
	if item.ActionID == id1 then
		if valueEnter == 0 or valueEnter == -1 then
			doSummonCreature("Grim Reaper", pos1)
			doSummonCreature("Grim Reaper", pos2)
			doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Warning! This is The Inquisition Quest.')
		else
		return 0
		end
	end
	local nPOS = {x= 2135, y= 2092,z= 9}
	if item.ActionID == id2 then
		doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Sorry, you dont have access to the Inquisition Quest!')
		doTeleportThing(cid, nPOS)
		doSendMagicEffect(nPOS,11)
	end
	
end