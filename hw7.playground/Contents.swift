import UIKit
import Darwin


class maze {
    var mycurrentposition:Int
    var isCompleted: String
    var Visited: [Int]
  //  var visit : ["string"]
    
    init(){
       
        self.mycurrentposition = 0
        self.isCompleted = ""
        self.Visited = [0 , 0 ,0, 0]
        
    }
    init (currentposition: Int,completed: String
          , visit: [Int]){
        
        self.mycurrentposition = currentposition
        self.Visited = visit
        self.isCompleted = completed
    }

    
    func goRight(mycurrentposition: Int){
        Visited[mycurrentposition] = 1
        switch mycurrentposition{
        case 0: do {
            print("\(Visited[0]) *we are here * | \(Visited[1]) | \(Visited[2]) | \(Visited[3])")}
        case 1: do{
            print("\(Visited[0])  | \(Visited[1]) *we are here* | \(Visited[2])  | \(Visited[3]) ")}
        case 2: do{
            print("\(Visited[0])  | \(Visited[1])  | \(Visited[2]) *we are here* | \(Visited[3])")}
        case 3: do{
            print("\(Visited[0])  | \(Visited[1])  | \(Visited[2])  | \(Visited[3]) *we are here*")}
        default: do {print("out")}}}
    func goLeft(mycurrentposition: Int){
        Visited[mycurrentposition] = 1
 
      switch mycurrentposition{
        case 0: do {
            print("\(Visited[0]) *we are here * | \(Visited[1]) | \(Visited[2]) | \(Visited[3])")}
        case 1: do{
            print("\(Visited[0])  | \(Visited[1])  *we are here* | \(Visited[2]) | \(Visited[3]) ")}
        case 2: do{
            print("\(Visited[0])  | \(Visited[1]) | \(Visited[2]) *we are here* | \(Visited[3]) ")}
        case 3: do{
            print("\(Visited[0])  | \(Visited[1])  | \(Visited[2])  | \(Visited[3]) *we are here*")}
       
      case 4: do{
          print("\(Visited[0])  | \(Visited[1])  | \(Visited[2])  | \(Visited[3]) *we are here*")}
        default: do {print("out")}
      }
        }
    func Top (mycurrentposition: Int){
        Visited[mycurrentposition] = 1
        switch mycurrentposition{
          case 3: do {
              print("\(Visited[0] ) *visited*  | \(Visited[1] ) | \(Visited[2] ) | \(Visited[3]) *we are here*")}
            
       
        default: do {
            
        }
        }}
    func Buttom (mycurrentposition: Int){
        Visited[mycurrentposition] = 1
        switch mycurrentposition{
          case 0: do {
              print("\(Visited[0] ) *we are here *  | \(Visited[1] ) | \(Visited[2] ) | \(Visited[3]) *visited* ")}
        
       
        default: do {
            
        }
        }}

    func iscomplete (){
        if (Visited == [1,1,1,1]){
            print("the maze is complete \(Visited)")
        } else {
            print("NOT COMPLETE \(Visited)")
        }
        
    }
   
    
}

var mymaze = maze()




mymaze.goLeft(mycurrentposition: 2)
mymaze.goLeft(mycurrentposition: 1)
mymaze.Top(mycurrentposition: 3)
mymaze.Buttom(mycurrentposition: 0)



mymaze.iscomplete()


    
    
    
    



            
        
    
    

