//
//  Untitled.swift
//  Grokking
//
//  Created by Kamal Kishor on 27/09/25.
//

import Foundation

struct ReducedToZero {
    /**
     LeetCode 1342: Number of Steps to Reduce a Number to Zero (Easy)
     --------------------------------------
     Given an integer num, return the number of steps to reduce it to zero.
     In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.
     
     Link: https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/
     */
    
    static func find(_ num: Int) -> Int {
        var loopCount = 0
        var number = num
        while number != 0 {
            loopCount += 1
            if number % 2 == 0 {
                number /= 2
            }
            else {
                number -= 1
            }
        }
        return loopCount
    }
}
