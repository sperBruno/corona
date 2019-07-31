-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local physics = require("physics")
physics.start()
physics.setGracity(0, 0)

--Seed the random number generator
math.randomseed(os.time())

--configure image sheet
local sheetOptions = {
    frames = {

    },
}