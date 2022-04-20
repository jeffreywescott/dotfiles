mash = {
  screen = {"ctrl", "cmd"},
  position = {"cmd", "shift"},
  utils    = {"cmd", "shift", "alt"}
}

require('setup')
require('key-binding')
require('autolayout').start()

hs.alert.show("Hammerspoon!")