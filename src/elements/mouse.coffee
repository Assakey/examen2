class Mouse extends PIXI.Graphics
    constructor: (x, y, color, width, height) ->
        super()
        @x = null
        @y = null
        @w = @width
        @h = @heigth
        @alpha = 1
        @build()

        


    build:=>
        @beginFill(0xf03e38)
        @drawRect(0, 0, 300, 300)
        @endFill()







module.exports = Mouse