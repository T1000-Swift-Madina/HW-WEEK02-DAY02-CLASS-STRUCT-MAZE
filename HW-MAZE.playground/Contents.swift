import UIKit

/* You have a maze of size 2x2
 Create a class/struct that has properties like currentPosition, isWall, isStart, isVisited
 Create functions to move the person in the maze in all directions and complete the path.
 Functions can be like goRight, goLeft, goBottom, goTop, isComplete
 Hint: Try to use arrays, struct/classes, properties and initializers. Feel free to add/change the variables as you need. Evaluation for this task is not just about completion but to see how you genuinely attempt to use different concepts you leant */

class RaghadMaze {
    
    var position = ["place1","place2","place3","place4"]
    var currentPosition = 0
    var isStart :Bool
    var isComplate :Bool
    var isWall: Bool
   
    init (isStart :Bool,isComplate: Bool, isWall: Bool) {
        self.isComplate = isComplate
        self.isStart = isStart
        self.isWall = isWall
    }
    
    func goRight () {
        let player = "player"
        if ( isWall == true)  {
            print ("There ia a wall")}
        
    else {
     
        if player == position[0]   {
            
            position[1]
            position[2]
            position[3]
            print(position)
        }
        
        
    }
        
    }
    
        func goleft () {
            if ( isWall == true)  {
                print ("There ia a wall")}
        
        
    }
   
    
    
    
    
}
var r = RaghadMaze(isStart: true, isComplate: true, isWall: false)
r.goRight()
  /* func goLeft () {
isStart = true
            for i = 4 in mazeArray > currentPosition.count {
            mazeArray[3]
            mazeArray[2]
            mazeArray[1]
                mazeArray[0] }  }
    
    
    
    
    

    if currentPosition [0] == {
      print(position[0],position[1] ,position[2] ,position[3])
        }
    
   else if( B < currentPosition ){
        print (currentPosition[1] ,currentPosition[2] ,currentPosition[3])}
    
    
    else if (C < currentPosition) {
        print(currentPosition[2] ,currentPosition[3]) }
    
else if (D < currentPosition) {
    print(mcurrentPosition[3]) }
    

    
    
}



