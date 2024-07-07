
---First require this so that these modules can be called on as needed.
local applyItemDetails = require "gameNight - applyItemDetails"
--local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceAndBoardHandler = applyItemDetails.gamePieceAndBoardHandler


gamePieceAndBoardHandler.registerTypes({"Base.GoBoard","Base.GoStonesBlack","Base.GoStonesWhite"})


gamePieceAndBoardHandler.registerSpecial("Base.GoBoard",
		{
			category = "GameBoard",
			textureSize = {740,800},
			actions = { lock=true, flipPiece=true },
			alternateStackRendering = { func="DrawTextureCardFace", sideTexture="Board_Side_Texture", depth=12, },
			altState="GoBoard_Back",
			shiftAction = "flipPiece"
		}
)
--rgb = {0.84, 0.66, 0.11},

gamePieceAndBoardHandler.registerSpecial("Base.GoStonesBlack",
		{
			weight = 0.003,
			shiftAction = "takeOneOffStack",
			canStack = 180,
			noRotate=true,
			alternateStackRendering = {func="DrawTextureRoundFace", sideTexture="Black_Stone_Texture", depth = 2, rgb = {0.2, 0.2, 0.2}},
		}
)


gamePieceAndBoardHandler.registerSpecial("Base.GoStonesWhite",
		{
			weight = 0.003,
			shiftAction = "takeOneOffStack",
			canStack = 180,
			noRotate=true,
			alternateStackRendering = {func="DrawTextureRoundFace", sideTexture="White_Stone_Texture", depth = 2, rgb = {0.9, 0.9, 0.9}},
		}
)

	
	
	
