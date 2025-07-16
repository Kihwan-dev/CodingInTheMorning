class Solution {
int pivotIndex(List<int> nums) {
  if (nums.length == 1) return 0;
  int pivotIndex = 0;
  int leftSum = 0;
  int rightSum = 0;

  while (pivotIndex < nums.length) {
    for (int i = 0; i < nums.length; i++) {
      if (i < pivotIndex) {
        leftSum += nums[i];
      } else if (i == pivotIndex) {
        continue;
      } else {
        rightSum += nums[i];
      }
    }
    if(leftSum == rightSum) return pivotIndex;
    pivotIndex++;
    leftSum = 0;
    rightSum = 0;
  }

  return -1;
}
}