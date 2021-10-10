import UIKit

class maze{
   var isvisited:Bool
   var iscompleted:Bool
   var array1:[Bool]
   var crruntPosition:Int

   init(){
       self.array1 = [false,false,false]
       self.isvisited = false
       self.iscompleted = true
       self.crruntPosition = 0


   }
   func goRight(crruntPosition:Int){
      array1 [crruntPosition+1] = true
       if (crruntPosition >= 2){
           print ("ther is awall")
    }
   }


   func goLeft(crruntPosition:Int){
       array1 [crruntPosition-1] = true
       if (crruntPosition<=0){
           print ("ther is awall")
       }
   }
       func iscomplete(){
           if (array1[0] == true && array1[1]==true && array1[2]==true)
           {
           print ("congratulations")
           }
           else{
           print ("Loser")
           }
       }
   }


  var Myplay = maze()
Myplay.goRight(crruntPosition: 0)
Myplay.goRight(crruntPosition: 1)
Myplay.goLeft(crruntPosition: 1)
Myplay.iscomplete()
        
