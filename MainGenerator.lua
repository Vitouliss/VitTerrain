--[[

This is the first NEW Terrain Generator I made with Trees!
Old math errors that caused trees to sometimes be generated floating should be fixed!

Terrain by Default generates a small little piece of land.

I don't remember when I first started writing this but I can give a guess:
April 06, 2012

--]]

local cool = Instance.new("Model", workspace)
cool.Name = "Land"
local number = 0
local tableOfColors = {BrickColor.new("Bright green"),BrickColor.new("Cool yellow"),BrickColor.new("Dark green")}
local treegroup = game.Lighting.GroupTrees

local smooth = script.IsSmooth.Value 

local treestuff = {"Tree1","Tree2","Tree3","Tree4","Tree5"}

local lighting = game:GetService("Lighting").GroupTrees:GetChildren()

local spawn = Instance.new("SpawnLocation",cool)
spawn.Anchored = true
spawn.Locked = true
spawn.Duration = 1
spawn.TopSurface = "Smooth"
spawn.BottomSurface = "Smooth"
spawn.Position = Vector3.new(50,28,50)
spawn.Transparency = 1
spawn.CanCollide = false

for b = 40,500,40 do
	for z = 40,500,40 do
		
		local randomheight = math.random(10,20)

		--number = number+1
		--print("Part # "..number)

		local part = Instance.new("Part",cool)
		part.Name = "TerrainPart"
		part.Anchored = true
		part.TopSurface = "Smooth"
		part.BottomSurface = "Smooth"

		if smooth then 
			mesh = Instance.new("BlockMesh", part)
		else
		end

		part.CFrame = CFrame.new(b*1,1,z*1)
		part.Size = Vector3.new(40,randomheight,40)

		if part.Size.Y < 12 then
			part.BrickColor = BrickColor.new("Dark green")

		elseif part.Size.Y > 11 then
			part.BrickColor = BrickColor.new("Bright green")
			part.Name = "HighRock"
--[[
		elseif part.Size.Y > 18 then
			part.BrickColor = BrickColor.new("Camo")
			part.Name = "MoreHighRock"


			part.BrickColor = tableOfColors[math.random(1,#tableOfColors)]

			cool:MoveTo(Vector3.new(2,2,2)) --Not using this because it messes with Terrain for some reason

			--]]
			wait(0.1)
		end

		end

		end

		local random = treestuff[math.random(1,#treestuff)]

		for lol = 1,#lighting do
			if lighting[lol].Name == random then
				for amount = 1,10 do
					extra = lighting[lol]:Clone()
					extra.Parent = cool
					extra:MoveTo(Vector3.new(math.random(100,240),randomheight,math.random(100,220)))
				end
			end
		end