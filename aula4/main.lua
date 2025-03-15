function love.load()
  love.graphics.setFont(love.graphics.newFont(20))
  love.graphics.setBackgroundColor(1,0,0,1)
  --Carregar o arquivo a ser usado
  cursor = love.mouse .newCursor('icoMouse.png')
  --Definir como o atual
  love.mouse.setCursor(cursor)
  
end
local mensagem = ""

function love.draw()
  love.graphics.print("Pressione qualquer tecla para sortear a posição do mouse", 50,50)
  -- Mostrar qual botão do mouse foi pressionad
  if love.mouse.isDown(1) then
    mensagem = " esquerdo "
  elseif love.mouse.isDown(2) then
    mensagem =" direito "
  elseif love.mouse.isDown(3) then
    mensagem = " bolinha do mouse "
  end
  love.graphics.print("Botão " .. mensagem .. "pressionado!", 100,100)
end

function love.keypressed()
  local x,y = math.random(0,800), math.random(0,600)
  love.mouse.setPosition(x,y)
  end