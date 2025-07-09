class Solution {
  /// 2025.07.09 #169
  /// 배열에서 가장 많이 포함돼있는 값(최빈값) 찾기
  /// 최빈값은 배열의 원소 중 절반 초과의 개수를 차지하는 원소
  int majorityElement(List<int> nums) {
    if (nums.length == 1) return nums[0];
  
    Map<int, int> map = {};
    int maxNum = 0;
    for (int n in nums) {
      map[n] = (map[n] ?? 0) + 1;
      maxNum = max(maxNum, map[n]!);
      if(maxNum > nums.length) return n;
    }
  
    return map.entries.where((e) => e.value == maxNum).map((e) => e.key).toList()[0];
  }
}