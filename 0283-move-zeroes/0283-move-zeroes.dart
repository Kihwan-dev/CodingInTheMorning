class Solution {
  void moveZeroes(List<int> nums) {
    int zeroCount = 0;
    for (int n in nums) {
      if (n == 0) {
        zeroCount++;
      }
    }
  
    nums.removeWhere((num) => num == 0);
  
    for(int i=0; i< zeroCount; i++) {
      nums.add(0);
    }
  }
}