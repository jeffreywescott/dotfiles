local pos = require('position')

local layoutConfig = {}
layoutConfig['com.google.Chrome'] = {
    bundleID = 'com.google.Chrome',
    preferredDisplay = 2,
    preferredPosition = pos.leftHalf
}
layoutConfig['com.brave.Browser'] = {
    bundleID = 'com.brave.Browser',
    preferredDisplay = 2,
    preferredPosition = pos.leftHalf
}
layoutConfig['us.zoom.xos'] = {
    bundleID = 'us.zoom.xos',
    preferredDisplay = 2,
    preferredPosition = pos.rightHalf
}

module = {}

module.autoLayout = function()
    local numOfScreens = #hs.screen.allScreens()
    for _, appLayoutConfig in pairs(layoutConfig) do
        -- if we have a preferred display
        application = hs.application.find(appLayoutConfig.bundleID)
        logger:v("application", application)
        if appLayoutConfig.preferredDisplay ~= nil then
            if application ~= nil then
                local theWindow = application:mainWindow()
                if theWindow ~= nil then
                    theWindow:moveToScreen(hs.screen.allScreens()[appLayoutConfig.preferredDisplay], false, true, 0)
                    theWindow:focus()
                    if numOfScreens > 1 then
                        appLayoutConfig.preferredPosition()
                    else
                        pos.maximizeWindow()
                    end
                end
            end
        end
    end
end

module.start = function()  
    hs.screen.watcher.new(function()
        if numOfScreens ~= #hs.screen.allScreens() then
            module.autoLayout()
            numOfScreens = #hs.screen.allScreens()
        end
    end):start()
end

return module
