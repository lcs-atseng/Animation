import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        y = 250
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        y += 1
        
        // right up - red
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: x, centreY: y , width: 50, height: 50)
        
       
        // right down - blue
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: x, centreY: 500-y, width: 50, height: 50)
        
        // left up - green
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: 500-x, centreY: y, width: 50, height: 50)
        
        // left down - yellow
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(centreX: 500-x, centreY: 500-x, width: 50, height: 50)
        
    }
    
}
