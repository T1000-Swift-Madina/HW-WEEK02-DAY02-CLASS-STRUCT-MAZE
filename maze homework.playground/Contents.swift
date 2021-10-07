import UIKit

class Maze{
    var isWall : Bool
    init (){
    self.isWall = true
    }
    func moveRight() {
         self.isWall = true
        print("There is a wall!!")
        
    }
    func moveLeft() {
         self.isWall = true
         print("There is a wall!!")
    }
    
    var currentPosition : [String] = ["not visited", "not visited", "not visited", "not visited"]
    func move(Place: Int){
        currentPosition[Place] = "visited"
        print(currentPosition)
        }
    func isComplate() {

        if (currentPosition[0] == "visited" &&
            currentPosition[1] == "visited" &&
            currentPosition[2] == "visited" &&
            currentPosition[3] == "visited"){
            print("completed")
            } else {
            print("not completed")
        }
        
}
}
    var myMaze = Maze()
myMaze.move(Place: 0)
myMaze.move(Place: 1)
myMaze.move(Place: 2)
myMaze.moveLeft()
myMaze.isComplate()
myMaze.move(Place: 3)
myMaze.isComplate()
myMaze.currentPosition
