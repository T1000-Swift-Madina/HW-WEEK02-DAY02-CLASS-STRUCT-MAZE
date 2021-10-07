class Maze{
    var isWall : Bool
    init (){
    self.isWall = true
    }
 
    var playerPlace : [String] = ["false", "false", "false", "false"]
    func goForward(position: Int){
        playerPlace[position] = "true"
        print(playerPlace)}// end of func goForward
    
        func goBackard (position: Int){
            playerPlace[position] = "false"
            print(playerPlace)
        } // end of func goBackard

    func goRight() {
         self.isWall = true
        print("no path , there is wall")
    } //end of func goRight
    
    func goLeft() {
         self.isWall = true
         print("no path , there is wall")
    }// end of goLeft
    
    func isComplate() {
        if (playerPlace[0] == "true" && playerPlace[1] == "true" && playerPlace[2] == "true" && playerPlace[3] == "true"){
            print("AWESOME !! YOU WON")
            } else {
            print("Keep going , you did't Complate the MAZE")}
    }// end of func isComplate
    }// end of class
var startGame = Maze()
startGame.goForward(position: 3)
startGame.goBackard(position: 3)
startGame.goRight()
startGame.playerPlace
startGame.isComplate()
startGame.goLeft()
startGame.goForward(position: 3)
startGame.goForward(position: 2)
startGame.goRight()
startGame.playerPlace
startGame.isComplate()
startGame.goLeft()
startGame.goForward(position: 1)
startGame.goBackard(position: 1)
startGame.goRight()
startGame.playerPlace
startGame.isComplate()
startGame.goForward(position: 1)
startGame.goForward(position: 0)
startGame.goRight()
startGame.playerPlace
startGame.isComplate()

