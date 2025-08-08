class Solution {
bool containsNearbyDuplicate(List<int> nums, int k) {
  //
  //

  /* for (int i = 0; i < min(nums.length, i+k); i++) {
    for (int j = i + 1; j < min(nums.length, j+k); j++) {
      if (j - i > k) break;
      if (nums[i] == nums[j] && j - i <= k) {
        return true;
      }
    }
  }
  return false; */

  Map<int, int> map = {};
  for (int i = 0; i < nums.length; i++) {
    int key = nums[i];
    if (map.containsKey(key)) {
      int value = map[key]!;
      if (i - value <= k) return true;
    }
    map[key] = i;
  }
  return false;
}
}