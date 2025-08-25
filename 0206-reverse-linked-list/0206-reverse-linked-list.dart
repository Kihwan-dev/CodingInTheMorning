/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
ListNode? reverseList(ListNode? head) {
  if (head == null) return null;
  ListNode? current = head;
  ListNode? next;

  while (current != null) {
    next = ListNode(current.val, next);
    current = current.next;
  }

  return next;
}
}