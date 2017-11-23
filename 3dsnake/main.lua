function love.load()
        love.graphics.setBackgroundColor( 0, 50, 200)
        xCloud = 300
        ga = 200
        px = 200
        py = 200
        pv = 200
        pdir = 0
        ares= 0.9
        sceensize = 800
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

        if pdir == 0 then
                pvx = pv
                pvy = 0
        end
        if pdir == 2 then
                pvx = -pv
                pvy = 0
        end
        if pdir == 3 then
                pvx = 0
                pvy = pv
        end
        if pdir == 1 then
                pvx = 0
                pvy = -pv
        end
        px = px + pvx*dt
        py = py + pvy*dt

        px = px-math.floor(px/800)*800
        py = py-math.floor(py/600)*600

        
end

function love.focus(bool)
end

function love.keypressed(key, unicode)
        if key == 'left' then 
                pdir = 2
        end
        if key == 'right' then 
                pdir = 0
        end
        if key == 'down' then 
                pdir = 3
        end
        if key == 'up' then 
                pdir = 1
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
