//: Playground - noun: a place where people can play
import UIKit
//HW2 - Part 1
func rank(num : Int, lst : [Int]) -> Int {
    var start = 0
    var end = lst.count - 1
    
    while end >= start {
        
        let index = (start + end) / 2
        let key  = lst[index]
        
        if key == num {
            return index
        }
        else if num < key {
            end = index - 1
        }
        else if num > key {
            start = index + 1
        }
    }
    return -1
}

//Testing Part1
let m = [1,2,3,4,5,6,7,8,9,10]

print("The List is \(m)")
print("\n")
print("The index for number 5 is: \(rank(num: 5, lst: m))")
print("The index for number 10 is: \(rank(num: 10, lst: m))")
print("The index for number 1 is: \(rank(num: 1, lst: m))")
print("The index for number 4 is: \(rank(num: 4, lst: m))")
print("The index for number 7 is: \(rank(num: 7, lst: m))")
