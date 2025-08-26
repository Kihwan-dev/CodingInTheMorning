class Solution {
  /// # 2025.08.26 #338
  /// ## 비트 개수 구하기
  /// * 문제
  ///   정수 n이 주어졌을 때, 길이가 n + 1인 배열을 반환하세요.
  ///   배열의 각 원소는 index의 이진수 표현에서 1의 개수를 나타냅니다.
  ///   (단, 0 <= i <= n)
  /// * 조건
  ///   0 <= n <= 10^5
  List<int> countBits(int n) {
    List<int> ans = [];

    int getBin(int num) {
      int cnt = 0;

      while (num != 0) {
        if (num % 2 == 1) cnt++;
        num ~/= 2;
      }

      return cnt;
    }

    for (int i = 0; i < n + 1; i++) {
      ans.add(getBin(i));
    }

    return ans;
  }
}