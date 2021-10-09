import UIKit



class maze {
 
    var isCompleted: String
    var Visited: [Int]
  //  var visit : ["string"]
    
    init(){
        self.isCompleted = ""
        self.Visited = [0 , 0 ,0, 0]
        
    }
    init (completed: String, visit: [Int]){
        
      //  self.mycurrentposition = currentposition
        self.Visited = visit
        self.isCompleted = completed
    }

    
    func goRight(mycurrentposition: Int){
        Visited[mycurrentposition] = 1
        switch mycurrentposition{
        case 0: do {
           
            print("\(Visited[0]) *we are here * | \(Visited[1]) | \(Visited[2]) | \(Visited[3])")}
        case 1: do{
           
            print("\(Visited[0]) | \(Visited[1]) *we are here* | \(Visited[2])  | \(Visited[3]) ")}
        case 2: do{
           
            print("\(Visited[0])  | \(Visited[1]) | \(Visited[2]) *we are here* | \(Visited[3])")}
        case 3: do{
           
            print("\(Visited[0])  | \(Visited[1])  | \(Visited[2]) | \(Visited[3]) *we are here*")}
        default: do {print("out")}}}
    func goLeft(mycurrentposition: Int){
        Visited[mycurrentposition] = 1
      switch mycurrentposition{
        case 0: do {
            print("\(Visited[0]) *we are here * | \(Visited[1])  | \(Visited[2]) | \(Visited[3])")}
        case 1: do{
            print("\(Visited[0]) | \(Visited[1])  *we are here* | \(Visited[2]) | \(Visited[3]) ")}
        case 2: do{
            print("\(Visited[0])  | \(Visited[1])  | \(Visited[2]) *we are here* | \(Visited[3])  ")}
        case 3: do{
            print("\(Visited[0])  | \(Visited[1])  | \(Visited[2])  | \(Visited[3]) *we are here*")}
        default: do {print("out")}
      }
        }
    func Top (mycurrentposition1: Int, mycurrentposition2: Int){
        
        if (mycurrentposition1 == 0 && mycurrentposition2 == 3 ){
            Visited[3] = 1
            Visited[0] = 1
            print("\(Visited[0] ) *visited*  | \(Visited[1] ) | \(Visited[2] ) | \(Visited[3]) *we are here*")
        }
        else {
            print("can not move")
        }}
    func Buttom (mycurrentposition1: Int, mycurrentposition2: Int){
        if (mycurrentposition1 == 3 && mycurrentposition2 == 0 ){
            Visited[3] = 1
            Visited[0] = 1
            print("\(Visited[0] ) *we are here* | \(Visited[1] ) | \(Visited[2] ) | \(Visited[3]) *visited* ")
        }
        else {
            print("can not move")
        }}
       
    func iscomplete (){
        if (Visited == [1,1,1,1]){
            print("the maze is complete \(Visited)")
        } else {
            print("NOT COMPLETE \(Visited)")
        }}}


var mymaze = maze()

mymaze.goLeft(mycurrentposition: 0)
mymaze.goLeft(mycurrentposition: 1)
mymaze.goLeft(mycurrentposition: 2)
mymaze.goRight(mycurrentposition: 1)
mymaze.Top(mycurrentposition1: 0, mycurrentposition2: 3)
mymaze.Buttom(mycurrentposition1: 3, mycurrentposition2: 0)
mymaze.iscomplete()


    
    
    
    



            
        
    
    


