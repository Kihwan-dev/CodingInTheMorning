class Solution {
  /// # 2025.08.21 #13
  /// ## 로마자에서 정수로
  /// * 문제
  /// 로마 숫자는 7개의 서로 다른 기호로 표현됩니다: I, V, X, L, C, D, M.
  ///
  /// | **기호** | **값**  |
  /// |----------|----------|
  /// | I        | 1        |
  /// | V        | 5        |
  /// | X        | 10       |
  /// | L        | 50       |
  /// | C        | 100      |
  /// | D        | 500      |
  /// | M        | 1000     |
  ///
  /// 예를 들어, 2는 로마 숫자로 II로 쓰이며, 이는 1을 두 번 더한 것입니다.
  /// 12는 XII로 쓰이며, 이는 X + II로 표현됩니다.
  /// 숫자 27은 XXVII로 쓰이며, 이는 XX + V + II입니다.
  ///
  /// 로마 숫자는 일반적으로 왼쪽에서 오른쪽으로 큰 숫자부터 작은 숫자 순서로 작성됩니다.
  /// 하지만 4는 IIII가 아니라 IV로 작성됩니다.
  /// 이는 1이 5 앞에 와서 5에서 1을 빼기 때문에 4가 되기 때문입니다.
  /// 동일한 원칙이 숫자 9에도 적용되며, 이는 IX로 작성됩니다.
  ///
  /// 다음의 6가지 경우에는 뺄셈 원칙이 사용됩니다:
  /// - I는 V(5)와 X(10) 앞에 위치하여 4와 9를 만듭니다.
  /// - X는 L(50)과 C(100) 앞에 위치하여 40과 90을 만듭니다.
  /// - C는 D(500)와 M(1000) 앞에 위치하여 400과 900을 만듭니다.
  ///
  /// 주어진 로마 숫자 문자열 's'를 정수로 변환하세요.
  ///
  /// * 조건
  /// 1. 1 ≤ s.length ≤ 15
  /// 2. s는 "I", "V", "X", "L", "C", "D",
  int romanToInt(String s) {
    int getNum(String str) {
      switch (str) {
        case 'I':
          return 1;
        case 'V':
          return 5;
        case 'X':
          return 10;
        case 'L':
          return 50;
        case 'C':
          return 100;
        case 'D':
          return 500;
        case 'M':
          return 1000;
        default:
          return 0;
      }
    }

    if (s.length == 1) return getNum(s);
    int answer = getNum(s[0]);
    for (int i = 1; i < s.length; i++) {
      int current = getNum(s[i]);
      int prev = getNum(s[i - 1]);

      answer += current;
      if (current > prev) {
        answer -= prev;
        answer -= prev;
      }
    }
    return answer;
  }
}