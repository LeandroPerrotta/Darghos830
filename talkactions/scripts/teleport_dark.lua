function onSay(cid, words, param)

	refPos = { x=1837, y=1224, z=7, stackpos=1 } -- Posi��o da referencia daonde o player poder� falar a talk e ela ter efeito
	maxDistPos = 3 -- Quantos SQM o player poder� estar distante da Posi��o da Referencia e a talk ter efeito
	teleportPos = { x=1834, y=1212, z=7} -- Posi��o para aonde o player ser� teleportado
	
	playerpos = getPlayerPosition(cid) -- n�o mecher
	
	if math.max(math.abs(playerpos.x-refPos.x), math.abs(playerpos.y-refPos.y)) < maxDistPos then
	
		doTeleportThing(cid, teleportPos, 1)
		doSendMagicEffect(teleportPos, 10)
		return 0
	end	
end 