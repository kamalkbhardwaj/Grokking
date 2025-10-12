//
//  ReverseVowelsOfAString.swift
//  Grokking
//
//  Created by Kamal Kishor on 07/10/25.
//

import Foundation

struct ReverseVowelsOfAString {
    /**
     LeetCode 345: Reverse Vowels of a String (Easy)
     --------------------------------------
     Given a string `s`, reverse only all the vowels in the string and return it.
     The vowels are 'a', 'e', 'i', 'o', 'u', and they can appear in both lower and upper cases, more than once.

     Example:
     Input: s = "hello"
     Output: "holle"

     Link: https://leetcode.com/problems/reverse-vowels-of-a-string/

     Approach:
     - Use two pointers from both ends of the character array.
     - Move pointers inward until both point to vowels, then swap.
     - Time: O(n), Space: O(n) due to character array conversion.
     */

    func execute(_ s: String) -> String {
        var chars = Array(s)
        if chars.isEmpty { return s }

        let vowels: Set<Character> = Set(["a","e","i","o","u","A","E","I","O","U"])
        var left = 0
        var right = chars.count - 1

        while left < right {
            while left < right && !vowels.contains(chars[left]) { left += 1 }
            while left < right && !vowels.contains(chars[right]) { right -= 1 }
            if left < right {
                chars.swapAt(left, right)
                left += 1
                right -= 1
            }
        }

        return String(chars)
    }
}

