import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    var dx : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        dx = 2
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        
        //clean up- drawa white rectangle over the entire canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        
        //change position
        x += dx
        
        //make the circle bounce at the right edge
        if x > 500{//start of block
            dx = -2 //move left
        } //end of block
        
        // make the circle bounce at the left edge
        if x < 0 {
            dx = 2 // move right
        } //end of block
        
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: 250, centreY: 250, width: 50, height: 50)
        
    }
    
    
}

