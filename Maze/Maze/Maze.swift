//
//  Maze.swift
//  Maze
//
//  Created by Abdullah Bajaman on 06/10/2021.
//

import Foundation

/* scenario
 1. check if user started
 2. start Maze
 3. make a first move from any direction
 4. check if could perform next move or there is wall
 5. if wall, stay same position, print message.
 6. if go through all space display message
 */

// Edit: 1. make the user enter to the maze from anyware. 2. user can move through maze although if he visited all spaces
class Maze {
    
    var currentPosition : Int , isWall: Bool, isStart: Bool, isVisited=[Bool]()
    var boardArr = ["  ", "  ", "  ", "  "]
    var trackPosition = [Int]()
    var name: String, message: String, input: String
    init() {
        self.currentPosition = 0
        self.isWall = false
        self.isStart = false
        self.isVisited = Array(repeating: false, count: 4)
        self.name = ""
        self.message = "Wilcome to The Maze"
        self.input = ""
        print(message)
    }
    
    func displayMaze () {
        print("    ______")
        print("➡️ |\(boardArr[0])|\(boardArr[1])|")
        print("   |\(boardArr[2])|\(boardArr[3])|")
        print("    ______")
    }
    func startMaze () {
        isStart = true
        displayMaze()
    }
    
    func move(direction: String) {
        isWall = false
        if isStart == true {
            
            print("Move to \(direction)")
            switch direction {
            case "right", "Right", "r", "R":
                goRight()
            case "left", "Left", "l", "L":
                goLift()
            case "top", "Top", "t", "T" :
                goTop()
            case "bottom", "Bottom", "b", "B":
                goBottom()
            default:
                print("Please Type one of this dirctions: right, left, top, bottom")
            }
        } else { print("Please Start Maze by type startMaze()")}
    }
    
    private func isEmptyMaze() -> Bool{
        return !boardArr[0].contains("👤") && !boardArr[1].contains("👤") && !boardArr[2].contains("👤") && !boardArr[3].contains("👤")
    }
    func goRight() {
        if isEmptyMaze() {
            boardArr[0] = "👤"
            isVisited[0] = true
            currentPosition = 0
        } else if currentPosition == 0 || currentPosition == 2{
            boardArr[currentPosition] = "  "
            currentPosition += 1
            boardArr[currentPosition] = "👤"
            isVisited[currentPosition] = true
        } else {
            print("No Exit 🚷 Try another direction")
            boardArr[currentPosition] = "👤"
            isWall = !isWall
        }
        displayMaze()
        isComplete()
    }
    func goLift() {
        if isEmptyMaze() {
            boardArr[3] = "👤"
            isVisited[3] = true
            currentPosition = 3
        } else if currentPosition == 1 || currentPosition == 3{
            boardArr[currentPosition] = "  "
            currentPosition -= 1
            boardArr[currentPosition] = "👤"
            isVisited[currentPosition] = true
        } else {
            print("No Exit 🚷 Try another direction")
            boardArr[currentPosition] = "👤"
            isWall = !isWall
        }
        displayMaze()
        isComplete()
    }
    func goBottom () {
        if isEmptyMaze() {
            boardArr[2] = "👤"
            isVisited[2] = true
            currentPosition = 2
        } else if currentPosition == 0 || currentPosition == 1{
            boardArr[currentPosition] = "  "
            currentPosition += 2
            boardArr[currentPosition] = "👤"
            isVisited[currentPosition] = true
        } else {
            print("No Exit 🚷 Try another direction")
            boardArr[currentPosition] = "👤"
            isWall = !isWall
        }
        displayMaze()
        isComplete()
    }
    func goTop () {
        if isEmptyMaze() {
            boardArr[1] = "👤"
            isVisited[1] = true
            currentPosition = 1
        } else if currentPosition == 3 || currentPosition == 2 {
            boardArr[currentPosition] = "  "
            currentPosition -= 2
            boardArr[currentPosition] = "👤"
            isVisited[currentPosition] = true
        } else {
            print("No Exit 🚷 Try another direction")
            boardArr[currentPosition] = "👤"
            isWall = !isWall
        }
        displayMaze()
        isComplete()
    }
    func isComplete () {
        if !isVisited.contains(false) {
            print("Congratulation You Complated the Maze ")
        }else {
            print("Keep trying \n")
        }
    }
}



