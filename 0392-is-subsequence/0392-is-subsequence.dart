class Solution {
  /// # 2025.08.06 #392
  /// 부분 수열
  /// 두 개의 문자열 s, t
  /// s가 t의 부분 수열인지 확인하는 함수
  /// 부분 수열 : 일부 문자를 제거하고 나머지 문자의 상대적인 순서를 유지하여
  ///             만들 수 있는 문자열
  bool isSubsequence(String s, String t) {
    if (s.length > t.length) return false;
    if (s.isEmpty) return true;
    if (s.length + t.length < 2) return true;

    int sPoint = 0;
    int tPoint = 0;

    while (sPoint < s.length && tPoint < t.length) {
      //
      while (s[sPoint] != t[tPoint++]) {
        if (tPoint == t.length) return false;
      }
      sPoint++;
      if (sPoint == s.length) return true;
    }
    return false;
  }
}