local function CommunMode()
	--Hides stuff
	MicroButtonAndBagsBar:Hide()
end
local function FramePosition()
	--Player/target/focus adjust
	PlayerFrame:ClearAllPoints()
	PlayerFrame:SetPoint("TOPLEFT",GetScreenWidth()/5,-GetScreenHeight()/5)
	PlayerFrame.SetPoint = function() end
	PlayerFrame:SetUserPlaced(true)

	TargetFrame:ClearAllPoints()
	TargetFrame:SetPoint("TOPLEFT",GetScreenWidth()/5,-GetScreenHeight()/5)
	TargetFrame.SetPoint = function() end
	TargetFrame:SetUserPlaced(true)

	FocusFrame:ClearAllPoints() 
	FocusFrame:SetPoint("TOPLEFT",GetScreenWidth()/5,-(GetScreenHeight()/5)*2)
	FocusFrame.SetPoint = function() end
	FocusFrame:SetUserPlaced(true)
end

local function HealerMode()
end

local function DpsMode()
end

local function NormalMode()
end

local function ZaalCommands(msg, editbox)
	FramePosition()
	if ( msg == 'healer' ) then
		HealerMode()
	elseif ( msg == 'dps' ) then
		DpsMode()
	else
		NormalMode()
	end
end
CommunMode()

SLASH_ZAAL1, SLASH_ZAAL2 = '/zl', '/zaal'

SlashCmdList["ZAAL"] = ZaalCommands   -- add /zl and /zaal to command list

--Last on raid frames
--LoadAddOn("Blizzard_CompactRaidFrames") CRFSort_Group=function(t1, t2) if UnitIsUnit(t1,"player") then return false elseif UnitIsUnit(t2,"player") then return true else return t1 < t2 end end CompactRaidFrameContainer.flowSortFunc=CRFSort_Group