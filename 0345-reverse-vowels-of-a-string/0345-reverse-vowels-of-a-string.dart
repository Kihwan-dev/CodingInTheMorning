class Solution {
  /// # 2025.08.11 #345
  /// 문자열의 역모음
  /// 문자열 s에서 모음(a, e, i, o, u)들만 뒤집은 문자열 리턴
  /// 1 <= s.length <= 3 * 10^5
  /// 문자열은 ascii문자로만 이루어져 있음
  /// ex) hello -> e,o -> o,e -> holle
  /// ex) leetcode -> e,e,o,e -> e,o,e,e -> leotcede
  String reverseVowels(String s) {
    int start = 0;
    int end = s.length - 1;

    bool isVowel(String str) {
      if (str == "a" || str == "e" || str == "i" || str == "o" || str == "u") return true;
      if (str == "A" || str == "E" || str == "I" || str == "O" || str == "U") return true;
      return false;
    }

    List<String> list = s.split("");

    while (start < end) {
      while (start < end && !isVowel(s[start])) {
        start++;
        continue;
      }
      while (start < end && !isVowel(s[end])) {
        end--;
        continue;
      }
      String temp = list[start];
      list[start] = list[end];
      list[end] = temp;
      start++;
      end--;
    }

    return list.join("");
  }
}