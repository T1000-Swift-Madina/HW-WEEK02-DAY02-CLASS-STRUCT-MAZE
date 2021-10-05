import UIKit

//Create a class/struct that has properties like currentPosition, isWall, isStart, isVisited
//Create functions to move the person in the maze in all directions and complete the path.
//Functions can be like goRight, goLeft, goBottom, goTop, isComplete
//Hint: Try to use arrays, struct/classes, properties and initializers.
//Note: Feel free to add/change the variables as you need. Evaluation for this task is not just about completion but to see how you genuinely attempt to use different concepts you've learnt.
//PLEASE SUBMIT YOUR SOLUTION BEFORE 7th Oct 2021 at 9:00 A.M.

/* scenario
1. check if user started
 2. start in top right
 3. make a first move
 4. check if could preform next move or there is wall
 5. if wall, stay same position, print message, show options to move to another direction
 6. if go through all space End
 */
class Maze {

    var currentPosition : Int , isWall: Bool, isStart: Bool, isVisited=[Bool]()
    var boardArr = ["  ", "  ", "  ", "  "]
    var trackPosition = [Int]()
    var name: String, message: String, input: String
    init() {
        
        self.currentPosition = 0
        self.isWall = false
        self.isStart = false
        self.isVisited = [Bool]()
        self.name = ""
        self.message = "Wilcome to The Maze"
        self.input = ""
        print(message)
        
    }
//    init(currentPosition : Int  = 0 , isWall: Bool = false, isStart: Bool=false, isVisited: Bool=false) {
//        self.currentPosition = currentPosition
//        self.isWall = isWall
//        self.isStart = isStart
//        self.isVisited = isVisited
//    }
    func displayMaze () {
        print("➡️ |\(boardArr[0])|\(boardArr[1])|")
        print("   |\(boardArr[2])|\(boardArr[3])|")
    }
    func startMaze () {
        isWall = !isWall
        displayMaze()
    }
    func move(direction: String) {
        print("go to \(direction)")
        switch direction {
        case "right", "Right", "r", "R":
            goRight()
        case "left", "Left", "l", "L":
            goLift()
        case "top", "Top":
            goTop()
        case "bottom", "Bottom":
            goBottom()
        default:
            "Please Type one of this dirctions: right, left, top, bottom"
        }
    }
    func checkMove () {
        // check is started , visited, wall,
        
        // check currentPosition
        if !trackPosition.contains(currentPosition) && isStart && !isVisited[currentPosition - 1] && !isWall {
            trackPosition.append(currentPosition)
        } else {
            
        }
        // return Bool
    }
    func goRight() {
        print("right")
    }
    func goLift() {
        print("left")
    }
    func goBottom () {
        print("bottom")
    }
    func goTop () {
        print("top")
    }
    func isComplete () {
        
    }
    
    
}

//var boardArr = [
//["👤", " "],
//[" ", " "]
//]
//boardArr[0][0]

var player1 = Maze()
player1
// start
player1.startMaze()
// choose a direction
player1.move(direction: "Right")
// check is started , visited, wall,
