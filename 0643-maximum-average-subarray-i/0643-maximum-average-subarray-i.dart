class Solution {
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