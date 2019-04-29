class Cuadro extends PIXI.Graphics
    constructor: (x, y, color, width, height) ->
        super()
        @x = null
        @y = null
        @w = @width
        @h = @heigth
        @cuadro = @
        @app = @app
        @build()
        @animate()
        @cuadroanimation= false
        @direccion= +.1
        @otra= +50
        @interactive = true
        @on "mouseover", @mouseover
        


    build:=>
        @beginFill(0x3a62f0)
        @drawRect(0, 0, window.innerWidth/2, window.innerHeight/2)
        @endFill()
    mouseover:=>
        @cuadroanimation= true
        console.log 'kdjcfnjkn'
    animate:(app)=>
        if @cuadroanimation == true
            @cuadro.scale.x -= @direccion 
            @cuadro.x += @otra * 1
            if @cuadro.scale.x < 0 
                @direccion= @direccion * -1
                @otra = @otra * -1
                
            if @cuadro.scale.x >= 1
                @cuadroanimation = false 
                @cuadro.scale.x = 1
                @direccion= @direccion * -1
                @otra = @otra * -1







module.exports = Cuadro
