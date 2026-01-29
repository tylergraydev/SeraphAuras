---@type string
local AddonName = ...
---@class Private
local Private = select(2, ...)

local L = M33Auras.L

local optionsVersion = "@project-version@"
--@debug@
optionsVersion = "Dev"
--@end-debug@

if optionsVersion ~= M33Auras.versionString then
  local message = string.format(L["The M33Auras Options Addon version %s doesn't match the M33Auras version %s. If you updated the addon while the game was running, try restarting World of Warcraft. Otherwise try reinstalling M33Auras"],
                    optionsVersion, M33Auras.versionString)
  ---@diagnostic disable-next-line: duplicate-set-field
  M33Auras.IsLibsOk = function() return false end
  ---@diagnostic disable-next-line: duplicate-set-field
  M33Auras.ToggleOptions = function()
       M33Auras.prettyPrint(message)
  end

end
