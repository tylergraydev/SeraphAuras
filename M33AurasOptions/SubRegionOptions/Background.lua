if not M33Auras.IsLibsOK() then return end
---@type string
local AddonName = ...
---@class OptionsPrivate
local OptionsPrivate = select(2, ...)
local L = M33Auras.L;

do
  local function subCreateOptions(parentData, data, index, subIndex)
      local options = {
        __title = L["Background"],
        __order = 1,
        __up = function()
          for child in OptionsPrivate.Private.TraverseLeafsOrAura(parentData) do
            OptionsPrivate.MoveSubRegionUp(child, index, "subbackground")
          end
          M33Auras.ClearAndUpdateOptions(parentData.id)
        end,
        __down = function()
          for child in OptionsPrivate.Private.TraverseLeafsOrAura(parentData) do
            OptionsPrivate.MoveSubRegionDown(child, index, "subbackground")
          end
          M33Auras.ClearAndUpdateOptions(parentData.id)
        end,
        __notcollapsable = true
      }
      return options
    end

  M33Auras.RegisterSubRegionOptions("subbackground", subCreateOptions, L["Background"]);
end

-- Foreground for aurabar

do
  local function subCreateOptions(parentData, data, index, subIndex)
    local options = {
      __title = L["Foreground"],
      __order = 1,
      __up = function()
        for child in OptionsPrivate.Private.TraverseLeafsOrAura(parentData) do
          OptionsPrivate.MoveSubRegionUp(child, index, "subforeground")
        end
        M33Auras.ClearAndUpdateOptions(parentData.id)
      end,
      __down = function()
        for child in OptionsPrivate.Private.TraverseLeafsOrAura(parentData) do
          OptionsPrivate.MoveSubRegionDown(child, index, "subforeground")
        end
        M33Auras.ClearAndUpdateOptions(parentData.id)
      end,
      __notcollapsable = true
    }
    return options
  end

  M33Auras.RegisterSubRegionOptions("subforeground", subCreateOptions, L["Foreground"]);
end
