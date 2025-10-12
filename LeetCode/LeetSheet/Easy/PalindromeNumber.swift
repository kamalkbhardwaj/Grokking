//
//  PalindromeNumber.swift
//  Grokking
//
//  Created by Kamal Kishor on 12/10/25.
//

import Foundation

struct PalindromeNumber {
    /**
     LeetCode 9: Palindrome Number (Easy)
     --------------------------------------
     Given an integer `x`, return true if `x` is a palindrome, and false otherwise.

     Examples:
     - Input: x = 121 -> Output: true
     - Input: x = -121 -> Output: false
     - Input: x = 10 -> Output: false

     Link: https://leetcode.com/problems/palindrome-number/

     Approach:
     - Negative numbers are not palindromes.
     - Numbers ending with 0 (but not 0 itself) cannot be palindromes.
     - Reverse only half of the number to avoid overflow and extra work.
       Stop when the reversed half is greater than or equal to the remaining half.
       Compare `left` (remaining) with `right` (reversed) allowing a middle digit: `left == right` or `left == right/10`.

     Time: O(log10(n))  |  Space: O(1)
     */
    
    func execute(_ x: Int) -> Bool {
        if x < 0 { return false }
        if x % 10 == 0 && x != 0 { return false }

        var left = x
        var right = 0

        while left > right {
            right = right * 10 + left % 10
            left /= 10
        }

        return left == right || left == right / 10
    }
}

