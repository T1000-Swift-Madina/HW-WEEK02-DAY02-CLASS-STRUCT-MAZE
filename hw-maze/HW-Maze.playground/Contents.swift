import UIKit
import CoreGraphics

class MAZE {
    
    var welcome:String
    var start:String
    var currentPosition: Int
    var isWall: [Bool]
    var isVisited: Bool
   
    
    init(){
        self.welcome = "Welcome to the maze 🎲👋🏽"
        self.start = "🔘Start 🚶🏽‍♂️\n   --------------------"
        self.currentPosition = 0
        self.isWall = [false,false,false,false]
        self.isVisited = false
    }
    func moveforwad(currentPosition: Int){
        isWall[currentPosition] = true
        print(isWall)
    }
    func moveback(currentPosition: Int){
        isWall[currentPosition] = true
        print(isWall)
 }
    func isVi(isVisited: Bool) {
        if isWall == [true, true,true,true]{
            self.isVisited = true
            print("   --------------------\n You have completed the maze 💃🏽🎊\n \(isVisited)")
        }
    }
}

var Wel = MAZE()
print(Wel.welcome)

var str = MAZE()
print(str.start)

var mazme1 = MAZE()
mazme1.welcome
mazme1.moveback(currentPosition: 0)
mazme1.moveback(currentPosition: 1)
mazme1.moveback(currentPosition: 2)
mazme1.moveforwad(currentPosition: 3)

mazme1.isVi(isVisited: true)
