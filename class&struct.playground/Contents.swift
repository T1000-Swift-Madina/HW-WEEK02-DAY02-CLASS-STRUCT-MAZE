import UIKit
import Darwin
//-----------------------------------------
//   The code written by : Afnan programer
//-----------------------------------------
/*
HW-WEEK2-DAY2-CLASS-STRUCT-MAZE
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
You have a maze of size 2x2
Create a class/struct that has properties like currentPosition, isWall, isStart, isVisited
Create functions to move the person in the maze in all directions and complete the path.
Functions can be like goRight, goLeft, goBottom, goTop, isComplete
Hint: Try to use arrays, struct/classes, properties and initializers. Feel free to add/change the variables as you need. Evaluation for this task is not jus..

 *///000000000000000000000000000000000000000000000000000000000
//'''''''''''''''''''''''''''''''''''''''''''''''''''''''''

class Maze {                //  1- creat class
  
    
    var playerPosition2D : [[String]] = [["🧚🏻‍♀️", "  "], ["  ", "  "]]
    var curPost = 0

   func moveRight(fromLocation: Int) {
       if(  fromLocation == 0 && curPost == fromLocation){
           //playerPosition2D[0][0] = true
           playerPosition2D[0][0] = " *"
           playerPosition2D[0][1] = "🧚🏻‍♀️"
           curPost = 1
           print(playerPosition2D[0],"\n\(playerPosition2D[1])")
           playerPosition2D[0][1] = " *"
           print("player now in box num:",Afnan.curPost,"\n\n")
           
       }else if (fromLocation == 1 && curPost == fromLocation){
           print(" you can't move \n")
       }else if (fromLocation == 2 && curPost == fromLocation){
           
           curPost = 3
           playerPosition2D[1][1] = "🧚🏻‍♀️"
           print(playerPosition2D[0],"\n\(playerPosition2D[1])")
           playerPosition2D[1][1] = " *"
           print("player now in box num:",Afnan.curPost,"\n\n")
           
       }else if (fromLocation == 3 && curPost == fromLocation){
           print(" you can't move\n ")
       }else {
           print(" ERROR , enter agine pleaes\n")
       }
           
    }
  

    func moveTop(fromLocation: Int) {
        if(  fromLocation == 0 && curPost == fromLocation){
            print(" you can't move\n ")
        }else if (fromLocation == 1 && curPost == fromLocation){
            print(" you can't move \n")
        }else if (fromLocation == 2 && curPost == fromLocation){
            playerPosition2D[0][0] = "🧚🏻‍♀️"
            curPost = 0
            print(playerPosition2D[0],"\n\(playerPosition2D[1])")
            playerPosition2D[0][0] = " *"
            print("player now in box num:",Afnan.curPost,"\n\n")
            
        }else if (fromLocation == 3 && curPost == fromLocation){
            playerPosition2D[0][1] = "🧚🏻‍♀️"
            curPost = 1
            print(playerPosition2D[0],"\n\(playerPosition2D[1])")
            print("player now in box num:",Afnan.curPost,"\n\n")
            playerPosition2D[0][1] = " *"
                
            }else{
            print(" ERROR , enter agine pleaes\n")
            }
        
       
    }

    func moveBottom(fromLocation: Int) {
        
        if(  fromLocation == 0 && curPost == fromLocation){
            playerPosition2D[0][0] = " *"
            playerPosition2D[1][0] = "🧚🏻‍♀️"
            curPost = 2
            
            print(playerPosition2D[0],"\n\(playerPosition2D[1])")
            print("player now in box num:",Afnan.curPost,"\n\n")
            playerPosition2D[1][0] = " *"
        }else if (fromLocation == 1  && curPost == fromLocation){
            playerPosition2D[1][1] = "🧚🏻‍♀️"
            curPost = 3
            
            print(playerPosition2D[0],"\n\(playerPosition2D[1])")
            print("player now in box num:",Afnan.curPost,"\n\n")
            playerPosition2D[1][1] = " *"
        }else if (fromLocation == 2 && curPost == fromLocation){
            print(" you can't move \n")
        }else if (fromLocation == 3 && curPost == fromLocation){
            print(" you can't move \n")
        }else{
            print(" ERROR , enter agine pleaes\n")
            
        }
        
    }

    func moveLeft(fromLocation: Int) {
        
        if(  fromLocation == 0 && curPost == fromLocation){
            print(" you can't move\n ")
        }else if (fromLocation == 1 && curPost == fromLocation){
            playerPosition2D[0][0] = "🧚🏻‍♀️"
            curPost = 0
            print(playerPosition2D[0],"\n\(playerPosition2D[1])")
            print("player now in box num:",Afnan.curPost,"\n\n")
            playerPosition2D[0][0] = " *"
        }else if (fromLocation == 2 && curPost == fromLocation){
            print(" you can't move \n")
        }else if (fromLocation == 3 && curPost == fromLocation){
            playerPosition2D[1][0] = "🧚🏻‍♀️"
            curPost = 2
            print(playerPosition2D[0],"\n\(playerPosition2D[1])")
            print("player now in box num:",Afnan.curPost,"\n\n")
            playerPosition2D[1][0] = " *"
        }else {
            print(" ERROR , enter agine pleaes\n")
        }
    }

    
    func isComplete() {
        
        if (playerPosition2D[0][0] == " *" &&
            playerPosition2D[1][0] == " *" &&
            playerPosition2D[0][1] == " *" &&
            playerPosition2D[1][1] == " *") {
            print("COMPLETED\n")
        } else {
            print("NOT COMPLETED\n")
        }
    }
}
//end of class
//..........................


var Afnan = Maze()
print("WELCOME FROM AFnan-MAZE\n")
print("   --------------------")
print(Afnan.playerPosition2D[0],"\n\(Afnan.playerPosition2D[1])")
print("player now in box num:",Afnan.curPost,"\n\n")


//Afnan.moveBottom(fromLocation: 0)
//Afnan.moveLeft(fromLocation: 2)
//Afnan.moveRight(fromLocation: 2)
//Afnan.moveLeft(fromLocation: 1)
//Afnan.moveTop(fromLocation: 3)
 
//------------------------
//   testing ..
//------------------------
Afnan.moveRight(fromLocation: 0)
Afnan.moveLeft(fromLocation: 1)
Afnan.moveBottom(fromLocation: 0)
Afnan.moveTop(fromLocation: 2)
Afnan.moveRight(fromLocation: 0)
Afnan.moveBottom(fromLocation: 1)

Afnan.isComplete()

//__________________________________________________________________________________________________________________
// END ..
//------------------------------------------------------------------------
