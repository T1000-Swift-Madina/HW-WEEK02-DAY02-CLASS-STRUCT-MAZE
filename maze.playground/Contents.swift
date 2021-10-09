import Cocoa
class Maze {
    
   var gameMaze = [Int ]()
   var currnetPosition : Int
    
    init(gameMaze :[ Int ], currentPosition : Int){
        self.gameMaze = [00 ,00 ,00 ,00]
        self.currnetPosition = 11
        
    }
    
    func startGame (curnetPostion : Int){
        
     gameMaze[curnetPostion] = 11
        print( gameMaze)
        
    }
    
    func movePerson (){
        
        if (gameMaze[0] != 00 && gameMaze[1] != 00 && gameMaze[2] != 00 && (gameMaze[3] != 00)) {
            print (" you won  ")
            
        }else{
            print("not won" )
        }
    }
}
var game1 = Maze(gameMaze: [00 , 00 ,00 ,00], currentPosition: 11)
game1.startGame(curnetPostion : 0)
game1.startGame(curnetPostion : 1)
game1.startGame(curnetPostion : 2)
game1.startGame(curnetPostion : 3)

game1.movePerson()







