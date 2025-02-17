-- Author: MrFuzzyPants11
-- Created: Feb 9 2025
-- Last Updated: Feb 15 2025
local Game = {}

-- Loads libraries // companion files
local Player = require(statePlayer)
local Level = require(stateLevel)

-- Local variables
local cam, world, winImg
local background = love.graphics.newImage("Assets/Levels/Background.png")
local players = {}
local levels = {}
local zoom = maxZoom  -- Smooth zoom change
local winner = "none"
local timer = 0
local timeImg = love.graphics.newImage("Assets/Art/3.png")
local escImg = love.graphics.newImage("Assets/Art/Pixel Fantasy Icons Keyboard/esc.png")

-- Loads base properties of the game including level and players
function Game.load()
  love.mouse.setVisible(false)
  math.randomseed(os.time())
  world = windfield.newWorld(0,gravity, true)
  world:addCollisionClass(classIce)
  world:addCollisionClass(classGround)
  world:addCollisionClass(classUnknown)
  world:addCollisionClass(classPlayer)
  cam = camera()
  

  -- Create level objects
  -- Starting Platform
  table.insert(levels, Level.new_Start(world,0,0))
  -- Middle Race, randomized
  local tempFilePath
  for i = 2, mapLength do
    tempFilePath = "Assets/Levels/Levels/Level_" .. math.random(1,numOfLevels)
    table.insert(levels, Level.new(tempFilePath .. ".lua",world,levels[i-1].endX,levels[i-1].endY, tempFilePath .. ".png"))
  end

  -- Ending Finish
  table.insert(levels, Level.new_Finish(world,levels[mapLength].endX,levels[mapLength].endY))

  -- Create Player 1 (WASD)
  table.insert(players, Player.new(world, spawnX + playerWidth/2, spawnY + playerHeight - tileSize, { up = "w", down = "s", left = "a", right = "d" }, blue))

  -- If playing with 2 create Player 2
  if playerNum == 2 then 
    table.insert(players, Player.new(world,spawnX + playerWidth/2 + 1, spawnY + playerHeight - tileSize,{ up = "up", down = "down", left = "left", right = "right" }, green))
  end
end

-- Updates game systems
function Game.update(dt)
  if timer <= 240 then
    if timer == 60 then
      timeImg = love.graphics.newImage("Assets/Art/2.png")
    elseif timer == 120 then
      timeImg = love.graphics.newImage("Assets/Art/1.png")
    elseif timer == 180 then
      timeImg = love.graphics.newImage("Assets/Art/0.png")
    end
    timer = timer + 1
  end

  world:update(dt)

  if(timer >= 180) then
    for _, player in ipairs(players) do
      player.collider:setMask(categoryPlayer) -- Fixes issue where players randomly start colliding with eachother
      player:move(dt)
      -- Sets a winner when someone passes the finish line
      if player:getX() >= finishX and winner == "none" then
        print(player.colour)
        winner = player.colour
        winImg = love.graphics.newImage("Assets/Art/" .. winner .. ".png")
      end
    end
  end

  -- Math to center camera on two players and zoom in/out in needed
  if playerNum == 2 then
    -- Points camera at center between two players
    cam:lookAt((players[1]:getX() + players[2]:getX())/2,(players[1]:getY() + players[2]:getY())/2)

    -- used to Check if any player is outside the viewport
    local effectiveviewportWidth = viewportWidth/zoom
    local effectiveviewportHeight = viewportHeight/zoom

    local camLeft = cam.x - effectiveviewportWidth/2
    local camRight = cam.x + effectiveviewportWidth/2
    local camTop = cam.y - effectiveviewportHeight/2
    local camBottom = cam.y + effectiveviewportHeight/2

    -- If either players x or y coords are outside of the camera area
    local twiceTile = 2 * tileSize
    local p1X, p1Y = players[1]:getCoords()
    local p2X, p2Y = players[2]:getCoords()
    if (math.min(p1X,p2X) < camLeft + tileSize or math.max(p1X,p2X) > camRight - tileSize or math.min(p1Y,p2Y) < camTop + tileSize or math.max(p1Y,p2Y) > camBottom - tileSize) then
      zoom = math.max(minZoom, zoom - zoomFactor) -- Zoom out
    elseif (math.min(p1X,p2X) > camLeft + twiceTile and math.max(p1X,p2X) < camRight - twiceTile and math.min(p1Y,p2Y) > camTop + twiceTile and math.max(p1Y,p2Y) < camBottom - twiceTile) then
      zoom = math.min(maxZoom, zoom + zoomFactor) -- Zoom in
    end

    -- Apply the zoom to the camera
    cam:zoomTo(zoom)
  else
    cam:lookAt(players[1]:getX(),players[1]:getY())
  end
end

-- Draws background, player, level, and start timer/winner image
function Game.draw()
  love.graphics.draw(background,0,0)
  cam:attach()
    for _, curLevel in ipairs(levels) do
      curLevel:draw()
    end
    for _, player in ipairs(players) do
      player:draw()
    end
    -- world:draw() -- Remove in final
  cam:detach()

  if timer <= 240 then
    love.graphics.draw(timeImg,viewportWidth/2 - timeImg:getWidth()/2, viewportHeight/4 - timeImg:getHeight()/2)
  end

  if winner ~= "none" then
    love.graphics.draw(winImg,viewportWidth/2 - winImg:getWidth()/2, viewportHeight/4 - winImg:getHeight()/2)
  end

  love.graphics.draw(escImg, 10,10)
end

function love.keypressed(key)
  if key == "escape" then
    changeState(stateGame, stateMainMenu)  
  end
end

return Game
