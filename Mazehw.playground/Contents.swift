import UIKit
import CoreGraphics

class wasaifmaze{
    var playerpoint : [Bool] = [false, false, false, false]
    
    func move(toPlace: Int){
        playerpoint[toPlace] = true
        print(playerpoint)
        }
    func isComplate() {
        
        if (playerpoint[0] == true &&
            playerpoint[1] == true &&
            playerpoint[2] == true &&
            playerpoint[3] == true){
            print("completed")
            } else {
            print("not completed")
        }
    
}
}
    
    var mywasaifmaze = wasaifmaze()
    mywasaifmaze.move(toPlace: 0)
    mywasaifmaze.move(toPlace: 1)
    mywasaifmaze.move(toPlace: 2)
    mywasaifmaze.move(toPlace: 3)
    
    
    mywasaifmaze.isComplate()
    mywasaifmaze.playerpoint
