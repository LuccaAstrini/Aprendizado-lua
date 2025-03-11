local texto
local tamanho

local l, a, flags
local so, larg, alt, ljan, ajan

function love.load()
  fonte = love.graphics.newFont("Fonte/planetkosmos.ttf",20)
  padrao = love.graphics.newFont(20)
  texto = 'Texto para o usuário do jogo'
  love.graphics.setColor(1,0,0,1)
  tamanho = fonte:getWidth(texto)
  --Coletando informações do Pc do jogador
  l, a, flags = love.window.getMode()
  so =  love.system.getOS() -- coleta do Sist. Oper da máquina
  larg, alt = love .window.getDesktopDimensions(flags.display)
  ljan = love.graphics.getWidth()
  ajan = love.graphics.getHeight()
end
function love.draw()
  love.graphics.setFont(fonte)
  --love.graphics.print("O pai é o mior programador \ndo muindo", 300, 100)
  love.graphics.printf(texto .. " (" .. tamanho .. ")", 100, 100, tamanho /1.5, 'center')
  --love.graphics.print(tamanho .. 'px', 400, 500) os dois pontos serve para concatenar os textos.
  love.graphics.setFont(padrao)
  love.graphics.print("Sistema Operacional: " .. so, 200, 300)
  love.graphics.print("Resolução do monitor: " .. larg .. "x" .. alt, 200, 350)
  love.graphics.print("Resolução da janela: " .. ljan .. "x" .. ajan, 200, 400)
  
  local x, y = love.mouse.getPosition()
  love.graphics.print("Mouse em [" .. x .. "," .. y .. "]", 200, 450)
end
  