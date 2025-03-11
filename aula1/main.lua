-- arquivos de entrada para software em LUA 
-- Main.LUA

-- esqueleto básico

-- 1)Responsável pela carga de insumos do jogo
function love.load()
  local fonte = love.graphics.newFont(16)
  love.graphics.setFont(fonte)
  love.graphics.setBackgroundColor(0,0,0)
end
-- 2)Responsável pela dinâmica de atualização(tempo)

function love.update(dt)
  
end
-- 3)Responsável pela renderização da tela no FPS
function love.draw()
  love.graphics.setColor(1,1,1,1)
  love.graphics.print("Engenharia de Software", 30, 0, 300)
  love.graphics.circle('fill', 200, 150, 40)
  love.graphics.setColor(0,1,0,1) --verde
  love.graphics.circle('line', 400, 150, 40)
  love.graphics.setColor(1,0,0,1) -- vermelho
  love.graphics.rectangle('fill',500, 200, 120, 100)
  end