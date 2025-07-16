class Solution {
  /// 2025.07.16 #724
  /// 정수 배열 nums 피벗 인덱스 찾기
  /// 피벗 인덱스 : 인덱스 i의 왼쪽에 있는 모든 원소의 합과
  ///               오른쪽에 있는 모든 원소의 합이 같은 위치
  /// 찾으면 i 리턴 없으면 -1 리턴
  /// 여러개일경우 가장 왼쪽에 있는 인덱스 리턴
  int pivotIndex(List<int> nums) {
    if (nums.length == 1) return 0;
    int sum = 0;
    int leftSum = 0;
  
  
    for(int n in nums) {
      sum += n;
    }
  
    for(int i=0; i<nums.length; i++) {
      if (leftSum == sum - nums[i] - leftSum) {
        return i;
      } 
      leftSum += nums[i];
    }
  
    return -1;
  }
}