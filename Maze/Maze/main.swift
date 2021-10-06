//
//  main.swift
//  Maze
//
//  Created by Abdullah Bajaman on 06/10/2021.
//

import Foundation

var player1 = Maze()

// start maze
player1.startMaze()
// r = up l, l= b l, b= b l, t= t r
player1.move(direction: "Left")
player1.move(direction: "Right")
player1.move(direction: "Top")
player1.move(direction: "Left")
player1.move(direction: "Bottom")




