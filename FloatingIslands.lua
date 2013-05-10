--[[

This version just generates grid like Terrain in small cluters. 

--]]

local EntityHolder = Instance.new("Model", workspace)
EntityHolder.Name = "Terrain"
local number = 0
local tableOfColors = {BrickColor.new("Bright green"),BrickColor.new("Cool yellow"),BrickColor.new("Dark green")}

local spawn = Instance.new("SpawnLocation",cool)
spawn.Anchored = true
spawn.Locked = true
spawn.Duration = 1
spawn.TopSurface = "Smooth"
spawn.BottomSurface = "Smooth"
spawn.Position = Vector3.new(756.4, 8.2, 751.4)
spawn.Transparency = 1
spawn.CanCollide = false

for a = 30,300,30 do
	for z = 30,300,30 do
		
		local randomheight = math.random(10,20)

		--number = number+1
		--print("OMG PART# "..number)

		local part = Instance.new("Part",cool)
		part.Name = "TerrainPart"
		part.Anchored = true
		part.TopSurface = "Smooth"
		part.BottomSurface = "Smooth"

		part.Size = Vector3.new(250,randomheight,250)

		part.CFrame = CFrame.new(b*1/math.rad(2),1,z*1/math.rad(2))

		if part.Size.Y < 12 then
			part.BrickColor = BrickColor.new("Dark green")

		elseif part.Size.Y > 11 then
			part.BrickColor = BrickColor.new("Bright green")
			part.Name = "HighRock"

--[[
       elseif part.Size.Y > 18 then
            part.BrickColor = BrickColor.new("Camo")
            part.Name = "REALLYHighRock"


-part.BrickColor = tableOfColors[math.random(1,#tableOfColors)]


cool:MoveTo(Vector3.new(2,2,2)) -- Not using this because it messes with Terrain for some reason

--]]

		end
	end

end