import UIKit
import Darwin

class Maze {
    var currrentpostion: Int
    var isCompleted: Bool
    var isVisted: [String]
    var moveRight : String
    var moveUp : String
    var moveDown : String
    var moveLeft : String

//    enum Direction {
//        case moveRight
//        case moveDown
//        case moveLeft
//        case moveUp
//    }
//    func Movement (on platform: Direction) {
//    switch platform {
//    case .moveRigh:
//        print("")
//    case .moveDown:
//        print("")
//    case .moveLeft:
//        print("")
//    case .moveUp:
//        print("")
//            return
//    }
//
//    }

    init() {
        
        self.currrentpostion = 0
        
        self.moveRight =          """
———————
|🙋🏻‍♂️|  |
———————
|  |  |
———————
"""
        self.moveDown =          """
———————
|✔️|  |
———————
|🙋🏻‍♂️|  |
———————
"""
        self.moveLeft =          """
———————
|✔️|  |
———————
|✔️|🙋🏻‍♂️|
———————
"""
        self.moveUp =          """
———————
|✔️|🙋🏻‍♂️|
———————
|✔️|✔️|
———————
"""
        self.isVisted = [" " ," " ," " ," "]
        self.isCompleted = false
    }
    
    func moveRight( Select : Int) {
        
        isVisted[Select] = "moveRight"

        print(self.moveRight)
    }
    
    func moveUp( Select : Int) {
        
        isVisted[Select] = "moveUp"
        print(self.moveUp)
    }
    func moveDown( Select : Int) {
        
        isVisted[Select] = "moveDown"
        print(self.moveDown)
    }
    
    func moveLeft( Select : Int) {
        
        isVisted[Select] = "moveLeft"
        print(self.moveLeft)
    }
//    func isComplete() {
//        if (isVisted[0] == true &&
//            isVisted[1] == "true" &&
//            isVisted[2] == "noo" &&
//            isVisted[3] == "no")
//        {
//            print("COMPLETE")
//        } else {
//            print("NOT COMPLETE")
//        }
//    }

    }

var test = Maze()
test.moveRight(Select: 0)
test.moveDown(Select: 1)
test.moveLeft(Select: 2)
test.moveUp(Select: 3)

