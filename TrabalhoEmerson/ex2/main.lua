function love.load()
    pontos = {
        50, 150,
        50, 250,
        100, 200,
        150, 150,
        200, 150,
        250, 50,
        200,50,
        150,50,
        100,100,
        50,150
    }
end

function love.draw()
    love.graphics.setColor(0, 0, 1)
    love.graphics.setLineWidth(2)
    love.graphics.line(pontos)
    love.graphics.setBackgroundColor(1,1,1,1)
end
