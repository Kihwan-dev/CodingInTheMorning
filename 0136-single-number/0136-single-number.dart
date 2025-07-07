class Solution {
  int singleNumber(List<int> nums) {
    if(nums.length == 1) return nums[0];

    Map<int, int> map = {};
    int sum = 0;

    for(int num in nums) {
      if(map[num] == null) {
        map[num] = 1;
        sum += num;
      } else {
        sum -= num;
      }
    }
    return sum;
  }
}