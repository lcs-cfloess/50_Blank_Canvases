
import Cocoa
import PlaygroundSupport



// Create canvas
let canvas = Canvas(width: 500, height: 500
)

var x : Int

x = 40
canvas.drawLine(fromX: 0, fromY: 0, toX: x, toY: 0
)
canvas.translate(byX: x, byY: 0)
canvas.rotate(by: 120)
canvas.drawLine(fromX: 0, fromY: 0, toX: x, toY: 0)
canvas.translate(byX: x, byY: 0)
canvas.rotate(by: 120)
canvas.drawLine(fromX: 0, fromY: 0, toX: x, toY: 0)
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


