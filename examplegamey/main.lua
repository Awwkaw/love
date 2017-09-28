function love.load()
        love.graphics.setBackgroundColor( 0, 50, 200)
        xCloud = 300
end

function love.draw()
        local x = love.mouse.getX()
        local y = love.mouse.getY()
        local wh = 32

        love.graphics.setColor(0,255,100)
        love.graphics.rectangle('fill', 0,400,800,600)
        
        love.graphics.setColor(255,255,255)
        love.graphics.rectangle('fill',xCloud,100,100,64)
end

function love.update(dt)
        xCloud = xCloud + 32*dt
        if xCloud > 800 then
                xCloud = -100
        end
        
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
