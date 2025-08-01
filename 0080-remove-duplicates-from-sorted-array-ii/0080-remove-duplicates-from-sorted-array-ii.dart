class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length <= 2) return nums.length;

    int currentNum = -10001;
    bool isExist = false;
    for (int i = 0; i < nums.length; i++) {
      int n = nums[i];
      if (currentNum < n) {
        currentNum = n;
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