function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.itemid >= 2698 and itemEx.itemid <= 2708 or itemEx.itemid == 2697 then
		if item.itemid ~= 2697 then
			if math.random(1, (1000 + (getPlayerSkill(cid, SKILL_AXE) / 100))) <= getPlayerSkill(cid, SKILL_AXE) then
				doPlayerAddItem(cid, 5901, 1)
			end
		end
		doSendMagicEffect(toPosition, CONST_ME_HITAREA)
	else
		return FALSE
	end
	return TRUE
end