class Solution {
  List<String> summaryRanges(List<int> nums) {
    if (nums.isEmpty) return [];
    if (nums.length == 1) return [nums[0].toString()];
    List<String> answer = [];
    int start = nums[0];
    int end = nums[0];

    for (int i = 1; i < nums.length; i++) {
      // 숫자가 연속적
      if (nums[i] - 1 == nums[i - 1]) {
        end = nums[i];
      } else {
        if (start != end) {
          answer.add("$start->$end");
        } else {
          answer.add("$end");
        }
        start = nums[i];
        end = nums[i];
      }
      if (i == nums.length - 1) {
        if (start != end) {
          answer.add("$start->$end");
        } else {
          answer.add("$end");
        }
      }
    }
    return answer;
  }
}