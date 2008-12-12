function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.itemid == 2782 then
		doTransformItem(itemEx.uid, 2781)
		doDecayItem(itemEx.uid)
		return destroyItem(cid, itemEx, toPosition)
	elseif itemEx.itemid == 1499 then
		doTransformItem(itemEx.uid, 2671)
		doSendAnimatedText(toPosition, '\\o/', 180)
		doDecayItem(itemEx.uid)
		return destroyItem(cid, itemEx, toPosition)
	end
end