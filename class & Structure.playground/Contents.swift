class MAZE {
  var currentPosition : Int
  var isWall : Bool
  var isStart : Bool
  var isVisited : Bool
  init (){
    self.currentPosition = 0
    self.isStart = false
    self.isWall = true
    self.isVisited = true
  }
  func goForward () {
    self.currentPosition += 1
    self.isStart = true
    self.isWall = false
    self.isVisited = true
    isCompletd()
  }
  func goBackward() {
    self.currentPosition -= 1
    self.isStart = true
    self.isWall = false
    self.isVisited = true
    isCompletd()
 }
  func isCompletd () -> Bool {
    // check if all visited
    if (currentPosition == 4){
      return true
    }else{
      return false}
  }
}
var maze = MAZE()
maze.goForward()
maze.goForward()
maze.goForward()
maze.goForward()
maze.goBackward()
maze.goForward()
maze.isCompletd()
