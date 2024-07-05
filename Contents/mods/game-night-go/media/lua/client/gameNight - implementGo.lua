
---First require this so that these modules can be called on as needed.
local applyItemDetails = require "gameNight - applyItemDetails"
--local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceAndBoardHandler = applyItemDetails.gamePieceAndBoardHandler


gamePieceAndBoardHandler.registerTypes({"Base.Go_Board","Base.GoStonesBlack","Base.GoStonesWhite"})


gamePieceAndBoardHandler.registerSpecial("Base.Go_Board",
		{
			category = "GameBoard",
			textureSize = {740,800},
			actions = { lock=true, flipPiece=true },
			alternateStackRendering = { func="DrawTextureCardFace", depth=9, rgb = {0.78, 0.71, 0.41} },
			altState="Go_Board_Back",
			shiftAction = "flipPiece"
		}
)


gamePieceAndBoardHandler.registerSpecial("Base.GoStonesBlack",
		{
			weight = 0.003,
			shiftAction = "takeOneOffStack",
			canStack = 100,
			noRotate=true,
		}
)


gamePieceAndBoardHandler.registerSpecial("Base.GoStonesWhite",
		{
			weight = 0.003,
			shiftAction = "takeOneOffStack",
			canStack = 100,
			noRotate=true,
		}
)

	
	
	
