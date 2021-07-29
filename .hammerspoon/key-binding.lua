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
windowBind(mash.position, {
  left = pos.throwLeft,
  right = pos.throwRight
})

-- * Set Window Position on screen
windowBind(mash.position, {
  m = pos.maximizeWindow,
  c = pos.centerOnScreen,
  left = pos.leftHalf,
  right = pos.rightHalf,
  up = pos.topHalf,
  down = pos.bottomHalf,
  q = pos.topLeft,
  w = pos.topRight,
  e = pos.bottomLeft,
  r = pos.bottomRight
})
