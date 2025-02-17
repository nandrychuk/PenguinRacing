-- Author: MrFuzzyPants11
-- Created: Feb 14 2025
-- Last Updated: Feb 15 2025
Constants = {}

function Constants.load()
  -- Window properties
  tileSize = 32
  viewportWidth = tileSize * 32
  viewportHeight = tileSize * 16


  -- Misc Game info
  numOfLevels = 9 -- Levels designed (aka in Assets/Levels/Levels)
  mapLength = 8 -- number of levels stitched to make the map, min 2
  -- Misc Player info
  playerNum = 1 
  playerWidth = 31
  playerHeight = 48
  SpawnX = 0
  spawnY = 0
  blue = "Blue"
  green = "Green"

  -- Windfield properties/info
  gravity = 628
  finishX = 0
  classIce = "Ice"
  classGround = "Ground"
  classUnknown = "Unknown"
  classFinish = "Finish"
  categoryCollider = 2
  BlueSS = love.graphics.newImage("Assets/Sprites/Players/Penguin_Blue.png")
  GreenSS = love.graphics.newImage("Assets/Sprites/Players/Penguin_Green.png")
  classPlayer = "Player"
  categoryPlayer = 1

  -- Misc Camera info
  minZoom = 0.5
  maxZoom = 1
  zoomFactor = 0.002

  -- Libraries utilized
  sti = require "Libraries.Simple-Tiled-Implementation.sti"
  windfield = require "Libraries.windfield.windfield"
  camera = require "Libraries.hump.camera"
  anim8 = require 'Libraries.anim8.anim8'

  -- Game States
  stateGame = "States.Game.Game"
  stateMainMenu = "States.MainMenu"
  stateGameMenu2P = "States.Game.GameMenu2P"
  stateLevel = "States.Game.Level"
  statePlayer = "States.Game.Player"
  stateButton = "States.Button"
end

return Constants