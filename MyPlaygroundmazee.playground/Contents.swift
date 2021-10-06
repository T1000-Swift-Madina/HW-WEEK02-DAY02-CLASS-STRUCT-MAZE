import UIKit

class Maze {
    
    var currrentpostion: Int
    var isCompleted: Bool
    var isVisted: [String]
    
    init() {
        
        self.currrentpostion = 0
        self.isVisted = ["No" ,"No" ,"No" ,"No"]
        self.isCompleted = false
    }
    
    func moveRight( Select : Int) {
        
        isVisted[Select] = "yes"
        print(self.isVisted)
    }
    
    func moveLeft( Select : Int) {
        
        isVisted[Select] = "no"
        print(self.isVisted)
    }
    func isComplete() {
        if (isVisted[0] == "yes" &&
            isVisted[1] == "yes" &&
            isVisted[2] == "yes" &&
            isVisted[3] == "yes")
        {
            print("COMPLETE")
        } else {
            print("NOT COMPLETE")
        }
    }}
var test = Maze()
test.moveRight(Select: 0)
test.moveRight(Select: 1)
test.moveRight(Select: 2)
test.moveRight(Select: 3)

test.isComplete()
test.moveLeft(Select: 0)
test.moveLeft(Select: 1)
test.moveLeft(Select: 2)
test.moveLeft(Select: 3)
test.isComplete()
