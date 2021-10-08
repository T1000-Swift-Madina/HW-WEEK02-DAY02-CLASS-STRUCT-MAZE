import Foundation


class Maze {
  var currrentpostion: Int
  var isCompleted: Bool
  var isVisted: [Bool]
  init() {
    self.currrentpostion = 0
    self.isVisted = [false, false, false, false]
    self.isCompleted = false
  }
  func moveforwad( Select : Int) {
    isVisted[Select] = true
    print(self.isVisted)
    
  }
  func MoveBack( Select : Int) {
    isVisted[Select] = false
    print(self.isVisted)
  }
  func isComplete() {
    if (isVisted[0] == true &&
      isVisted[1] == true &&
      isVisted[2] == true &&
      isVisted[3] == true)
    {
      print("VICTORY") //complete
    } else {
      print("GAME OVER") //not complete
    }
  }}
var hero = Maze()
hero.moveforwad(Select: 0)
hero.moveforwad(Select: 1)
hero.moveforwad(Select: 2)
hero.moveforwad(Select: 3)
hero.isComplete()
hero.MoveBack(Select: 0)
hero.MoveBack(Select: 1)
hero.MoveBack(Select: 2)
hero.MoveBack(Select: 3)
hero.isComplete()







