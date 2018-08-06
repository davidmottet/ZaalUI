--Hides stuff
--PlayerFrame:Hide();
--MicroButtonAndBagsBar:Hide() 
--StatusTrackingBarManager:Hide();
--MainMenuBarArtFrame.RightEndCap:Hide();
--MainMenuBarArtFrame.LeftEndCap:Hide();
--UIErrorsFrame:Hide() 
--StanceButton1:SetAlpha(0)
--QuickJoinToastButton:Hide()
--ChatFrameChannelButton:Hide()

--Removes gap
--MainMenuBarArtFrameBackground:ClearAllPoints() 
--MainMenuBarArtFrameBackground:SetPoint("CENTER",0,-23) MainMenuBarArtFrameBackground.SetPoint = function() end

local function HealerMode(  )
  --Player/target/focus adjust
  Display personal
  PlayerFrame:SetAlpha(0)

  TargetFrame:ClearAllPoints()
  TargetFrame:SetPoint("TOPLEFT",GetScreenWidth()/4,-GetScreenHeight()/4)

  FocusFrame:ClearAllPoints() 
  FocusFrame:SetPoint("TOPLEFT",GetScreenWidth()/4,-(GetScreenHeight()/4)*2)
end


local function DpsMode(  )
  --Player/target/focus adjust
  Display personal
  PlayerFrame:SetAlpha(0)

  TargetFrame:ClearAllPoints()
  TargetFrame:SetPoint("TOPLEFT",GetScreenWidth()/4,-GetScreenHeight()/4)

  FocusFrame:ClearAllPoints() 
  FocusFrame:SetPoint("TOPLEFT",GetScreenWidth()/4,-(GetScreenHeight()/4)*2)
end


local function NormalMode(  )
  --Player/target/focus adjust
  Display personal
  PlayerFrame:SetAlpha(1)
end

local function ZaalUICommands( msg, editbox )
  if ( msg == 'healer' ) then
    HealerMode()
  elseif ( msg == 'dps' ) then
    DpsMode()
  else
    NormalMode()
  end
end

<<<<<<< HEAD
FocusFrame:ClearAllPoints() 


FocusFrame:SetPoint("TOPLEFT",387,-530) FocusFrame.SetPoint = function() end



--Adds button to right of Bottombar

--MultiBarLeftButton12:ClearAllPoints()

--MultiBarLeftButton12:SetPoint("LEFT", MultiBarBottomLeftButton12, "RIGHT", 6, 0) MultiBarLeftButton12.SetPoint = function() end
=======
SLASH_ZALL1 = '/zaal'
>>>>>>> 4df9e351429d658713ecd799a10385ad1687d0b5

SlashCmdList["ZAAL"] = ZaalUICommands   -- add /zall command list with argument healer or dps

--Last on raid frames
LoadAddOn("Blizzard_CompactRaidFrames") CRFSort_Group=function(t1, t2) if UnitIsUnit(t1,"player") then return false elseif UnitIsUnit(t2,"player") then return true else return t1 < t2 end end CompactRaidFrameContainer.flowSortFunc=CRFSort_Group

--Sets variables
--SetCVar("useUIScale", 1)
--SetCVar("UIScale", 0.1)
--SetCVar("alwaysShowActionBars", 0)
--SetCVar("showHonorAsExperience", 1)
