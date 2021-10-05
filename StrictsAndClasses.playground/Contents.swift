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
        self.isVisited = Array(repeating: false, count: 4)
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
        setIsStart(isStart: true)
        displayMaze()
    }
    func setIsStart(isStart:Bool){
        self.isStart = isStart
    }
    func getIsStart()->Bool{
        return self.isStart
    }
    func move(direction: String) {
        if checkMove() {
            
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
    }

    func checkMove () -> Bool{
        // check is started , visited, wall,
        
        let check = isStart && !isVisited[currentPosition] ? true :  false
        return check
    }
    
    func goRight() {
        if !boardArr[0].contains("👤") && !boardArr[1].contains("👤") && !boardArr[2].contains("👤") && !boardArr[3].contains("👤") {
            boardArr[0] = "👤"
            displayMaze()
        }
        else if currentPosition == 0 || currentPosition == 2{
            boardArr[currentPosition] = "  "
            isVisited[currentPosition] = true
            currentPosition += 1
            boardArr[currentPosition] = "👤"
            displayMaze()
            isComplete()
        } else {
            displayMaze()
            print("there is no Exit here")
        }
    }
    func goLift() {
        print("left")
        if currentPosition == 1 || currentPosition == 3{
            boardArr[currentPosition] = "  "
            isVisited[currentPosition] = true
            currentPosition -= 1
            boardArr[currentPosition] = "👤"
            displayMaze()
            isComplete()
        } else {
            displayMaze()
            print("there is no Exit here")
        }
    }
    func goBottom () {
        print("bottom")
        if currentPosition == 0 || currentPosition == 1{
            boardArr[currentPosition] = "  "
            isVisited[currentPosition] = true
            currentPosition += 2
            boardArr[currentPosition] = "👤"
            displayMaze()
            isComplete()
        } else {
            displayMaze()
            print("there is no Exit here")
        }
    }
    func goTop () {
        print("top")
        if currentPosition == 3 {
            boardArr[currentPosition] = "  "
            isVisited[currentPosition] = true
            currentPosition -= 2
            boardArr[currentPosition] = "👤"
            displayMaze()
            isComplete()
        } else {
            displayMaze()
            print("there is no Exit here")
        }
    }
    func isComplete () {
        if isVisited.contains(false) {
            print("Congratulation You Complated the Maze ")
        }else {
            print("try again")
        }
    }
    
    
}



var player1 = Maze()
player1
// start maze
player1.startMaze()

//var boardArr = [
//["👤", " "],
//[" ", " "]
//]
//boardArr[0][0]
// choose a direction

player1.move(direction: "left")
sleep(1)

player1.move(direction: "right")
sleep(1)

player1.move(direction: "bottom")
sleep(1)

player1.move(direction: "left")
sleep(1)

player1.move(direction: "top")

player1.isComplete()
player1.isVisited
