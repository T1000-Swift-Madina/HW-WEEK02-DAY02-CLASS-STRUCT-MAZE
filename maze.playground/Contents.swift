import UIKit

var greeting = "Hello, playground"

class Lamaomaze{
  var playerStart = [00 , 00, 00, 00]
  func move(location: Int){
    playerStart[location] = 11
    print(playerStart)
    }
  func isComplate() {
    if (playerStart[0] == 11 &&
        playerStart[1] == 11 &&
playerStart[2] == 11 &&
playerStart[3] == 11 ){
        print("completed")
} else {
      print("not completed")
    }
}
}
  var Lamao = Lamaomaze()
Lamao.move(location: 0)
Lamao.move(location: 1)
Lamao.move(location: 2)
Lamao.move(location: 3)
Lamao.isComplate()












