---First require this so that these modules can be called on as needed.
local applyItemDetails = require "gameNight - applyItemDetails"
local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceAndBoardHandler = applyItemDetails.gamePieceAndBoardHandler

--- Card Table
local goStonesBlack = {}
local goStonesWhite = {}

for i=1, 100 do
	table.insert(goStonesBlack, "Go_Stone_Black")
end
deckActionHandler.addDeck("GoStonesBlack", goStonesBlack)

for i=1, 100 do
	table.insert(goStonesWhite, "Go_Stone_White")
end
deckActionHandler.addDeck("GoStonesWhite", goStonesWhite)

gamePieceAndBoardHandler.registerTypes({"Base.Go_Board_Front"})

gamePieceAndBoardHandler.registerSpecial(
	"Base.Go_Board_Front",{ category = "GameBoard", textureSize = {740,800}, actions = { lock=true }, 
	alternateStackRendering = { func="DrawTextureCardFace", depth=9, rgb = {0.78, 0.71, 0.41} },
	altState="Go_Board_Back", shiftAction = "flipPiece"},

	"Base.GoStonesBlack",{ alternateStackRendering = { func="DrawTextureRoundFace", depth = 1.3, rgb = {0.29, 0.27, 0.29} }, sideTexture = "Black_Stone_Texture" },

	"Base.GoStonesWhite",{ alternateStackRendering = { func="DrawTextureRoundFace", depth = 1.3, rgb = {0.61, 0.62, 0.61} }, sideTexture = "White_Stone_Texture" }
	)
	