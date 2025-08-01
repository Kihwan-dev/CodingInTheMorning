class Solution {
int removeDuplicates(List<int> nums) {
  if (nums.length == 1) return 1;

  int currentNum = -10001;
  int length = 0;
  bool isExist = false;
  for (int i = 0; i < nums.length; i++) {
    if (currentNum < nums[i]) {
      // length++;
      currentNum = nums[i];
      isExist = true;
    } else {
      if (isExist) {
        isExist = false;
      } else {
        nums.removeAt(i);
        i--;
      }
    }
  }

  return nums.length;
}
}