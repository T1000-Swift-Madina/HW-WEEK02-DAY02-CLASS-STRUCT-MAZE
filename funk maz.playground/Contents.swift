import UIKit

var greeting = "Hello, playground"
class GameMaze {
    
var playTheGame = [Int]()
var currnetPosition : Int
    init(playTheGame :[ Int ] , currnetPosition : Int){
        self.playTheGame = [00, 00 ,00 ,00]
        self.currnetPosition = 11
    }
    func isStart(currnetPosition : Int){
        playTheGame[currnetPosition] = 11
    print("GameMaze ")
    }
    func isComplate(){
        
if (playTheGame[0] == 11 &&
    playTheGame[1] == 11 &&
    playTheGame[2] == 11 &&
    playTheGame[3] == 11 ){
    print("completed")
}
        else {
print("is not complet")
        }
    }
}
var Games3 = GameMaze(playTheGame:[00, 00 ,00 ,00],currnetPosition : 11)
Games3.isStart(currnetPosition :0)
Games3.isStart(currnetPosition :1)
Games3.isStart(currnetPosition :2)
Games3.isStart(currnetPosition :3)
Games3.isComplate()
