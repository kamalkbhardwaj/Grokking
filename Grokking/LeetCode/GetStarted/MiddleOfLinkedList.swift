//
//  MiddleOfLinkedList.swift
//  Grokking
//
//  Created by Kamal Kishor on 28/09/25.
//

import Foundation

struct MiddleOfLinkedList {
    
    /**
     LeetCode 876: Middle of the Linked List (Easy)
     --------------------------------------
     Given the head of a singly linked list, return the middle node of the linked list.
     If there are two middle nodes, return the second middle node.
     
     Link: https://leetcode.com/problems/middle-of-the-linked-list/description/
     */
    
    static func find(_ head: ListNode?) -> ListNode? {
        guard head != nil || head?.next != nil else { return head }
        var middleNode = head
        var endNode = head
        while endNode != nil && endNode?.next != nil {
            middleNode = middleNode?.next
            endNode = endNode?.next?.next
        }
        return middleNode
    }
}

// Another version
/**
 guard head != nil else { return nil }
 var node = head!
 var allNodes: [ListNode] = .init()
 while node.next != nil {
     allNodes.append(node)
     node = node.next!
 }
 return allNodes[allNodes.count/2]

 */

// Swift code does not execute, so I have submitted the python3 version.
/**
 # Definition for singly-linked list.
 class ListNode:
     def __init__(self, val=0, next=None):
         self.val = val
         self.next = next
 class Solution:
     def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
         if not head or not head.next:
             return head
         middle, node = head, head
         while node and node.next:
             middle = middle.next
             node = node.next.next
         return middle
         
 */
