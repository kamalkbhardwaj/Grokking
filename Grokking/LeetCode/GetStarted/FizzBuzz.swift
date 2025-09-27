//
//  FizzBuzz.swift
//  Grokking
//
//  Created by Kamal Kishor on 27/09/25.
//

import Foundation

struct FizzBuzz {
    /**
     LeetCode 412: Fizz Buzz (Easy)
     --------------------------------------
     Given an integer n, return a string array answer (1-indexed) where:
     - answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
     - answer[i] == "Fizz" if i is divisible by 3.
     - answer[i] == "Buzz" if i is divisible by 5.
     - answer[i] == i (as a string) if none of the above conditions are true.
     
     Link: https://leetcode.com/problems/fizz-buzz/
     */
    
    func find(_ n: Int) -> [String] {
        var output: [String] = .init()
        for number in 1...n {
            if number % 3 == 0 && number % 5 == 0 {
                output.append("FizzBuzz")
            } else if number % 3 == 0 {
                output.append("Fizz")
            } else if number % 5 == 0 {
                output.append("Buzz")
            } else {
                output.append("\(number)")
            }
        }
        return output
    }
}
