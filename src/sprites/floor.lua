-- floor.lua

function Floor(boss,properties)

	local grill = boss.grill
	local spritesheet = boss.images["floor"]

	local floor = {
    name = "floor",
		x = properties.coord_x,
		y = properties.coord_y,
		code = properties.code
	}

	function floor.draw()
		spritesheet.draw_image(floor.x*grill.tile,floor.y*grill.tile,spritesheet.quads[floor.code])
	end

	return floor
end

return Floor
