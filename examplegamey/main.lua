function love.load()
        love.graphics.setBackgroundColor( 255, 200, 100)
end

function love.draw()
        local x = love.mouse.getX()
        local y = love.mouse.getY()
        local wh = 32
        love.graphics.setColor(5,255,255)
        love.graphics.print('I have some cool texxt right here', 300, 400, 0.5)
        love.graphics.rectangle('fill', x-wh/2, y-wh/2, wh, wh)
end

function love.update(dt)
end

function love.focus(bool)
end

function love.keypressed(key, unicode)
end

function love.keyreleased(key,unicode)
end

function love.mousepressed( x,y, button)
end

function love.mousereleased( x, y, button)
end

function love.quit()
end
