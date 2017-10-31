import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position to right
         x += 1
        
        canvas.drawShapesWithBorders = false
        // bottom ellipse going right
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50);
        
        // second ellipse going left
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: 500-x, centreY: 150, width: 50, height: 50);
        
        // third ellipse going right
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50);
        
        // fourth ellipse going left
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: 500-x, centreY: 350, width: 50, height: 50)
        
        // last ellipse going right
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
    
       

        
       
    
    }
    

  

    

}
