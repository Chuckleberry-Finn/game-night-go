require "Items/SuburbsDistributions"

local gameNightDistro = require "gameNight - Distributions"

gameNightDistro.proceduralDistGameNight.itemsToAdd["GoBox"] = {}

gameNightDistro.gameNightBoxes["GoBox"] = {
    rolls = 1,
    items = {
        "GoStoneBlack", 9999,
        "GoStoneWhite", 9999,
		"GoBoard", 9999
    },
    junk = { rolls = 1, items = {} }, fillRand = 0,
}