class Solution {
  /// # 2025.07.25 #746
  /// ## 계단을 올라가는 최소 비용
  /// 계단 배열 cost -> 계단을 올라가는 최소 비용을 계산
  /// 각 요소는 해당 계단을 밟을 때의 비용
  /// 계단은 한 번에 한 계단 또는 두 계단씩 오를 수 있음
  /// 배열의 마지막이나 마지막에서 두 번째 인덱스에서 도착하는 것이 목표
  /// input [1, 100, 1, 1, 1, 100, 1, 1, 100, 1] output 6
  int minCostClimbingStairs(List<int> cost) {
    if (cost.length == 2) return min(cost[0], cost[1]);

    List<int> root = [];
    root.add(cost[0]);
    root.add(cost[1]);

    for (int i = 2; i < cost.length; i++) {
      root.add(cost[i] + min(root[i - 1], root[i - 2]));
    }

    return min(root[cost.length - 1], root[cost.length - 2]);
  }
}