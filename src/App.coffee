Cuadro = require("./elements/Cuadro")
Mouse = require("./elements/Mouse")
DataCuadro = require('./data/circles')
Stage = require("./data/stage")

class App extends PIXI.Application
  animation:true
  animationNodes:[]
  myStage: Stage
  cuadros:[]
  cuadroanimation: false
  cuadroanimation2: false
  cuadroanimation3: false
  cuadroanimation4: false
  direccion: +.1
  otra: +50
  constructor:(w,h,o)->
    super(w,h,o)
    #@on "mouseover", @onButtonOver
    #@on "mouseout", @onOut
    document.body.appendChild @view
    #window.addEventListener 'mouseover', @onButtonOver
    @build1()
    @build2()
    @build3()
    @build4()
    #@buildMouse()
    @animate()








  build1:=>
    @cuadro = new Cuadro(0, 0, @color)
    @cuadro.x = 0
    @stage.addChild(@cuadro)
    @cuadros.push(@cuadro)
    @addAnimationNodes(@cuadro)


  build2:=>
    @cuadro2 = new Cuadro(0, 0, @color)
    @cuadro2.x = 1000
    @stage.addChild(@cuadro2)
    @cuadros.push(@cuadro2)
    @addAnimationNodes(@cuadro2)

  build3:=>
    @cuadro3 = new Cuadro(0, 0, @color)
    @cuadro3.y = 1000
    @stage.addChild(@cuadro3)
    @cuadros.push(@cuadro3)
    @addAnimationNodes(@cuadro3)

  build4:=>
    @cuadro4 = new Cuadro(0, 0, @color)
    @cuadro4.y = 1000
    @cuadro4.x = 1000
    @stage.addChild(@cuadro4)
    @cuadros.push(@cuadro4)
    @addAnimationNodes(@cuadro4)
  




  addAnimationNodes:(child)=>
    @animationNodes.push child
    null

  animate:=>
    @ticker.add ()=>
      #@onButtonOver(@cuadro, @cuadro2, @cuadro3, @cuadro4)
      for n in @animationNodes
        n.animate?()

    null

module.exports = App
