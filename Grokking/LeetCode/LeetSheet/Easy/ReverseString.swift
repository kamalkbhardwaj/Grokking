//
//  ReverseString.swift
//  Grokking
//
//  Created by Kamal Kishor on 05/10/25.
//

import Foundation

struct ReverseString {
    /**
     LeetCode 344: Reverse String
     --------------------------------------
     Given an array of characters `s`, reverse the array in place.
     Perform the operation with O(1) extra memory.

     Link: https://leetcode.com/problems/reverse-string/description/
     */

    // In-place two-pointer reversal: O(n) time, O(1) space
    func reverseInPlace(_ s: inout [Character]) {
        var left: Int = 0
        var right: Int = s.count - 1
        while left < right {
            let temp: Character = s[left]
            s[left] = s[right]
            s[right] = temp
            left += 1
            right -= 1
        }
    }

    // Convenience method returning a new reversed array
    func reversed(_ s: [Character]) -> [Character] {
        var copy: [Character] = s
        reverseInPlace(&copy)
        return copy
    }
}

