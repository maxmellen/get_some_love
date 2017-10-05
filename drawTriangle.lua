local function sin(a)
  return math.sin(math.rad(a))
end

local function cos(a)
  return math.cos(math.rad(a))
end

local function drawTriangle(mode, cx, cy, r, a)
  local vertices = {
    cx + r * cos(-90 + a), cy + r * sin(-90 + a),
    cx + r * cos(150 + a), cy + r * sin(150 + a),
    cx + r * cos( 30 + a), cy + r * sin( 30 + a),
  }

  love.graphics.polygon(mode, vertices)
end

return drawTriangle
