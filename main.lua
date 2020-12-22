local dungeon = {}
dungeon.nbCol = 9
dungeon.nbLig = 6
dungeon.map = {}

function genDungeon()
    dungeon.map = {}

    local nLig, nCol
    for nLig=1, dungeon.nbLig do
        dungeon.map[nLig] = {}
        for nCol=1, dungeon.nbCol do
            dungeon.map[nLig][nCol] = nil
        end
    end
    
end

function love.load()
    genDungeon()
end

function love.update(dt)

end

function love.draw()
    local x, y

    x = 5
    y = 5

    local lCase = 34
    local hCase = 13
    local eCase = 5

   
    for nLig=1, dungeon.nbLig do
        x = 5
        for nCol=1, dungeon.nbCol do
            if dungeon.map[nLig][nCol] == nil then
                love.graphics.setColor(30/255, 30/255, 30/255)
            else
                love.graphics.setColor(1, 1, 1)                
            end
            love.graphics.rectangle("fill", x, y, lCase, hCase)

            x = x + lCase + eCase
        end
        y = y + hCase + eCase
    end

    love.graphics.setColor(1, 1, 1)                

end