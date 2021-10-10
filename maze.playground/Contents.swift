import UIKit

class MAZE {
    
    var currrentPostion: Int
    var isCompleted: Bool
    var isVisted: [Bool]
    
    init() {
        self.currrentPostion = 0
        self.isVisted = [false,false ,false,false]
        self.isCompleted = false
    }
    
    func moveRight( Select : Int) {
        isVisted[Select] = true
        print(self.isVisted)
    }
    
    func moveLeft( Select : Int) {
        isVisted[Select] = false
        print(self.isVisted)
    }
    func isComplete() {
        if (isVisted[0] == true && isVisted[1] == true && isVisted[2] == true && isVisted[3] == true)
        {
            print("COMPLETED")
        } else {
            print("NOT COMPLETED")
        }
    }}
var mazeObject = MAZE()
mazeObject.moveRight(Select: 0)
mazeObject.moveRight(Select: 1)
mazeObject.moveRight(Select: 2)
mazeObject.moveRight(Select: 3)

mazeObject.isComplete()
mazeObject.moveLeft(Select: 0)
mazeObject.moveLeft(Select: 1)
mazeObject.moveLeft(Select: 2)
mazeObject.moveLeft(Select: 3)
mazeObject.isComplete()
