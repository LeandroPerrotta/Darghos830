function onStepIn(cid, item, pos)
	
	if item.actionid == 25110 then
	
		queststatus = getPlayerStorageValue(cid,25110)
		if queststatus ~= 1 then
			doPlayerSendCancel(cid, "Somente quem conhecer as anota��es do mago supremo poder� passar.")
			doMoveCreature(cid, 2)
		end
	end		
end 