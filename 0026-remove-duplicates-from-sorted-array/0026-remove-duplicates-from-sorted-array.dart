class Solution {
  int removeDuplicates(List<int> nums) {
    if(nums.isEmpty || nums.length == 1) {
      return nums.length;
    }
    int idx = 0;
    for(int i=1; i<nums.length; i++) {
      if(nums[idx] != nums[i]) {
        idx++;
        nums[idx] = nums[i];
      }
    }
    return idx+1;
  }
}