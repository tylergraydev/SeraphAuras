if not M33kAuras.IsLibsOK() then return end
---@type string
local AddonName = ...
---@class Private
local Private = select(2, ...)

local GetBonusBarIndex, GetBonusBarOffset = C_ActionBar.GetBonusBarIndex, C_ActionBar.GetBonusBarOffset

local function HandleEvent(self, event, arg1)
  Private.callbacks:Fire("WA_DRAGONRIDING_UPDATE")
  if event == "PLAYER_ENTERING_WORLD" and arg1 == true then
    C_Timer.After(2, HandleEvent)
  end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("UNIT_POWER_BAR_SHOW")
frame:RegisterEvent("UNIT_POWER_BAR_HIDE")
frame:RegisterEvent('PLAYER_CAN_GLIDE_CHANGED')
frame:RegisterEvent('PLAYER_IS_GLIDING_CHANGED')
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", HandleEvent)

Private.IsDragonriding = function ()
  return GetBonusBarIndex() == 11 and GetBonusBarOffset() == 5
end

