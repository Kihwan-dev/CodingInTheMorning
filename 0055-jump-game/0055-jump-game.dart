class Solution {
bool canJump(List<int> nums) {
  if (nums.length == 1) return true;
  if (nums[0] == 0) return false;
  int maxIndex = -1;
  for (int i = 0; i < nums.length; i++) {
    if (i == maxIndex) {
      if (nums[i] == 0) return false;
    }
    if (nums[i] + i >= nums.length - 1) return true;
    maxIndex = max(maxIndex, nums[i] + i);
  }
  return false;
}
}