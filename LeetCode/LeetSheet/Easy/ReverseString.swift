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
    func execute(_ s: inout [Character]) {
        var firstIndex = 0
        var lastIndex = s.count - 1
        while firstIndex < lastIndex {
            s.swapAt(firstIndex, lastIndex)
            firstIndex += 1
            lastIndex -= 1
        }
    }
}

