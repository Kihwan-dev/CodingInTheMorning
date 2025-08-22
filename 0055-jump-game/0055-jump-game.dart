class Solution {
  /// # 2025.08.22 #55
  /// ## 점프 게임
  /// * 문제
  /// 주어진 배열 nums에서 각 원소는 해당 인덱스에서 점프할 수 있는 최대 거리입니다.
  /// 이 배열의 시작점인 인덱스 0에서 마지막 인덱스에 도달할 수 있는지 여부를 판단하는 문제입니다.
  /// * 조건
  /// 1. 1 <= nums.length <= 10^4
  /// 2. 0 <= nums[i] <= 10^4
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