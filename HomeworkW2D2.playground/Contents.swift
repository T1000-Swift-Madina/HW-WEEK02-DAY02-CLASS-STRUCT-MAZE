import UIKit
import Darwin

class Maze {
    var currentPosition: Int
    var isCompleted: Bool
    var isVisited: [String]
    
    init() {
        self.currentPosition = 0
        self.isVisited = ["No", "No", "No", "No"]
        self.isCompleted = false
    }
    
    func moveRight(value: Int) {
        isVisited[value] = "Yes"
        print(self.isVisited)
    }
    
    func moveLeft(value: Int) {
        isVisited[value] = "No"
        print(self.isVisited)
    }
    
    func isComplete() {
        if isVisited[0] == "Yes" &&
            isVisited[1] == "Yes" &&
            isVisited[2] == "Yes" &&
            isVisited[3] == "Yes"
        {
            print("Complete 👍")
    } else {
        print("Not Comletet 👎")
        }
    }
}

var exetMaze = Maze()
exetMaze.moveRight(value: 0)
exetMaze.moveRight(value: 1)
exetMaze.moveRight(value: 2)
exetMaze.moveRight(value: 3)
exetMaze.isComplete()
exetMaze.moveLeft(value: 0)
exetMaze.moveLeft(value: 1)
exetMaze.moveLeft(value: 2)
exetMaze.moveLeft(value: 3)
exetMaze.isComplete()
