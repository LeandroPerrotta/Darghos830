function onSay(cid, item, frompos, item2, topos)

	xpos1 = {x=2056, y=1864, z=7, stackpos=1}
	xpos2 = {x=2056, y=1866, z=7, stackpos=1}
	xpos3 = {x=2056, y=1868, z=7, stackpos=1}
	xpos4 = {x=2056, y=1870, z=7, stackpos=1}
	ypos5 = {x=2055, y=1864, z=7, stackpos=1}
	ypos6 = {x=2055, y=1866, z=7, stackpos=1}
	ypos7 = {x=2055, y=1868, z=7, stackpos=1}
	ypos8 = {x=2055, y=1870, z=7, stackpos=1}
	zpos9 = {x=2056, y=1865, z=7, stackpos=1}
	zpos10 = {x=2056, y=1867, z=7, stackpos=1}
	zpos11 = {x=2056, y=1869, z=7, stackpos=1}
	zpos12 = {x=2056, y=1871, z=7, stackpos=1}
	upos13 = {x=2055, y=1865, z=7, stackpos=1}
	upos14 = {x=2055, y=1867, z=7, stackpos=1}
	upos15 = {x=2055, y=1869, z=7, stackpos=1}
	upos16 = {x=2055, y=1871, z=7, stackpos=1}
	
    if (getPlayerGroupId(cid) >= 3) then 
		doCreateItem(5607,1,xpos1)
		doCreateItem(5607,1,xpos2)
		doCreateItem(5607,1,xpos3)
		doCreateItem(5607,1,xpos4)
		doCreateItem(5606,1,ypos5)
		doCreateItem(5606,1,ypos6)
		doCreateItem(5606,1,ypos7)
		doCreateItem(5606,1,ypos8)
		doCreateItem(5609,1,zpos9)
		doCreateItem(5609,1,zpos10)
		doCreateItem(5609,1,zpos11)
		doCreateItem(5609,1,zpos12)
		doCreateItem(5608,1,upos13)
		doCreateItem(5608,1,upos14)
		doCreateItem(5608,1,upos15)
		doCreateItem(5608,1,upos16)
	else
	    doPlayerSendCancel(cid, "Puff!")
	end
end
