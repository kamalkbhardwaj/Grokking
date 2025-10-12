//
//  RichestCustomer.swift
//  Grokking
//
//  Created by Kamal Kishor on 27/09/25.
//

import Foundation

struct RichestCustomer {
    
    /**
     LeetCode 1672: Richest Customer Wealth
     --------------------------------------
     You are given a 2D integer array 'accounts' where accounts[i][j] is the amount of money the ith customer has in the jth bank. Return the wealth that the richest customer has. A customer's wealth is the sum of money in all their bank accounts. The richest customer is the customer that has the maximum wealth.
     
     Link: https://leetcode.com/problems/richest-customer-wealth/description/
     */
    
    func find(_ accounts: [[Int]]) -> Int {
        var maxSum: Int = 0
        for customerAccounts in accounts {
            var allAccountsAssets: Int = 0
            for assets in customerAccounts {
                allAccountsAssets += assets
            }
            maxSum = max(maxSum, allAccountsAssets)
        }
        return maxSum
    }
}

