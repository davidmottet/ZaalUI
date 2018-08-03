--Hides stuff

--StatusTrackingBarManager:Hide();


--MainMenuBarArtFrame.RightEndCap:Hide();


--MainMenuBarArtFrame.LeftEndCap:Hide();


--UIErrorsFrame:Hide() 

--MicroButtonAndBagsBar:Hide() 

--StanceButton1:SetAlpha(0)

--QuickJoinToastButton:Hide()

--ChatFrameChannelButton:Hide()



--Removes gap

--MainMenuBarArtFrameBackground:ClearAllPoints() 


--MainMenuBarArtFrameBackground:SetPoint("CENTER",0,-23) MainMenuBarArtFrameBackground.SetPoint = function() end



--Player/target/focus adjust


--Display personal

PlayerFrame:Hide();

--PlayerFrame:ClearAllPoints() 


--PlayerFrame:SetPoint("TOPLEFT",350,-340) PlayerFrame.SetPoint = function() end


TargetFrame:ClearAllPoints() 


TargetFrame:SetPoint("TOPLEFT",650,-340) TargetFrame.SetPoint = function() end


FocusFrame:ClearAllPoints() 


FocusFrame:SetPoint("TOPLEFT",487,-530) FocusFrame.SetPoint = function() end



--Adds button to right of Bottombar

--MultiBarLeftButton12:ClearAllPoints()

--MultiBarLeftButton12:SetPoint("LEFT", MultiBarBottomLeftButton12, "RIGHT", 6, 0) MultiBarLeftButton12.SetPoint = function() end



--Sets variables

--SetCVar("UIScale", 0.1)

--SetCVar("alwaysShowActionBars", 0)

--SetCVar("showHonorAsExperience", 1)


--Last on raid frames

LoadAddOn("Blizzard_CompactRaidFrames") CRFSort_Group=function(t1, t2) if UnitIsUnit(t1,"player") then return false elseif UnitIsUnit(t2,"player") then return true else return t1 < t2 end end CompactRaidFrameContainer.flowSortFunc=CRFSort_Group

