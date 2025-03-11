local texto
local tamanho

function love.load()
  fonte = love.graphics.newFont("Fonte/planetkosmos.ttf",20)
  texto = 'Texto para o usuário do jogo'
  love.graphics.setFont(fonte)
  love.graphics.setColor(1,0,0,1)
  tamanho = fonte:getWidth(texto)
end

function love.draw()
  love.graphics.print("O pai é o mior programador \ndo muindo", 300, 100)
  love.graphics.printf("Rebolando slowly for the crias", 200, 200, 250, 'center')

end

  