function SuBiDoCommand(cmd) 
  myFrame = getglobal("SpeedInfoFrame"); 
  if(not myFrame:IsShown()) then 
    myFrame:Show(); 
  else 
    myFrame:Hide(); 
  end 
end 

function SuBiDoLoad() 
  --getglobal("SpeedInfoFrame"):Hide(); 
  DEFAULT_CHAT_FRAME:AddMessage("SuBiDo is Loaded!"); 
  SLASH_SUBIDO1 = "/subido"; 
  SLASH_SUBIDO2 = "/sbd"; 
  SlashCmdList["SUBIDO"] = SuBiDoCommand; 
end 

function rate(spd)
  return math.floor(spd * 100 / 7 + 0.5)..'%'
end

function SuBiDoFrameUpdate() 
  textSpeed = getglobal("SpeedInfoFrameTextSpeed"); 
  textGSpeed = getglobal("SpeedInfoFrameTextGSpeed"); 
  textFSpeed = getglobal("SpeedInfoFrameTextFSpeed"); 
  textSSpeed = getglobal("SpeedInfoFrameTextSSpeed"); 
  sp, gsp, fsp, ssp = GetUnitSpeed('player')
  stmp = '%s Speed:\t%0.2f yard/s | %s'
  textSpeed:SetText(string.format(stmp, 'Current', sp, rate(sp))); 
  textGSpeed:SetText(string.format(stmp, 'Ground', gsp, rate(gsp))); 
  textFSpeed:SetText(string.format(stmp, 'Flight', fsp, rate(fsp))); 
  textSSpeed:SetText(string.format(stmp, 'Swimming', ssp, rate(ssp))); 
end
