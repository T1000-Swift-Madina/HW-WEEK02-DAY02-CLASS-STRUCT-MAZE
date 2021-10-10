import UIKit


class meza{

var TheGame = [Int]()
var currentPosition : Int
    
    
    
    init(TheGame: [Int] , currentPosition : Int){
        self.currentPosition = 11
    self.TheGame = [00 , 00 , 00 , 00]
    }
    func move (currentPosition : Int){
       TheGame[currentPosition] = 11
        print( TheGame)
        
    }
        
        
        
func movePerson () {
    if (TheGame[0] != 00 && TheGame[1] != 00 && TheGame[2] != 00 && TheGame[3] != 00 ){
        print("You won")
} else{
    print("Ypo lost")
}
    
    }
}




var Game1 = meza(TheGame: [00 , 00 , 00 , 00] ,currentPosition: 11)
Game1.move(currentPosition : 0)
Game1.move(currentPosition : 1)
Game1.move(currentPosition : 2)
Game1.move(currentPosition : 3)
    

Game1.movePerson()

