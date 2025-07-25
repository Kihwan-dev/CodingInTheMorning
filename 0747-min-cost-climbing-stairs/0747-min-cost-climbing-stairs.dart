class Solution {
  int minCostClimbingStairs(List<int> cost) {
    if (cost.length == 2) return min(cost[0], cost[1]);

    List<int> root = [];
    root.add(cost[0]);
    root.add(cost[1]);

    for (int i = 2; i < cost.length; i++) {
      root.add(cost[i] + min(root[i-1], root[i-2]));
    }

    return min(root[cost.length-1], root[cost.length-2]);
  }
}