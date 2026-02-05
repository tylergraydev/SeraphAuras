---@type string
local AddonName = ...
---@class Private
local Private = select(2, ...)

local L = M33kAuras.L

local optionsVersion = "@project-version@"
--@debug@
optionsVersion = "Dev"
--@end-debug@

if optionsVersion ~= M33kAuras.versionString then
  local message = string.format(L["The M33kAuras Options Addon version %s doesn't match the M33kAuras version %s. If you updated the addon while the game was running, try restarting World of Warcraft. Otherwise try reinstalling M33kAuras"],
                    optionsVersion, M33kAuras.versionString)
  ---@diagnostic disable-next-line: duplicate-set-field
  M33kAuras.IsLibsOk = function() return false end
  ---@diagnostic disable-next-line: duplicate-set-field
  M33kAuras.ToggleOptions = function()
       M33kAuras.prettyPrint(message)
  end

end
