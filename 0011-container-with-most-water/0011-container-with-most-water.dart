class Solution {
int maxArea(List<int> height) {
  int answer = 0;
  int start = 0;
  int end = height.length - 1;

  while (start < end) {
    answer = max(answer, min(height[start], height[end]) * (end - start));
    if (height[start] < height[end]) {
      start++;
    } else {
      end--;
    }
  }

  return answer;
}
}