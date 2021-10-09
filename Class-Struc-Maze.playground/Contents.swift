import UIKit
import Foundation

class Maze {
    
    var currentPosition : Int , isWall: Bool, isStart: Bool, isVisited=[Bool]()
    var boardArr : [String]
    var message: String
    enum Direction {
        case left
        case right
        case top
        case bottom
    }
    init() {
        self.currentPosition = 0
        self.boardArr = Array(repeating: "  ", count: 4)
        self.isWall = false
        self.isStart = false
        self.isVisited = Array(repeating: false, count: 4)
        self.message = "Wilcome to The Maze"
        print(message)
    }
    
    func startMaze () {
        isStart = true
        displayMaze()
    }
    func moveToDirection(direction: Direction) {
                isWall = false
        if isStart {
            print("Move to \(direction)")
            switch direction {
            case .left:
                goLift()
            case .right:
                goRight()
            case .top:
                goTop()
            case .bottom:
                goBottom()
            }
        } else { print("Please Start Maze by type startMaze()")}
    }
    private func displayMaze () {
        let displayArea = """
            ______
        ➡️ |\(boardArr[0])|\(boardArr[1])|
           |\(boardArr[2])|\(boardArr[3])|
            ______
        """
        print( displayArea)
    }
    private func isEmptyMaze() -> Bool{
        return !boardArr.contains("👤")
    }
    private func firstMove(index: Int){
        boardArr[index] = "👤"
        isVisited[index] = true
        currentPosition = index
    }
    private func setNextPostiotion(direction: Direction){
        switch direction {
        case .right:
            boardArr[currentPosition] = "  "
            currentPosition += 1
            boardArr[currentPosition] = "👤"
            isVisited[currentPosition] = true
        case .left:
            boardArr[currentPosition] = "  "
            currentPosition -= 1
            boardArr[currentPosition] = "👤"
            isVisited[currentPosition] = true
        case .top:
            boardArr[currentPosition] = "  "
            currentPosition -= 2
            boardArr[currentPosition] = "👤"
            isVisited[currentPosition] = true
        case .bottom:
            boardArr[currentPosition] = "  "
            currentPosition += 2
            boardArr[currentPosition] = "👤"
            isVisited[currentPosition] = true
        }
    }
    private func wall(){
        print("No Exit 🚷 Try another direction")
        boardArr[currentPosition] = "👤"
        isWall = !isWall
    }
    private func goRight() {
       if isEmptyMaze() {
           firstMove(index: 0)
       } else if currentPosition == 0 || currentPosition == 2{
           setNextPostiotion(direction: .right)
       } else {
           wall()
       }
       displayMaze()
       isComplete()
   }
    private func goLift() {
        if isEmptyMaze() {
            firstMove(index: 3)
        } else if currentPosition == 1 || currentPosition == 3{
            setNextPostiotion(direction: .left)
        } else {
            wall()
        }
        displayMaze()
        isComplete()
    }
    private func goBottom () {
        if isEmptyMaze() {
            firstMove(index: 2)
        } else if currentPosition == 0 || currentPosition == 1{
            setNextPostiotion(direction: .bottom)
        } else {
            wall()
        }
        displayMaze()
        isComplete()
    }
    private func goTop () {
        if isEmptyMaze() {
            firstMove(index: 1)
        } else if currentPosition == 3 || currentPosition == 2 {
            setNextPostiotion(direction: .top)
        } else {
            wall()
        }
        displayMaze()
        isComplete()
    }
    private func isComplete () {
        if !isVisited.contains(false) {
            print("Congratulation You Complated the Maze ")
            isVisited = Array(repeating: false, count: 4)
        }else {
            print("Keep trying \n")
        }
    }
}


// test
var player1 = Maze()
player1.startMaze()

player1.moveToDirection(direction: .left)
player1.moveToDirection(direction: .left)
player1.moveToDirection(direction: .top)
player1.moveToDirection(direction: .top)
player1.moveToDirection(direction: .right)
player1.moveToDirection(direction: .right)
player1.moveToDirection(direction: .left)
