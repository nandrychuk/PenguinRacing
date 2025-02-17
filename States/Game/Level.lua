-- Author: MrFuzzyPants11
-- Created: Feb 11 2025
-- Last Updated: Feb 15 2025

local Level = {}
Level.__index = Level

-- Local Variables
local underLevelStone = love.graphics.newImage("Assets/Levels/underLevelStone.png")
local startFilePath = "Assets/Levels/Levels/Start"
local finishFilePath = "Assets/Levels/Levels/Finish"

-- Creates new basic level
function Level.new(tileMapString, world,offsetX,prevEndY, image)
  -- Basics
  local self = setmetatable({}, Level)  
  self.tileMap = sti(tileMapString)
  self.offsetX = offsetX
  self.levelImage = love.graphics.newImage(image)
  self.startY,self.endX,self.endY,self.width,self.height,self.offsetY= self:addMarkers(offsetX, prevEndY)
  self.fillerImage = self:makeFillerImage()
  self.endY = self.endY + self.offsetY

  -- Colliders
  self.colliders = self:addColliders(world)
  
  return self
end

-- Creates new Finish level
function Level.new_Finish(world,offsetX,prevEndY)
  local self = Level.new(finishFilePath .. ".lua", world,offsetX,prevEndY, finishFilePath .. ".png")
  for _, layer in pairs(self.tileMap.layers) do
    if layer.type == "objectgroup" and layer.name:find("Markers") then
      for _, object in pairs(layer.objects) do
        if object.name == "Finish" then
          finishX = object.x + self.offsetX
          break
        end
      end
      break
    end
  end
  return self
end

-- Creates new Start Level
function Level.new_Start(world,offsetX,prevEndY)
  local self = Level.new(startFilePath .. ".lua", world,offsetX,prevEndY, startFilePath .. ".png")
  for _, layer in pairs(self.tileMap.layers) do
    if layer.type == "objectgroup" and layer.name:find("Markers") then
      for _, object in pairs(layer.objects) do
        if object.name == "Spawn" then
          spawnX,spawnY = object.x,object.y + self.offsetY
          break
        end
      end
      break
    end
  end
  return self
end

-- Draws the levels
function Level:draw()
  love.graphics.draw(self.levelImage,self.offsetX,self.offsetY)
  love.graphics.draw(self.fillerImage,self.offsetX,self.offsetY + self.height)
end

-- Returns a table of all the colliders in the level
function Level:addColliders(world)
  -- Create an empty table to hold the colliders
  local colliders = {}

  -- Loop through the objects that contain collision object
  for _, layer in ipairs(self.tileMap.layers) do
    if layer.type == "objectgroup" and layer.name:find("Collision") then
      local className = classUnknown
      -- Handle various Collision group layers
      if layer.name == "ground_Collision" then
        className = classGround
      elseif layer.name == "ice_Collision" then
        className = classIce
      end

      for _, object in ipairs(layer.objects) do
        local collider
        if object.shape == "rectangle" then
          -- Create a rectangle collider
          collider = world:newRectangleCollider(object.x + self.offsetX, object.y + self.offsetY, object.width, object.height)
        elseif object.shape == "polygon" then
          -- Create a polygon collider
          local points = {}
          for _, point in ipairs(object.polygon) do
            table.insert(points, point.x + self.offsetX)
            table.insert(points, point.y + self.offsetY)
          end
          collider = world:newPolygonCollider(points)
        end
        
        if collider then
          collider:setCollisionClass(className)
          collider:setType("static")
          collider:setCategory(categoryCollider)
          if className == classIce then
            collider:setFriction(-0.8)
          else 
            collider:setFriction(0.8)
          end
          table.insert(colliders, collider)
        end      
      end
    end
  end

  -- Specificly creates collider for under level area
  local underLevelCollider = world:newRectangleCollider(self.offsetX,self.offsetY + self.height, self.width, viewportHeight * 2)
  underLevelCollider:setCollisionClass(classUnknown)
  underLevelCollider:setType("static")
  underLevelCollider:setCategory(categoryCollider)
  table.insert(colliders, underLevelCollider)
  return colliders
end

-- Returns the markers used to determine various aspects of the level
function Level:addMarkers(offsetX, prevEndY)
  local startY,endX,endY,width,height,offSetY = 0
  for _, layer in pairs(self.tileMap.layers) do
    if layer.type == "objectgroup" and layer.name:find("Markers") then
      for _, object in pairs(layer.objects) do
        local x, y = object.x, object.y
        if object.name == "Start" then
          if prevEndY == 0 then
            offsetY = 0
          else
            offsetY = prevEndY - y
          end
          startY = offsetY + y
        elseif object.name == "End" then
          endY = y
        elseif object.name == "Size" then
          endX = offsetX + x
          width,height = x,y
        end
      end
    end
  end
  return startY,endX,endY,width,height,offsetY
end

-- Constructs an image to put at the bottom of the level so there is no air gap
function Level:makeFillerImage()
  local tempImage = love.graphics.newCanvas(self.width,viewportHeight * 2)
  love.graphics.setCanvas(tempImage)
  love.graphics.clear()

  for i = 0, (self.width/tileSize) - 1 do
    love.graphics.draw(underLevelStone, i * tileSize, 0)
  end

  love.graphics.setCanvas()

  return tempImage
end

return Level