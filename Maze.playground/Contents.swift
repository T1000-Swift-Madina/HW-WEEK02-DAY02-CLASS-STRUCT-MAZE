import UIKit


class maze {
     var arr = [[String]]()
     var isVisited: Bool
     var isWall: Bool
     var currentPossitionX: Int
     var currentPossitionY: Int
    
    init(arr: [[String]], isVisited : Bool, isWall: Bool ,  currentPossitionX :Int, currentPossitionY :Int){
        
        self.arr = arr
        self.isVisited = isVisited
        self.isWall = isWall
        self.currentPossitionX = currentPossitionX
        self.currentPossitionY = currentPossitionY
        
    }


    func goRight(currentPossition1 :Int , currentPossition2 :Int ){
        let x = currentPossition1
        let y = currentPossition2
        if(x > 1 || y > 1){
            print("out of range")

        }
        else if (x > 1 || y >= 1){
            isWall = true
            print("wall")
        }
        else if(arr[x][y+1] == "✅"){
              isVisited = true
              print("is visited alrady ")
                }
   
        else if(x > 1){
        isWall = true
        print("there is a wall 🚪 ")

        }
        else if(arr[x][y] != "✅" && y < 1){
            arr[x][y+1] = "✅"
            print("Now it will ✅ ")
            print(arr)

        }
                
        else{
            print("out of range ")

        }

    }
    
    func goLeft(currentPossition1 :Int , currentPossition2 :Int ){
        
        let x = currentPossition1
        let y = currentPossition2
        if(x > 1 || y > 1){
            print("out of range")

        }
        else if (y != 1){
            isWall = true
            print("wall")
        }
        else if(arr[x][y-1] == "✅"){
            isVisited = true
            print("is visited alrady ")
        }
  
        
        else if(arr[x][y-1] != "✅"){
            arr[x][y-1] = "✅"
            print("Now it will  ✅ ")
            print(arr)

        }
        else{
            print("out of range ")

        }
        
    }

    func goTop(currentPossition1 :Int , currentPossition2 :Int ){
        let x = currentPossition1
        let y = currentPossition2
        
        if(x > 1 || y > 1 ){
            print("out of range")

        }
         else if(x == 0 ){
            isWall = true
            print("there is a wall 🚪 ")

        }
        else if(arr[x-1][y] == "✅"){
           isVisited = true
            print("is visited alrady ")
        }
        
        else if(arr[x-1][y] != "✅"){
            arr[x-1][y] = "✅"
            print("Now it will ✅ ")
            print(arr)

        }
        else{
            print("out of range ")

        }
        
    }
    func goBottom( currentPossition1 :Int , currentPossition2 :Int ){
        let x = currentPossition1
        let y = currentPossition2
        if(x > 1 || y > 1 ){
            print("out of range")

        }
         else if(x == 1 ){
            isWall = true
            print("there is a wall 🚪 ")

        }
        else if(arr[x+1][y] == "✅"){
            isVisited = true
            print("is visited alrady ")
        }
   
        else if(arr[x+1][y] != "✅"){
            arr[x+1][y] = "✅"
            print("Now it will ✅ ")
            print(arr)

        }
        else{
            print("out of range ")

        }
        
    }
    
    func isComplete(){
        var validate = true
        for subarray in arr {
            for element in subarray {
                if(element != "✅"){
                    validate = false
                    break
                }

                
            }
        }
        print(validate)

    }

    
    
    
}
var m = maze(arr: [["❌","❌"],["❌","❌"]], isVisited: false, isWall: false, currentPossitionX: 0, currentPossitionY: 0)
print("Array before visited")

print(m.arr)



print("Going right")

print(m.goRight(currentPossition1: 0, currentPossition2: 0))
print(m.goRight(currentPossition1: 0, currentPossition2: 1))
print(m.goRight(currentPossition1: 1, currentPossition2: 0))
print(m.goRight(currentPossition1: 1, currentPossition2: 1))

print("Going left")

print(m.goLeft(currentPossition1: 0, currentPossition2: 0))
print(m.goLeft(currentPossition1: 0, currentPossition2: 1))
print(m.goLeft(currentPossition1: 1, currentPossition2: 0))
print(m.goLeft(currentPossition1: 1, currentPossition2: 1))


print("Going top")

print(m.goTop(currentPossition1: 0, currentPossition2: 0))
print(m.goTop(currentPossition1: 0, currentPossition2: 1))
print(m.goTop(currentPossition1: 1, currentPossition2: 0))
print(m.goTop(currentPossition1: 1, currentPossition2: 1))

print("Going down")

print(m.goBottom(currentPossition1: 0, currentPossition2: 0))
print(m.goBottom(currentPossition1: 0, currentPossition2: 1))
print(m.goBottom(currentPossition1: 1, currentPossition2: 0))
print(m.goBottom(currentPossition1: 1, currentPossition2: 1))






print("Array after visited")
print(m.arr)
print("it is complete ?")
print(m.isComplete())
