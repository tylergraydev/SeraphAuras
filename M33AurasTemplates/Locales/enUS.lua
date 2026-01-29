if not M33Auras.IsLibsOK() then return end

local L = M33Auras.L

--@localization(locale="enUS", format="lua_additive_table", namespace="M33Auras / Templates")@

-- Make missing translations available
setmetatable(M33Auras.L, {__index = function(self, key)
  self[key] = (key or "")
  return key
end})
