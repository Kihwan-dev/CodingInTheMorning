class Solution {
  /// # 2025.08.01 #80
  /// ## 정렬된 배열에서 중복 제거 2
  /// 정렬된 정수 배열 nums
  /// 각 요소가 최대 2번 반복까지 남기고 제거
  /// 최종 배열의 길이 리턴
  int removeDuplicates(List<int> nums) {
    /* #1 778ms
        if (nums.length <= 2) return nums.length;
        int currentNum = -10001;
        bool isExist = false;
        for (int i = 0; i < nums.length; i++) {
          int n = nums[i];
          if (currentNum < n) {
            currentNum = n;
            isExist = true;
          } else {
            if (isExist) {
              isExist = false;
            } else {
              nums.removeAt(i);
              i--;
            }
          }
        }
        return nums.length;
        */

    // #2 376ms
    if (nums.length < 3) return nums.length;

    // int loopPoint = 0;
    int checkPoint = 0;
    List<int> answer = [nums[0]];

    for (int i = 1; i < nums.length; i++) {
      int n = nums[i];
      if (n == nums[checkPoint]) {
        if (i - checkPoint > 1) {
          //
        } else {
          answer.add(n);
        }
      } else {
        answer.add(n);
        checkPoint = i;
      }
    }
    nums.clear();
    nums.addAll(answer);
    return nums.length;
  }
}