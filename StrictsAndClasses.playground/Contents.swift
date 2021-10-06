import UIKit

//Create a class/struct that has properties like currentPosition, isWall, isStart, isVisited
//Create functions to move the person in the maze in all directions and complete the path.
//Functions can be like goRight, goLeft, goBottom, goTop, isComplete
//Hint: Try to use arrays, struct/classes, properties and initializers.
//Note: Feel free to add/change the variables as you need. Evaluation for this task is not just about completion but to see how you genuinely attempt to use different concepts you've learnt.
//PLEASE SUBMIT YOUR SOLUTION BEFORE 7th Oct 2021 at 9:00 A.M.

/* scenario
1. check if user started
 2. start in top right or bottom right
 3. make a first move
 4. check if could perform next move or there is wall
 5. if wall, stay same position, print message, show options to move to another direction
 6. if go through all space End
 */

// Edit: 1. make the user enter to the maze from anyware. 2. try make the array 2D, 3. user can move through maze although he visited the room
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

    func displayMaze () {
        print("    ______")
        print("➡️ |\(boardArr[0])|\(boardArr[1])|")
        print("   |\(boardArr[2])|\(boardArr[3])|")
        print("    ______")
    }
    func startMaze () {
        setIsStart(isStart: true)
        displayMaze()
    }
    func setIsStart(isStart:Bool){
        self.isStart = isStart
    }
    
    func move(direction: String) {
//        if checkMove() {
            
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
//        }
    }
// check next visit
    //toggle wall 
//    func checkMove () -> Bool{
//        // check is started , visited, wall,
//        if !isStart { print("Please Start the Mase")}
//        let check = !isVisited[currentPosition] ? true :  false
//        return check
//    }
    
    func goRight() {
        if !boardArr[0].contains("👤") && !boardArr[1].contains("👤") && !boardArr[2].contains("👤") && !boardArr[3].contains("👤") {
            if isVisited[0] == false {
                boardArr[0] = "👤"
                isVisited[0] = true
                print(currentPosition)
                displayMaze()
            }
        }
        else if currentPosition == 0 || currentPosition == 2{
            boardArr[currentPosition] = "  "
            currentPosition += 1
            print(currentPosition)
            if !isVisited[currentPosition] {
                boardArr[currentPosition] = "👤"
                isVisited[currentPosition] = true
                displayMaze()
                isComplete()
            }
        } else {
            displayMaze()
            print("there is no Exit here")
        }
    }
    func goLift() {
        
        if currentPosition == 1 || currentPosition == 3{
            boardArr[currentPosition] = "  "
            currentPosition -= 1
            if !isVisited[currentPosition] {
                boardArr[currentPosition] = "👤"
                isVisited[currentPosition] = true
                displayMaze()
                isComplete()
            }
        } else {
            displayMaze()
            print("there is no Exit here")
        }
    }
    func goBottom () {
        
        if currentPosition == 0 || currentPosition == 1{
            boardArr[currentPosition] = "  "
            currentPosition += 2
            if !isVisited[currentPosition] {
                boardArr[currentPosition] = "👤"
                isVisited[currentPosition] = true
                displayMaze()
                isComplete()
            }
        } else {
            displayMaze()
            print("there is no Exit here")
        }
    }
    func goTop () {
        
        if currentPosition == 3 || currentPosition == 2 {
            boardArr[currentPosition] = "  "
            currentPosition -= 2
            if !isVisited[currentPosition] {
                boardArr[currentPosition] = "👤"
                isVisited[currentPosition] = true
                displayMaze()
                isComplete()
            }
        } else {
            displayMaze()
            print("there is no Exit here")
        }
    }
    func isComplete () {
        if !isVisited.contains(false) {
            print("Congratulation You Complated the Maze ")
        }else {
            print("Keep trying ")
        }
    }
    
    
}



var player1 = Maze()
player1
// start maze
player1.startMaze()

player1.move(direction: "bottom")
sleep(1)
player1.move(direction: "bottom")
player1.move(direction: "right")
sleep(1)
player1.move(direction: "top")
sleep(1)
player1.move(direction: "left")

//player1.move(direction: "r")
//sleep(1)
//player1.currentPosition
//
//player1.move(direction: "bottom")
//sleep(1)
//
//player1.move(direction: "r")
//sleep(1)
//
//player1.move(direction: "top")
//sleep(1)
//
//player1.move(direction: "top")

player1.isComplete()
player1.isVisited
