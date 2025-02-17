-- Author: MrFuzzyPants11
-- Created: Feb 9 2025
-- Last Updated: Feb 15 2025

-- Local Variables
local currentState
local constants = require "Constants" -- Used to load the global constants

function love.load()
  constants.load()
  currentState = require(stateMainMenu)
  currentState.load()
end

function love.update(dt)
  if currentState.update then
    currentState.update(dt)
  end
end

function love.draw()
  if currentState.draw then
    currentState.draw(dt)
  end
end

function love.keypressed(key)
  if currentState.keypressed then
    currentState.keypressed(key)
  end
end

-- Function to switch states
function changeState(oldState, newState)
  package.loaded[oldState] = nil
  currentState = require(newState)
  currentState.load()
end