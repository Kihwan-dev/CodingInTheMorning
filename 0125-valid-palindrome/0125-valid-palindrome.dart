class Solution {
  /// # 2025.8.05 #125
  /// ## 유효한 팰린드롬
  /// 주어진 문자열이 팰린드롬인지 확인
  /// 팰린드롬 : 앞에서 읽으나 뒤에서 읽으나 동일한 문자열
  /// 대소문자와 공백 무시, 알파벳과 숫자만 비교
  bool isPalindrome(String s) {
    if (s.length == 1) return true;

    int start = 0;
    int end = s.length - 1;

    final regex = RegExp(r'^[a-zA-Z0-9]+$');

    while (start < end) {
      if (!regex.hasMatch(s[start]) || !regex.hasMatch(s[end])) {
        if (!regex.hasMatch(s[start])) {
          start++;
        }
        if (!regex.hasMatch(s[end])) {
          end--;
        }
        continue;
      }
        if (s[start].toLowerCase() != s[end].toLowerCase()) return false; 
      start++;
      end--;
    }

    return true;
  }
}