local pos = require('position')
local hk = require "hs.hotkey"

-- * Key Binding Utility
--- Bind hotkey for window management.
-- @function windowBind
-- @param {table} hyper - hyper key set
-- @param { ...{key=value} } keyFuncTable - multiple hotkey and function pairs
--   @key {string} hotkey
--   @value {function} callback function
local function windowBind(hyper, keyFuncTable)
  for key,fn in pairs(keyFuncTable) do
    hk.bind(hyper, key, fn)
  end
end

-- * Move window to screen
windowBind(mash.screen, {
  left = pos.throwLeft,
  right = pos.throwRight
})

-- * Set Window Position on screen
windowBind(mash.position, {
  m = pos.maximizeWindow,
  l = pos.leftHalf,
  r = pos.rightHalf,
  c = pos.centerOnScreen,
  t = pos.topHalf,
  b = pos.bottomHalf,
  a = pos.topLeft,
  s = pos.topRight,
  d = pos.bottomLeft,
  f = pos.bottomRight
})
