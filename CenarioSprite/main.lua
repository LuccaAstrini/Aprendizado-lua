local Q = love.graphics.newQuad
local T = love.keyboard.isDown
local LG = love.graphics

local mapa
local mLarg, mAlt
local mX, mY
local visaoLar, visaoAlt
local zX, zY

local qdImagem
local qdTam = 32
local quadros = {}
local loteQuadros

function love.load()
  local fonte = LG.newFont(14)
  LG.setFont(fonte)
  
  configMapa()
  configVisao()
  configQuadros()
end

function love.draw()
  LG.draw(loteQuadros, math.floor(-zX * (mX % 1) * qdTam), math.floor(-zY * (mY % 1) * qdTam), 0, zX, zY)
  LG.print("FPS: " .. love.timer.getFPS(), 10, 20)
end

function love.update(dt)
  if (T('up')) then
    moverMapa(0, -0.2 * qdTam * dt)
  elseif (T('down')) then
    moverMapa(0, 0.2 * qdTam * dt)
  end
  
  if (T('left')) then
    moverMapa(-0.2 * qdTam * dt, 0)
  elseif (T('right')) then
    moverMapa(0.2 * qdTam * dt, 0)
  end
end

function configMapa()
  mLarg = 60
  mAlt = 40
  
  mapa = {}
  
  for x = 1, mLarg do
    mapa[x] = {}
    
    for y = 1, mAlt do
      mapa[x][y] = love.math.random(0, 3)
    end
  end
end

function configVisao()
  mX = 1
  mY = 1
  
  visaoLar = 26
  visaoAlt = 20
  zX = 1
  zY = 1
end

function configQuadros()
  qdImagem = LG.newImage('mundo.png')
  qdImagem:setFilter('nearest', 'linear')
  qTam = 32
  
  L, A = qdImagem:getWidth(), qdImagem:getHeight()
  
  -- Grama
  quadros[0] = Q(0 * qTam, 20 * qTam, qTam, qTam, L, A)
  
  -- Xadrez
  quadros[1] = Q(2 * qTam, 0 * qTam, qTam, qTam, L, A)

  -- Piso
  quadros[2] = Q(4 * qTam, 0 * qTam, qTam, qTam, L, A)

  -- Tapete
  quadros[3] = Q(3 * qTam, 9 * qTam, qTam, qTam, L, A)
  
  loteQuadros = LG.newSpriteBatch(qdImagem, visaoLar * visaoAlt)
  modificaLote()
end

function modificaLote()
  loteQuadros:clear()
  
  for x = 0, visaoLar - 1 do
    for y = 0, visaoAlt - 1 do
      loteQuadros:add(quadros[mapa[x + math.floor(mX)][y + math.floor(mY)]], x * qTam, y * qTam)
    end
  end
  
  loteQuadros:flush()
end

function moverMapa(dX, dY)
  velhoX, velhoY = mX, mY
  
  mX = math.max(math.min(mX + dX, mLarg - visaoLar), 1)
  
  mY = math.max(math.min(mY + dY, mAlt- visaoAlt), 1)
  
  if math.floor(mX) ~= math.floor(velhoX) or math.floor(mY) ~= math.floor(velhoY) then 
    modificaLote()
  end
end