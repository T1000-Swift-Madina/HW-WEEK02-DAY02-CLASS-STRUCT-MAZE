import UIKit

class VisitMovement {
    
    var currentPosition : Int
    var isVisited : [String]
     
    init () {
        self.currentPosition = 0
        self.isVisited = ["A", "B", "C", "D"]
        print(isVisited)}
  
func goRight(changeplace:Int) {
    currentPosition = changeplace - 1
    isVisited[currentPosition] = "🟢"
    print(currentPosition)
    print(isVisited)
    }
    
func goLeft(changeplace:Int){
    currentPosition = 4 - changeplace
    isVisited[currentPosition] = "🔴"
    print(currentPosition)
    print(isVisited)
    }

func isComplet() -> Bool{
    if (isVisited[0] == "🟢" && isVisited[1] == "🟢" && isVisited[2] == "🟢" && isVisited[3] == "🟢" ) {
        return true  }
    else {
        return false }
                        }
    func rest (){  self.isVisited = ["A", "B", "C", "D"] ; print(isVisited) }
    
}
var person = VisitMovement()

//Check if it's working
/*
person.goRight(changeplace: 1)
person.goRight(changeplace: 2)
person.goRight(changeplace: 3)
person.goRight(changeplace: 4)
person.isComplet()
*/


