-- Author: MrFuzzyPants11
-- Created: Feb 10 2025
-- Last Updated: Feb 15 2025

local Player = {}
Player.__index = Player

-- Creates new player
function Player.new(world, x, y, controls, colour)
  -- Basics
  local self = setmetatable({}, Player)
  self.world = world
  self.controls = controls
  self.crouching = false
  self.width = playerWidth
  self.height = playerHeight
  self.facingRight = true
  self.speed = tileSize * 6 -- Moves 6 blocks a second
  self.colour = colour

  -- Sprites
  if colour == "Green" then
    self.SS = GreenSS
  else
    self.SS = BlueSS
  end

  self.grid = anim8.newGrid(playerWidth + 2,playerHeight + 2,self.SS:getWidth(),self.SS:getHeight())
  
  -- Animation
  self.animations = {}
  self.animations.walkLeft = anim8.newAnimation(self.grid('1-2',1),0.2)
  self.animations.walkRight = anim8.newAnimation(self.grid('1-2',2),0.2)
  self.animations.hangRight = anim8.newAnimation(self.grid('1-2',3),0.2)
  self.animations.hangLeft = anim8.newAnimation(self.grid('1-2',4),0.2)
  self.animations.crouchLeft = anim8.newAnimation(self.grid('1-2',5),0.2)
  self.animations.crouchRight = anim8.newAnimation(self.grid('1-2',6),0.2)
  self.anim = self.animations.walkRight

  -- Jumping
  self.jumpPower = -300
  self.jumps = 2
  self.isJumpReleased = true

  -- Collider
  self.collider = self.world:newBSGRectangleCollider(x - self.width/2,y- self.height/2,self.width,self.height,10)
  self.collider:setFixedRotation(true)   
  self.collider:setCollisionClass(classPlayer)
  self.collider:setCategory(categoryPlayer)
  self.collider:setMask(categoryPlayer)
  self.collider:setFriction(0.8)

  return self
end

-- Draws player in their given stance
function Player:draw()
  -- Draw player
  self.anim:draw(self.SS,self.collider:getX() - self.width/2, self.collider:getY() - self.height/2)
end

-- Updates player location and checks information related to jumping
function Player:move(dt)
  local vx, vy = self.collider:getLinearVelocity()  -- Get current velocity
  local isMoving = false

  if love.keyboard.isDown(self.controls.down) then
    if(self.crouching == false) then
      self.crouching = true
      self:swapColliderSize()
      if self.facingRight then
        self.anim = self.animations.crouchRight
      else
        self.anim = self.animations.crouchLeft
      end
    end
  elseif(self.crouching) then
    self.crouching = false
    self:swapColliderSize()
    if self.facingRight then
      self.anim = self.animations.walkRight
    else
      self.anim = self.animations.walkLeft
    end
  end

  -- Horizontal movement + animation
  if self.crouching then
    if love.keyboard.isDown(self.controls.right) then
      self.anim = self.animations.crouchRight
      self.facingRight = true
      vx = self.speed * (3/4)  -- Move right
      isMoving = true
    elseif love.keyboard.isDown(self.controls.left) then
      self.anim = self.animations.crouchLeft
      self.facingRight = false
      vx = -self.speed * (3/4) -- Move left
      isMoving = true
    end
  else
    if love.keyboard.isDown(self.controls.right) then
      if self.jumps >= 2 then
        self.anim = self.animations.walkRight
      else
        self.anim = self.animations.hangRight
      end
      self.facingRight = true
      vx = self.speed  -- Move right
      isMoving = true
    elseif love.keyboard.isDown(self.controls.left) then
      if self.jumps >= 2 then
        self.anim = self.animations.walkLeft
      else
        self.anim = self.animations.hangLeft
      end
      self.facingRight = false
      vx = -self.speed  -- Move left
      isMoving = true
    end
  end

  -- Jumping logic
  if love.keyboard.isDown(self.controls.up) then
    if self.isJumpReleased and self.jumps > 0 then --Only allows player to jump once per up press
      vy = self.jumpPower
      self.jumps = self.jumps - 1
      self.isJumpReleased = false
    end
  else  -- If not pressing up reset ability to jump
    self.isJumpReleased = true
    self:checkGround()
  end

  -- Apply movement to the collider
  self.collider:setLinearVelocity(vx, vy)  -- Scale velocity

  -- If standing still stop animating
  if isMoving == false then
    self.anim:gotoFrame(1)
  end
  self.anim:update(dt)
end

-- Checks if the player is on the ground to reset double jump
function Player:checkGround()
  local contacts = self.collider:getContacts()
  for _, contact in ipairs(contacts) do
    if contact:isTouching() then
      local nx, ny = contact:getNormal()
      if ny < 0 then -- Checking if standing on something
        self.jumps = 2
      end
    end
  end
end

-- Changes collider size for crouched position
function Player:swapColliderSize()
  -- Get current position before destroying collider
  local x, y = self.collider:getPosition()
  local vx, vy = self.collider:getLinearVelocity()

  -- Destroy the existing collider
  self.collider:destroy()

  -- Swap height with width
  if self.height == playerWidth then
    self.height = playerHeight
  else
    self.height = playerWidth
  end
  
  -- Create a new collider with swapped dimensions
  self.collider = self.world:newBSGRectangleCollider(x - self.width/2, y - self.height/2, self.width, self.height, 10)
  self.collider:setFixedRotation(true) -- Keep rotation behavior consistent

  -- Restore previous velocity
  self.collider:setLinearVelocity(vx, vy)
end

-- Returns collider x
function Player:getX()
  return self.collider:getX()
end

-- Returns collider y
function Player:getY()
  return self.collider:getY()
end

-- Returns both at once
function Player:getCoords()
  return self.collider:getPosition()
end
return Player
