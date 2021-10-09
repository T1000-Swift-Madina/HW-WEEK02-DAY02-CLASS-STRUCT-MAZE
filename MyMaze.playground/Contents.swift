import UIKit
class MyMaze {
  var isComplete: Bool
  var isVisited:[Bool]
  var CurrentPosition: Int
  init(){
    self.isComplete=false
    self.isVisited=[false,false,false,false]
    self.CurrentPosition=0
    print(self.isVisited)
  }
  func TurnRight(Move:Int){
    //check if the there is a wall
    if(Move == 5){
      print("There is a wall")
    }
    //check if it visited or not
    else if(isVisited[Move-1] == true)
    {
      CurrentPosition=Move-1
      print(CurrentPosition)
      print("it visited alrady")
    }
    else{
      CurrentPosition=Move-1
      isVisited[CurrentPosition]=true
      print(CurrentPosition)
      print(self.isVisited)
    }
  }
  func TurnLeft(Move:Int){
    //check if the there is a wall
    if(Move == 0 ){
      print("There is a wall")
    }
    //check if it visited or not
    else if(isVisited[Move-1] == true)
    {
      CurrentPosition=Move-1
      print(CurrentPosition)
      print(self.isVisited)
      print("it visited alrady")
    }
    else{
      CurrentPosition=Move-1
      isVisited[CurrentPosition]=true
      print(CurrentPosition)
      print(self.isVisited)
    }
  }
  func Complete() {
    if isVisited == [true,true,true,true]{
      self.isComplete = true
      print("is complete !!! \(isComplete)")
    }
  }
}
let rahaf=MyMaze()
rahaf.TurnRight(Move: 1)
rahaf.TurnRight(Move: 2)
rahaf.TurnRight(Move: 3)
rahaf.TurnRight(Move: 4)
rahaf.TurnRight(Move: 5)
print("left testing")
rahaf.TurnLeft(Move: 4)
rahaf.TurnLeft(Move: 3)
rahaf.TurnLeft(Move: 2)
rahaf.TurnLeft(Move: 1)
rahaf.TurnLeft(Move: 0)
rahaf.Complete()

