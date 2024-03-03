-- The Circular Ruins
-- Explore the ruins. Dream something into being.

local Bard = include('lib/bard')
local Labyrinth = include('lib/labyrinth')
local Pouch = include('lib/pouch')

function init()
  math.randomseed(os.time())
  screen.set_size(128, 64) -- TBD
  labyrinth = Labyrinth:new()
  labyrinth:init()
end

function enc(e, d)
end

function key(k, z)
end

function screen.key(k, v)
  print(k, v)
end

function screen.click(x, y)
  screen.move(x, y)
  screen.text('*')
  screen.refresh()
end

function draw()
end

function redraw()
  screen.clear()
  for i = 0, 16 do
    local x = i + 1
    screen.level(i)
    screen.move(x, 1)
    screen.line(x, 64)
  end
  screen.refresh()
end

function refresh()
  redraw() -- hrm
end