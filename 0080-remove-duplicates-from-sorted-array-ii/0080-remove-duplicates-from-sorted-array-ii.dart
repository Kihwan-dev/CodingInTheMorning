class Solution {
  /// # 2025.08.01 #80
  /// ## 정렬된 배열에서 중복 제거 2
  /// 정렬된 정수 배열 nums
  /// 각 요소가 최대 2번 반복까지 남기고 제거
  /// 최종 배열의 길이 리턴
  int removeDuplicates(List<int> nums) {
    if (nums.length <= 2) return nums.length;
    int currentNum = nums[0];
    bool isExist = true;
    List<int> answer = [currentNum];
    for (int i = 1; i < nums.length; i++) {
      int n = nums[i];
      if (currentNum < n) {
        answer.add(n);
        currentNum = n;
        isExist = true;
      } else {
        if (isExist) {
          answer.add(n);
          isExist = false;
        } else {
          continue;
        }
      }
    }
    nums.clear();
    nums.addAll(answer);
    return nums.length;
  }
}