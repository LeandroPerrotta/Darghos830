function onKill(cid, target)
		
	local pLevel = getPlayerLevel(target)	
		
	if isPlayer(cid) == 1 and isPlayer(target) == 1 then
		if pLevel >= 8 and pLevel <= 50 then
			doCreatureSay(cid, "Low Kill!", TALKTYPE_ORANGE_1)
		elseif pLevel >= 51 and pLevel <= 100 then
			doCreatureSay(cid, "Good Kill!", TALKTYPE_ORANGE_1)
		elseif pLevel >= 101 then
			doCreatureSay(cid, "HeadShot!", TALKTYPE_ORANGE_1)
		end
	end

end