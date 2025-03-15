--Variaveis para o controle dinâmico
local posX = 0
local veloc = 100
local larg = 200

function love.load()
  love.graphics.setBackgroundColor(1,1,1)
end

function love.draw()
  --cor dos elementos
  love.graphics.setColor(1,0,0,1)
  love.graphics.line(0,0, 400, 400)
  --Em Azul, linha que cruza o meio da tela
  love.graphics.setColor(0,0,1,1)
  love.graphics.line(0, love.graphics.getHeight()/2, love.graphics.getWidth(), love.graphics.getHeight()/2)
  --Verde, Poligono com os pontos definidos
  love.graphics.setColor(0,1,0,0.5)
  love.graphics.polygon('fill', {posX+10,100,posX+10+larg,100,posX+10+larg,larg+100,posX+10,larg+100})
end

function love.update(dt)
  posX = posX + veloc * dt
  if(posX > love.graphics.getWidth()) then
     posX = -larg
    end

  end