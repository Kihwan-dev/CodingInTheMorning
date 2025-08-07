class Solution {
  /// # 2025.08.07 #11
  /// 물이 가장 많은 용기
  /// 높이를 나타내는 양의 정수 배열 height
  /// 두 개의 막대를 선택해 만들어진 용기의 가장 큰 용량 구하기
  /// 용기는 막대의 높이와 사이의 거리로 정의
  /// 용량은 더 낮은 막대의 높이와 두 막대 사이의 거리를 곱한 값
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