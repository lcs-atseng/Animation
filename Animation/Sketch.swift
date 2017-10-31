import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var dx : Int
    var y : Int
    var dy : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 0, toButNotIncluding: 501)
        y = random(from: 0, toButNotIncluding: 501)
        dx = 3
        dy = 3
        
        //no border
      
      canvas.drawShapesWithBorders = false
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
     
        //clean up- drawa white rectangle over the entire canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
       
        //change position
        x += dx
        y += dy
        
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        //make the circle bounce at the right edge
        if x > 500{//start of block
            dx = -3 //move left
        } //end of block
        
        // make the circle bounce at the left edge
        if x < 0 {
            dx = 3 // move right
        } //end of block
       
        if y > 500{
            dy = -3  //move down
    }
        
        if y < 0{
            dy = 3 // move up
        }
    
    
}

}
