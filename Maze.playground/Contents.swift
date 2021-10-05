import UIKit

class Maze {
    var position : Int
    var isVisited : [Bool]
    var isCompleted : Bool


    init() {
        self.position = 0
        self.isVisited = [false, false, false, false]
        self.isCompleted = false
    }
    
    func moveForward(position: Int) {
        isVisited[position] = true
        print(isVisited)
    }
    func moveBackward(position: Int){
        isVisited[position] = true
        print(isVisited)
        
    }
    
    func isComplete() {
        if isVisited == [true, true, true, true] {
        self.isCompleted = true
        print("is it complete? \(isCompleted)")
        }
    }
        
}
var myMaze = Maze()
myMaze.moveBackward(position: 0)
myMaze.moveBackward(position: 1)
myMaze.moveBackward(position: 2)
myMaze.moveForward(position: 3)

myMaze.isComplete()


//var RightSide = Maze()
//    RightSide.moveBackward(position: 3)
//    RightSide.moveBackward(position: 2)
//    RightSide.moveBackward(position: 1)
//    RightSide.moveBackward(position: 0)
//

