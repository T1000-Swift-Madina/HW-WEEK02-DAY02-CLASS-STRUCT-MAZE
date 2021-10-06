import UIKit

class Maze {
  var currrentpostion: Int
  var isCompleted: String
  var isVisted: [Bool]
  init() {
    self.currrentpostion = 0
    self.isVisted = [false ,false ,false ,false]
    self.isCompleted = "No"
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
    if (isVisted[0] == true &&
      isVisted[1] == true &&
      isVisted[2] == true &&
      isVisted[3] == true)
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
