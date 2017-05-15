//: Playground - noun: a place where people can play

import UIKit

var image = [
  [1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 0, 0, 0, 1],
  [1, 0, 1, 0, 0, 0, 1],
  [1, 0, 1, 1, 1, 1, 1],
  [1, 0, 1, 0, 0, 1, 1],
  [1, 1, 1, 0, 0, 1, 1],
  [1, 1, 1, 1, 1, 1, 1],
];

var coordinate: [Int] = []
var doneList: [Int] = []


for row in 0...image.count - 1 {
  for column in 0...image.first!.count - 1{
    if image[row][column] == 0 {
      coordinate = [column + 1, row + 1]
      var i = 1
      var j = 1
      if image[row][column + 1] == 0 && image[row - 1][column] == 1{
        while column + i < image.first!.count{
          if image[row][column + i] == 1 && image[row + 1][column + i - 1] == 0 {
//            print("at right of \(column + i, row + 1), its 1")
//            print("square at (x,y): \(coordinate) with width = \(i)")
            while row + j < image.count {
//              print(j)
              if image[row + j][column + i] == 1 {
//                print("at top of \(column + i, row + 1), its 1")
                print("Square at (x,y): \(coordinate) with width of \(i) units and height of \(j + 1) units")
                break
              }
              j += 1
            }
          }
//          print(i)
          i += 1
        }
        break
      }else if image[row][column + 1] == 1 && image[row - 1][column] == 1 {
//        print("Square at (x,y): \(coordinate), width = \(i)")
        while row + j < image.count {
//                        print(j)
          if image[row + j][column] == 1 {
//            print("at bottom of \(column + 1, row + j), its 1")
            print("Square at (x,y): \(coordinate) with width of \(i) units and height of \(j) units")
            break
          }
          j += 1
        }
      }
    }
  }
}
