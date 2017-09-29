function love.load()
        love.graphics.setBackgroundColor( 0, 50, 200)
        xCloud = 300
        px = 200
        py = 200
        pax = 0
        pay = 0
        pvx = 0
        pvy = 0
        ares= 0.5
        coolpic = love.graphics.newImage('textures/coolpic.png')
end

function love.draw()
        local x = love.mouse.getX()
        local y = love.mouse.getY()
        local wh = 32

        love.graphics.setColor(0,255,100)
        love.graphics.rectangle('fill', 0,400,800,600)
        
        love.graphics.setColor(255,255,255)
        love.graphics.rectangle('fill',xCloud,100,100,64)

        love.graphics.setColor(0,255,20)
        love.graphics.draw(coolpic,px,py)
end

function love.update(dt)
        xCloud = xCloud + 32*dt
        if xCloud > 800 then
                xCloud = -100
        end

        pvx = pvx + (pax - ares*pvx)*dt
        pvy = pvy + (pay - ares*pvy)*dt
        px = px + pvx*dt
        py = py + pvy*dt

        
end

function love.focus(bool)
end

function love.keypressed(key, unicode)
        if key == 'left' then 
                pax = pax - 5
        end
        if key == 'right' then 
                pax = pax + 5
        end
        if key == 'down' then 
                pay = pay + 5
        end
        if key == 'up' then 
                pay = pay - 5
        end
end

function love.keyreleased(key,unicode)
end

function love.mousepressed( x,y, button)
end

function love.mousereleased( x, y, button)
end

function love.quit()
end
