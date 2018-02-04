//
//  ArraySplit.swift
//  

import Foundation

extension Array
{
    func split(inGroupsOf groupsOf: Int) -> [[Element]] {
        var largeArray = self
        var arraySlices = [[Element]]()
        
        while (largeArray.count > groupsOf)
        {
            let slice = largeArray[0..<groupsOf]
            arraySlices.append(Array(slice))
            largeArray = Array(largeArray[groupsOf...])
        }
        arraySlices.append(largeArray)
        
        return arraySlices
    }
}

let array1 = [0,1,2,3,4,5,6,7,8,9]
let array2 = ["0","1","2","3","4","5","6","7","8","9"]

let slice1 = array1.split(inGroupsOf: 3)
slice1.count
let slice2 = array1.split(inGroupsOf: 1)
slice2.count
let slice3 = array2.split(inGroupsOf: 5)
slice3.count
let slice4 = array2.split(inGroupsOf: 11)
slice4.count

