--IntroSprite
--Apelido
local LG = love.graphics
--Variável global para a imagem (Sprite)
local personagem
local quadros ={}
local tempo = 0.1
local atual = 1

function love.load()
  LG.setBackgroundColor(1,1,1)
  personagem = LG.newImage("sprite-dir.png")
  --Definir os Quadriláteros(ladrilhos)
  --NewQuad(poX,posY, larg, alt.lsprite, asprite)
  --q01 = LG.newQuad(0, 0, 32,32, 256,32)
  --q02 = LG.newQuad(32, 0, 32,32, 256,32)
  
  --Automatizar a definição dos Quadriláteros

for c = 1,8 do
  quadros[c] = LG.newQuad((c-1)*32,0, 32,32, 256,32)
  end
end

function love.draw()
  --LG.draw(personagem, 10,300) -- Todo o sprite
  --LG.draw(personagem, q01, 50,50) -- Apenas o 1° ladrilho
  --LG.draw(personagem, q02, 50,100) -- 2° Ladrilho
 -- for c = 1,8 do
 --  LG.draw(personagem, quadros[c], 50, c*50)
 --  end
 LG.draw(personagem, quadros[atual], 350, 300)
end

function love.update(dt)
  tempo = tempo + dt
  if tempo >0.2 then
    tempo = 0.1
    atual = atual +1 -- incrementa o quad atual
    if atual > 8 then -- sechegar no final recomeça
      atual = 1
      end
    end
  
  end
  