class Solution {
int pivotIndex(List<int> nums) {
  if (nums.length == 1) return 0;
  int sum = 0;
  int leftSum = 0;


  for(int n in nums) {
    sum += n;
  }

  for(int i=0; i<nums.length; i++) {
    if(leftSum == (sum - nums[i])/2) {
      return i;
    } 
    leftSum += nums[i];
  }

  return -1;
}
}