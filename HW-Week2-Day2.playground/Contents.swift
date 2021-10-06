class Maze {
    var currentPosition: Int
    var isVisited: [String]
    var isCompleted: Bool
    
    
    init() {
        self.currentPosition = 0
        self.isVisited = ["No","No","No","No"]
        self.isCompleted = true
    }
    func moveRight(select : Int) {
        isVisited[select] = "Yes"
            print(self.isVisited)
    }
    func moveLeft( select : Int) {
        isVisited[select] = "No"
            print(self.isVisited)
    }
    func isComplete(){
        if (isVisited[0] == "Yes" &&
            isVisited[1] == "Yes" &&
            isVisited[2] == "Yes" &&
            isVisited[3] == "Yes")
        {
            print("Complete")
        } else {
            print("Not Complete")
        }
        
    }
}
    var move = Maze()
        move.moveRight(select: 0)
        move.moveRight(select: 1)
        move.moveRight(select: 2)
        move.moveRight(select: 3)
        move.isComplete()

        move.moveLeft(select: 0)
        move.moveLeft(select: 1)
        move.moveLeft(select: 2)
        move.moveLeft(select: 3)
        move.isComplete()
