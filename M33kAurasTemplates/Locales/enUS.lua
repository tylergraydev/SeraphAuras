if not M33kAuras.IsLibsOK() then return end

local L = M33kAuras.L

--@localization(locale="enUS", format="lua_additive_table", namespace="M33kAuras / Templates")@

-- Make missing translations available
setmetatable(M33kAuras.L, {__index = function(self, key)
  self[key] = (key or "")
  return key
end})
