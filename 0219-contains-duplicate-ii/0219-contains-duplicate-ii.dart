class Solution {
  /// # 2025.08.08 #219
  /// ## 중복된 값 포함 2
  /// 정수배열 nums, 정수 k
  /// 같은 값을 가지는 두 인덱스 i와 j에 대해
  /// abs(i - j) <= k를 만족하는 경우가 있는지 확인(abs : 절댓값)
  /// 있으면 true, 없으면 false 리턴
  bool containsNearbyDuplicate(List<int> nums, int k) {
    /* for (int i = 0; i < nums.length; i++) {
        for (int j = i + 1; j < nums.length; j++) {
          if (j - i > k) break;
          if (nums[i] == nums[j] && j - i <= k) {
            return true;
          }
        }
      }
      return false; */

    Map<int, int> map = {};
    for (int i = 0; i < nums.length; i++) {
      int key = nums[i];
      if (map.containsKey(key)) {
        int value = map[key]!;
        if (i - value <= k) return true;
      }
      map[key] = i;
    }
    return false;
  }
}