function pPrint(text)
	print("[Plink]\t" .. text)
end

function Load() 
	local switch = {
	["92416421522960"] = function() 
		pPrint("Slime RNG Found.")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/thestackersudo/SRNG/main/main.lua"))()
	end,
	["95630541662383"] = function()
		pPrint("World Fighters Found.")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/thestackersudo/WF/main/main.lua"))()
	end,
	["77747658251236"] = function()
		pPrint("Sailor Piece Found.")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/thestackersudo/SP/main/main.lua"))()
	end,
	default = function()
		pPrint("Game not Found.")
	end
}
	if switch[tostring(game.PlaceId)] then
		switch[tostring(game.PlaceId)]()
	else
		switch["default"]()
	end
end

Load()
