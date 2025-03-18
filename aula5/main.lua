local angulo = 0
local dimen = 100
local alt, larg, personagem
local telaAlt, telaLarg, dx, dy
--Tabela de propriedades de elementos
local bola = {}

function love.load()
  esc = 0.3
  love.graphics.setBackgroundColor(1,0.88,0,0.88)
  --love.graphics.setColor(1,0,0,1)
  personagem = love.graphics.newImage('robo.jpg')
  alt, larg = personagem:getHeight(), personagem:getWidth()
  telaAlt, telaLarg =  love.graphics.getHeight(), love.graphics.getWidth()
  dx, dy = larg / 2.0, alt / 2.0
  --Caracterizar a bola
  bola.img = love.graphics.newImage('bola.png')
  bola.posX = 25
  bola.posY = 500
  bola.larg = bola.img:getWidth()
end
function love.draw()
  --love.graphics.rotate(angulo)
 -- love.graphics.rectangle('fill', 300,400,dimen, dimen)
 love.graphics.draw(personagem, telaLarg / 2,  telaAlt / 2, angulo, esc, esc, dx, dy)
 love.graphics.draw(bola.img, bola.posX, bola.posY)
end 
function love.update(dt)
  delta = math.pi * dt
  --Pressionando H gira no sentido horário
  if love.keyboard.isDown('h') then
    angulo = angulo + delta
  end
  --pressionando A gira no sentido anti-hórário
  if love.keyboard.isDown('a') then
    angulo = angulo - delta
  end
  --Movimentação da bola
  if bola.posX > (telaLarg - bola.larg) then
    bola.posX = telaLarg - bola.larg
  else
    bola.posX = bola.posX + 50 * dt
    end
end