-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local physics = require("physics")
physics.start()
physics.setGravity(0, 0)

--Seed the random number generator
math.randomseed(os.time())

--configure image sheet
local sheetOptions = {
    frames = {
        {
            --asteroid 1
            x = 0,
            y = 0,
            width = 102,
            height = 85
        },
        {
            --asteroid 2
            x = 0,
            y = 85,
            width = 90,
            height = 83
        },
        {
            --asteroid 3
            x = 0,
            y = 168,
            width = 100,
            height = 97
        },
        {
            --ship 4
            x = 0,
            y = 265,
            width = 98,
            height = 79
        },
        {   -- 5) laser
            x = 98,
            y = 265,
            width = 14,
            height = 40
        }
        
    },
}


local objectSheep = graphics.newImageSheet("gameObjects.png", sheetOptions)

--initalize variables
local lives = 3
local score = 0
local died = false

local asteroidsTable = {}

local ship
local gameLooptimer
local livesText
local scoreText

--setup displays groups
local backGroup = display.newGroup()
local mainGroup = display.newGroup()
local uiGroup = display.newGroup()

--load the background
local background = display.newImageRect(backGroup, "images/background.png", 800, 1400)
background.x = display.contentCenterX
background.y = display.contentCenterY
