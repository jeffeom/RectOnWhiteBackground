//: Playground - noun: a place where people can play

import UIKit

var image = [
  [1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 0, 0, 0, 1],
  [1, 1, 1, 0, 0, 0, 1],
  [1, 1, 1, 1, 1, 1, 1]
]

var foundStartRow = 0
var foundStartCol = 0

var foundEndRow = 0
var foundEndCol = 0

var foundRow = false
var foundCol = false

for row in 0...image.count - 1 {
  for column in 0...image.first!.count - 1{
    if image[row][column] == 0{
      if image[row][column - 1] != 0 && !foundRow {
        foundStartRow = row
        foundStartCol = column
        //starting points
//        print("srow: \(foundStartRow), scol: \(foundStartCol)")
        foundRow = true
      }
      if image[row][column + 1] != 0{
        foundEndRow = row
        foundEndCol = column
        //ending points
//        print("erow: \(foundEndRow), ecol: \(foundEndCol)")
      }
    }
  }
}
print("Square at (x,y) = \(foundStartCol + 1, foundStartRow + 1) with width of the square is \(foundEndCol - foundStartCol + 1) and height of the square is \(foundEndRow - foundStartRow + 1)")
