function love.load()
  -- Definição da Cor de fundo como branco
  love.graphics.setBackgroundColor(1,1,1)
end

function love.draw()
  love.graphics.setColor(0,0,1,1)
  --Elipse: posicionado em (250, 200) RX = 100, RY=60
  love.graphics.ellipse('fill', 250, 200, 100, 60)
  --Arco: Çreenchido, Cnetro(450, 300), Raio 100 de 36° a 90°
  love.graphics.arc('fill', 450, 300, 100, 0,math.pi/2)
  love.graphics.line(500,100,500,280,650,280,530,140,530,100,500,100)
  love.graphics.polygon('fill',600,100,700,100,650,200)
  --local geometrico com linhas
  local coord = {
    300,50,300,155,380,155,380,155,330,140,330,110,110,345,95,330,95,330,65,380,65,380,50,300,50
  }
  love.graphics.line(coord)
  end