/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  /// # 2025.08.25 #206
  /// ## Reverse Linked List
  /// * 문제
  /// 단일 연결(Linked) 리스트의 헤드가 주어졌을 때, 리스트를 역순으로 뒤집으세요.
  /// class ListNode {
  ///   int val;
  ///   ListNode? next;
  ///   ListNode([this.val = 0, this.next]);
  /// }
  /// * 조건
  /// 1. 연결 리스트의 노드 개수는 0≤n≤5000 입니다.
  /// 2. 각 노드는 -5000 <= Node.val <= 5000의 정수 값을 가집니다.
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