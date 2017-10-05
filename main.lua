local drawTriangle = require 'drawTriangle'

local WINDOW_SIZE = 512
local CANVAS_SIZE = 32
local canvas

local spinning
local angle

function love.load()
  love.window.setTitle('Spinning Triangle!')
  love.window.setMode(WINDOW_SIZE, WINDOW_SIZE)
  canvas = love.graphics.newCanvas(CANVAS_SIZE, CANVAS_SIZE)
  canvas:setFilter('nearest', 'nearest')

  spinning = true
  angle = 0
end

function love.keypressed(key, scancode, isrepeat)
  if key == 'space' and not isrepeat then
    spinning = not spinning
  end
end

function love.update(dt)
  if spinning then
    angle = angle + 1
  end
end

function love.draw()
  love.graphics.setCanvas(canvas)
    love.graphics.clear()
    drawTriangle('fill', CANVAS_SIZE / 2, CANVAS_SIZE / 2, CANVAS_SIZE / 2, angle)
  love.graphics.setCanvas()

  love.graphics.push()
    love.graphics.scale(WINDOW_SIZE / CANVAS_SIZE)
    love.graphics.draw(canvas)
  love.graphics.pop()
end
