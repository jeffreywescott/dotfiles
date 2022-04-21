mash = {
  screen = {"ctrl", "cmd"},
  position = {"cmd", "shift"},
  utils    = {"cmd", "shift", "alt"}
}

require('setup')
require('key-binding')
local autolayout = require('autolayout')
autolayout.start()
autolayout.autoLayout()

hs.alert.show("Hammerspoon!")