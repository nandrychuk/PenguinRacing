-- Author: MrFuzzyPants11
-- Created: Feb 9 2025
-- Last Updated: Feb 15 2025

local MainMenu = {}

-- Loads libraries // companion files
local Button = require(stateButton)

-- Local Variables
local buttons = {}
local background, titleImg
local oneP = "One Player"
local twoP = "Two Players"
local exit = "Exit Game"

-- Loads menu
function MainMenu.load()
  love.mouse.setVisible(true)
  table.insert(buttons, Button.new(viewportWidth/2,viewportHeight/2, oneP))
  table.insert(buttons, Button.new(viewportWidth/2,viewportHeight/2 + buttonHeight * 1.5, twoP))
  table.insert(buttons, Button.new(viewportWidth/2,viewportHeight/2 + buttonHeight * 3, exit))
  background = love.graphics.newImage("Assets/Art/Menu_Back.png")
  titleImg = love.graphics.newImage("Assets/Art/Title.png")
end

-- Draws the buttons and background
function MainMenu.draw()
  love.graphics.draw(background)
  love.graphics.draw(titleImg, viewportWidth/2 - titleImg:getWidth()/2,10)
  for _, button in ipairs(buttons) do
    button:draw()
  end
end

-- Checks if the player selects an option
function love.mousepressed(x, y, button)
  if button == 1 then  -- Left click
    for _, btn in ipairs(buttons) do
      if (x > btn.x - buttonWidth/2 and x < btn.x + buttonWidth/2) and (y > btn.y - buttonHeight/2 and y < btn.y + buttonHeight/2) then
        if btn.text == exit then
          love.event.quit()  -- Exit game
        elseif btn.text == oneP then
          changeState(stateMainMenu,stateGame)
        elseif btn.text == twoP then
          playerNum = 2
          changeState(stateMainMenu,stateGameMenu2P)
        end
      end
    end
  end
end

return MainMenu