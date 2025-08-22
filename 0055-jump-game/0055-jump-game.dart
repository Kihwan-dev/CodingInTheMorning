class Solution {
bool canJump(List<int> nums) {
  if (nums.length == 1) return true;
  if (nums[0] == 0) return false;
  int maxIndex = 0;
  for (int i = 0; i < nums.length; i++) {
    if (i > maxIndex) {
      return false;
    }
    maxIndex = max(maxIndex, nums[i] + i);
  }
  return true;
}
}