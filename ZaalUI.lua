local function CommunMode()
	--Hides stuff
	MicroButtonAndBagsBar:Hide() 

	--Player/target/focus adjust
	TargetFrame:ClearAllPoints()
	TargetFrame:SetPoint("TOPLEFT",GetScreenWidth()/5,-GetScreenHeight()/5) TargetFrame.SetPoint = function() end

	FocusFrame:ClearAllPoints() 
	FocusFrame:SetPoint("TOPLEFT",GetScreenWidth()/5,-(GetScreenHeight()/5)*2) FocusFrame.SetPoint = function() end
end

local function HealerMode()
end

local function DpsMode()
	PlayerFrame:SetAlpha(0)
end

local function NormalMode()
	PlayerFrame:SetAlpha(1)
end

local function ZaalCommands(msg, editbox)
	CommunMode()
	if ( msg == 'healer' ) then
		HealerMode()
	elseif ( msg == 'dps' ) then
		DpsMode()
	else
		NormalMode()
	end
end

SLASH_ZAAL1, SLASH_ZAAL2 = '/zl', '/zaal'

SlashCmdList["ZAAL"] = ZaalCommands   -- add /zl and /zaal to command list

--Last on raid frames
LoadAddOn("Blizzard_CompactRaidFrames") CRFSort_Group=function(t1, t2) if UnitIsUnit(t1,"player") then return false elseif UnitIsUnit(t2,"player") then return true else return t1 < t2 end end CompactRaidFrameContainer.flowSortFunc=CRFSort_Group