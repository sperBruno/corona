-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local tapCount = 0




-- Your code here
local background = display.newImageRect("images/background/red.png", 360, 570)
background.x = display.contentCenterX
background.y = display.contentCenterY

local tapText = display.newText( tapCount, display.contentCenterX, 20, native.systemFont, 40 )
tapText:setFillColor(0, 0, 0)

local platform = display.newImageRect("images/platform.png", 300, 50)
platform.x = display.contentCenterX
platform.y = display.contentHeight - 25


local ballon = display.newImageRect("images/soccerball.png", 112, 112)
ballon.x = display.contentCenterX
ballon.y = display.contentCenterY
ballon.alpha = 0.8


local physics = require( "physics" )
physics.start()

physics.addBody(platform, "static")
physics.addBody(ballon, "dynamic", { radius=50, bounce=0.3})

--Ballon function
local function pushBallon()
    ballon:applyLinearImpulse(0, -0.75, ballon.x, ballon.y)
    tapCount = tapCount + 1
    print(tapCount)
    tapText.text = tapCount
end


ballon:addEventListener("tap", pushBallon)
