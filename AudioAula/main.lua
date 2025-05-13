--L14 Musics/Songs - Trilha sonorra
--Sound Fx - Sound Effects - Efeitos Sonoros

function love.load()
  musica = love.audio.newSource("musica.ogg","stream")
  --love.audio.play(musica)
  --Configurar para execução com repetição (loop)
  musica:setLooping(true)
  musica:play()
  --Carga dos efeitos sonoros
  efeito1 = love.audio.newSource('efeito.ogg','static')
  efeito2 = love.audio.newSource('tiro.wav','static')
  efeito3 = love.audio.newSource('buzina.mp3','static')
  efeito4 = love.audio.newSource('computador.mp3','static')
  --Animação
  vibe = love.graphics.newVideo('karatecasimples.ogv')
  lowfy = love.graphics.newVideo('vibe.ogv')
  vibe:play()
  lowfy:play()
end

function love.draw()
  
   love.graphics.draw(vibe, 75, 100, 0, 1, 1)
  --love.graphics.draw(lowfy, 400, 100, 0, 0.4, 0.4)
  
end

function love.keypressed(tecla)
  -- tecla m para tocar a musica
  if tecla =='m' then
    musica:play()
  end
  -- tecla space para parar a musica
  if tecla == 'space' then
    musica:pause()
  end
  if tecla =='1' then
    efeito1:play()
  end
  if tecla =='2' then
    efeito2:play()
  end
  if tecla =='3' then
    efeito3:play()
  end
  if tecla =='4' then
    efeito4:play()
  end
  
  -- Manipular o volume da trilha sonora
  if tecla == 'up' or tecla == 'down' then
    atual = musica:getVolume()
    if tecla == 'up' then
      atual = atual + 0.1
    end
    if tecla == 'down' then
      atual = atual - 0.1
    end
    musica:setVolume(atual)
  end
  --Manipular a fequencia da trilha sonora
  if tecla == 'left' or tecla == 'right' then
    atual = musica.getPitch()
    if tecla == 'left' then
      atual = atual - 0.1
      if atual <= 0 then
        atual = 0.01
      end
    end
    if tecla == 'right' then
      atual = atual + 0.1
    end
    musica.setPitch(atual)
  end
  
end
