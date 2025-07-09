class Solution {
  int majorityElement(List<int> nums) {
    if (nums.length == 1) return nums[0];
  
    Map<int, int> map = {};
    int maxNum = 0;
    for (int n in nums) {
      if (map[n] == null) {
        map[n] = 1;
      } else {
        map[n] = map[n]! + 1;
      }
      maxNum = max(maxNum, map[n]!);
    }
  
    return map.entries.where((e) => e.value == maxNum).map((e) => e.key).toList()[0];
  }
}