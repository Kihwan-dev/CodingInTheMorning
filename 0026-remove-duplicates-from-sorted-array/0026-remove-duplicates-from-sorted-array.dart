class Solution {
int removeDuplicates(List<int> nums) {
  if(nums.isEmpty || nums.length == 1) {
    return nums.length;
  }
  int currentNum = nums[0];
  int validCnt = 1;

  for(int i=1; i<nums.length; i++) {
    if(currentNum != nums[i]) {
      validCnt++;
      currentNum = nums[i];
    } else {
      nums.removeAt(i);
      i--;
    }
  }

  return validCnt;
}
}