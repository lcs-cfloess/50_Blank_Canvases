//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height:700)
/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
canvas.translate(byX: 25, byY: 25)
canvas.drawAxes()
// thicker lines
canvas.defaultLineWidth = 5

//draw triangle 
var x = 100


canvas.drawLine(fromX: 0, fromY: 0, toX: x, toY: 0
)
canvas.translate(byX: x, byY: 0)
canvas.rotate(by:120)
canvas.drawLine(fromX: 0, fromY: 0, toX: x, toY: 0)
canvas.translate(byX: x, byY: 0)
canvas.rotate(by:120)
canvas.drawLine(fromX: 0, fromY: 0, toX: x, toY: 0)
canvas.translate(byX: x, byY: 0)
canvas.rotate(by:120)

//move origin back
canvas.translate(byX: -25, byY: -25)


canvas.translate(byX: 25, byY: 125)

for _ in 1...5 {
    canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
    canvas.translate(byX: 80, byY: 0)
    canvas.rotate(by: 72)
}

canvas.translate(byX: -25, byY: -125)







canvas.translate(byX: 50, byY: 325)

for _ in 1...6 {
    canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
    canvas.translate(byX: 80, byY: 0)
    canvas.rotate(by: 60)
}

canvas.translate(byX: -50, byY: -325)


func drawPolygon(withsides n : Int, sidelength l : Int, start x : Int, start y : Int) {
    //Move to the starting point
    canvas.translate(byX: x, byY: y)
    
    //finde iterior angle
    let inerior = (n-2) * 180 / n
    
    //find exterior
    let exterior = 180 - inerior
    
    //Draw sides
    for _ in 1...n {
        
        //Drawe sides
        canvas.drawLine(fromX: 0, fromY: 0, toX: 1, toY: 0)
        
        //Move to the end of line
        canvas.translate(byX: 1, byY: 0)
        
        //Rotate
        canvas.rotate(by: Degrees(exterior))
        
    }
    
}

//Draw a septagon

drawPolygon(withsides: 10, sidelength: 120, start: 59, start: 200)
/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

