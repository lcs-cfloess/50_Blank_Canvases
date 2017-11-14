
import Cocoa
import PlaygroundSupport



// Create canvas
let canvas = Canvas(width: 400, height: 300)

var x : Int

x = 200
canvas.drawLine(fromX: 100, fromY: 100, toX: 200, toY: 100
)
canvas.translate(byX: 200, byY: 100)
canvas.rotate(by: 120)
canvas.drawLine(fromX: 0, fromY: 0, toX: 100, toY: 0)
canvas.translate(byX: 100, byY: 0)
canvas.rotate(by: 120)
canvas.drawLine(fromX: 0, fromY: 0, toX: 100, toY: 0)
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView
