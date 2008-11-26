function onStepIn(cid, item, pos)
    if item.uid == 10001 then
        if getPlayerStorageValue(cid,12341) == -1 then
            setPlayerStorageValue(cid,12341,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Verminor�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Veminor�s spirit.')
        end
    elseif item.uid == 10002 then
        if getPlayerStorageValue(cid,12342) == -1 then
            setPlayerStorageValue(cid,12342,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Infernatil�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Infernatil�s spirit.')
        end
    elseif item.uid == 10003 then
        if getPlayerStorageValue(cid,12343) == -1 then
            setPlayerStorageValue(cid,12343,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Tafariel�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Tafariel�s spirit.')
        end
    elseif item.uid == 10004 then
        if getPlayerStorageValue(cid,12344) == -1 then
            setPlayerStorageValue(cid,12344,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Apocalypse�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Apocalypse�s spirit.')
        end
    elseif item.uid == 10005 then
        if getPlayerStorageValue(cid,12345) == -1 then
            setPlayerStorageValue(cid,12345,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Pumin�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Pumin�s spirit.')
        end

    elseif item.uid == 10006 then
        if getPlayerStorageValue(cid,12346) == -1 then
            setPlayerStorageValue(cid,12346,1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Ashfalor�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Ashfalor�s spirit.')
        end
    elseif item.actionid == 22222 and item.itemid == 5068 then
        if getPlayerStorageValue(cid,12341) == 1 
		and getPlayerStorageValue(cid,12342) == 1 
		and getPlayerStorageValue(cid,12343) == 1 
		and getPlayerStorageValue(cid,12344) == 1 
		and getPlayerStorageValue(cid,12345) == 1 
		and getPlayerStorageValue(cid,12346) == 1 then  
	    doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You absorbed enough energy! You may pass.')
        
			else			
			doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Sorry, but you did not absorb enough energy!')
			doTeleportThing(cid, {x = getPlayerPosition(cid).x, y = getPlayerPosition(cid).y + 1, z = getPlayerPosition(cid).z}, FALSE)
		end
    end
    return 1
end