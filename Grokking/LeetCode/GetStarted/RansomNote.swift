//
//  RansomNote.swift
//  Grokking
//
//  Created by Kamal Kishor on 28/09/25.
//

import Foundation

struct RansomNote {
    
    /**
     LeetCode 383: Ransom Note (Easy)
     --------------------------------------
     Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
     Each letter in magazine can only be used once in ransomNote.
     
     Link: https://leetcode.com/problems/ransom-note/
     */
    
    static func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineCount: [Character: Int] = [:]
        
        // Count characters in magazine
        for char in magazine {
            magazineCount[char, default: 0] += 1
        }
        
        // Check if ransom note can be constructed
        for char in ransomNote {
            if magazineCount[char, default: 0] <= 0 {
                return false
            }
            magazineCount[char, default: 0] -= 1
        }
        
        return true
    }
}
