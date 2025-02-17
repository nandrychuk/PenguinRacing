-- Author: MrFuzzyPants11
-- Created: Feb 13 2025
-- Last Updated: Feb 15 2025

local Button = {}
Button.__index = Button

-- Global Variables
buttonWidth = 144
buttonHeight = 48

function Button.new(x, y, text)
  -- Basics
  local self = setmetatable({}, Button)
  self.x = x
  self.y = y
  self.text = text
  self.ready = false

  -- Sprites
  self.img = love.graphics.newImage("Assets/Art/Button Pack - ok_lavender/Individual Frames/[8] Wood/" .. text .. ".png")

  return self
end

function Button.new_Ready(x, y)
  -- Basics
  local self = setmetatable({}, Button)
  self.x = x
  self.y = y
  self.text = ready

  -- Sprites
  self.img = love.graphics.newImage("Assets/Art/Button Pack - ok_lavender/Individual Frames/[8] Wood/Ready.png")

  return self
end

function Button:draw()
  love.graphics.draw(self.img,self.x - buttonWidth/2, self.y - buttonHeight/2)
end

return Button