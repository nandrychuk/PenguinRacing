-- Author: MrFuzzyPants11
-- Created: Feb 13 2025
-- Last Updated: Feb 15 2025

local GameMenu = {}

-- Loads libraries // companion files
local Button = require(stateButton)

-- Local Variables
local buttons = {}
local background, penguinOne, penguinTwo, penguinOneQuad,penguinTwoQuad, WASD, arrowKeys, readyPointer
local ready = "Ready"

function GameMenu.load()
  love.mouse.setVisible(true)
  table.insert(buttons, Button.new_Ready(viewportWidth/4,viewportHeight/4))
  table.insert(buttons, Button.new_Ready(viewportWidth * 0.75,viewportHeight/4))
  background = love.graphics.newImage("Assets/Art/Menu_Back.png")
  penguinOne = BlueSS
  penguinTwo = GreenSS
  penguinOneQuad = love.graphics.newQuad(0,playerHeight + 2,playerWidth + 2,playerHeight + 2,penguinOne:getDimensions())
  penguinTwoQuad = love.graphics.newQuad(0,0,playerWidth + 2,playerHeight + 2,penguinTwo:getDimensions())
  WASD = love.graphics.newImage("Assets/Art/Pixel Fantasy Icons Keyboard/WASD.png")
  arrowKeys = love.graphics.newImage("Assets/Art/Pixel Fantasy Icons Keyboard/Arrow_Keys.png")
  readyPointer = love.graphics.newImage("Assets/Art/Ready_Pointer.png")
end

function GameMenu.update(dt)
  if love.keyboard.isDown("w") then
    buttons[1].img = love.graphics.newImage("Assets/Art/Button Pack - ok_lavender/Individual Frames/[8] Wood/[2] Clicked 144x48.png")
    buttons[1].ready = true
  elseif love.keyboard.isDown("up") then
    buttons[2].img = love.graphics.newImage("Assets/Art/Button Pack - ok_lavender/Individual Frames/[8] Wood/[2] Clicked 144x48.png")
    buttons[2].ready = true
  end
  if buttons[1].ready and buttons[2].ready then
    changeState(stateGameMenu2P,stateGame)
  end
end

function GameMenu.draw()
  love.graphics.draw(background)
  love.graphics.draw(penguinOne,penguinOneQuad,viewportWidth/4 - ((playerWidth + 2) * 1.5),viewportHeight/2 - ((playerHeight + 2) * 1.5),0,3,3)
  love.graphics.draw(penguinTwo,penguinTwoQuad,viewportWidth * 0.75 - ((playerWidth + 2) * 1.5),viewportHeight/2 - ((playerHeight + 2) * 1.5),0,3,3)
  love.graphics.draw(WASD,viewportWidth/4 - WASD:getWidth() ,viewportHeight * 0.75 - (WASD:getHeight()/2),0,2,2)
  love.graphics.draw(arrowKeys,viewportWidth * 0.75 - arrowKeys:getWidth() ,viewportHeight * 0.75 - (arrowKeys:getHeight()/2),0,2,2)
  love.graphics.draw(readyPointer, viewportWidth/2 - readyPointer:getWidth()/2, viewportHeight * 0.7)
  for _, button in ipairs(buttons) do
    button:draw()
  end
end

return GameMenu