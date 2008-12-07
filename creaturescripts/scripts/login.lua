function onLogin(cid)
	registerCreatureEvent(cid, "PlayerDeath")	
	
	local newsValue = getPlayerStorageValue(cid,78444)
	local message = 'Hoje 07/12 domingo, foi adicionado um pack de corre��es ao servidor.\nApartir de agora os monstros da POI(Pits of Inferno quest)\nestar�o dando 60% a mais de experi�ncia. \nE com essa corre��o foi corrigido tamb�m o bug nos fogos da entrada da POI\nCujos eram arrastados at� as escadas fazendo players morrerem.\nSegue abaixo a lista das novas experi�ncias:\n\nSpectre [Exp Atual: 1350 | Nova Exp: 2160]\nDiabolic Imp [Exp Atual: 1950 | Nova Exp: 3120]\nDefiler [Exp Atual: 2500 | Nova Exp: 4000]\nDestroyer [Exp Atual: 2000 | Nova Exp: 3200]\nHellfire Fighter [Exp Atual: 2200 | Nova Exp: 3520]\nPlaguesmith [Exp Atual: 3000 | Nova Exp: 4800]\nNightmare [Exp Atual: 2150 | Nova Exp: 3440]\nPhantasm [Exp Atual: 3300 | Nova Exp: 5280]\nBetrayed Wraith [Exp Atual: 3000 | Nova Exp: 4800]\nDark Torturer [Exp Atual: 3500 | Nova Exp: 5600]\nBlightwalker [Exp Atual: 3350 | Nova Exp: 5360]\nHand of Cursed Fate [Exp Atual: 3850 | Nova Exp: 6160]\nHellhound [Exp Atual: 4350 | Nova Exp: 6960]\n\n\nAtenciosamente,\nUltraXSoft Team.'
	
	if newsValue == 0 or newsValue == -1 then
	
	doPlayerPopupFYI(cid, message)
	setPlayerStorageValue(cid,78444,1)
	end
	
	if math.random(1, 100000) <= 400 then
		local randomNumber = math.random(1, 2)

		if randomNumber == 1 then
			broadcastMessage("Saiba mais sobre o World of Darghos acessando o nosso website! -> www.darghos.com",MESSAGE_STATUS_WARNING)	
		elseif randomNumber == 2 then
			broadcastMessage("Adquira agora mesmo sua premium account e desfrute ao m�ximo do Darghos! Maiores informa��es -> ot.darghos.com/about.php?subtopic=getpremium",MESSAGE_STATUS_WARNING)	
		end
	end
	
--[[	globalStorageSave = 255
	
	if getGlobalStorageValue(globalStorageSave) < os.time() or getGlobalStorageValue(globalStorageSave) == nil then
		setGlobalStorageValue(globalStorageSave, os.time() + (60 * 60))		
		local saveTime1 = os.time()
        broadcastMessage("Sistema pausado para salvamento, aguarde um momento...", MESSAGE_STATUS_CONSOLE_BLUE)
		saveData()
		local saveTime2 = os.time()
		local saveDataTime = os.difftime (saveTime2, saveTime1)
		broadcastMessage("Sistema salvo com sucesso em ".. saveDataTime .. " segundo(s)!", MESSAGE_STATUS_CONSOLE_BLUE)
		print("AUTO SERVER SAVE... [Salvo em ".. saveDataTime .."s]")	
	end ]]--
	
	return TRUE
end