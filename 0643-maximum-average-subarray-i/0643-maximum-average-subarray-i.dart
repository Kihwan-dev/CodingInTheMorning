class Solution {
  /// # 2025.07.29 #643
  /// ## 최대 평균 하위 배열 1
  /// 정수 배열 nums, 정수 k
  /// nums에서 길이가 k인 부분배열의 평균값 중 최대값
  /// 소수점 다섯 번째 자리까지 반올림하여 리턴
  double findMaxAverage(List<int> nums, int k) {
    if (nums.length == 1) return double.parse(nums[0].toStringAsFixed(5));

    int sum = 0;

    for (int i = 0; i < k; i++) {
      sum += nums[i];
    }
    int maxSum = sum;

    for (int i = k; i < nums.length; i++) {
      sum += nums[i];
      sum -= nums[i - k];
      maxSum = max(maxSum, sum);
    }
    return double.parse((maxSum / k).toStringAsFixed(5));
  }
}