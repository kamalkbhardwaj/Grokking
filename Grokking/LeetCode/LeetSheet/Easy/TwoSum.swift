//
//  TwSum.swift
//  Grokking
//
//  Created by Kamal Kishor on 29/09/25.
//

import Foundation

struct TwoSum {
    /**
     LeetCode 1: Two Sum (Easy)
     --------------------------------------
     Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
     You may assume that each input would have exactly one solution, and you may not use the same element twice.
     You can return the answer in any order.

     Example:
     Input: nums = [2,7,11,15], target = 9
     Output: [0,1]
     Explanation: nums[0] + nums[1] == 9, so return [0, 1].

     Link: https://leetcode.com/problems/two-sum/

     Constraints:
     - 2 <= nums.length <= 10^4
     - -10^9 <= nums[i] <= 10^9
     - -10^9 <= target <= 10^9
     - Only one valid answer exists.

     Related Topics:
     Array, Hash Table

     Notes:
     - Indices returned must be different.
     - The input array may contain negative numbers.
    */
    
    func execute(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for i in 0..<nums.count {
            if let otherIndex = dict[target - nums[i]] {
                return [i, otherIndex]
            } else {
                dict[nums[i]] = i
            }
        }
        return []
    }
}
