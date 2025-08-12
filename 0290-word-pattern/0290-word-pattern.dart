class Solution {
  /// # 2025.08.12 #290
  /// ## 단어 패턴
  /// 문자열 pattern, s
  /// pattern의 각 문자가 s의 단어에 매핑될 수 있는지 확인
  /// 1 <= pattern.length <= 300
  /// 1 <= s.length <= 3000
  /// ex) pattern : "abba", s = "dog cat cat dog" => return true
  /// ex) pattern : "abba", s = "dog cat cat fish" => return false
  /// ex) pattern : "abba", s = "dog dog dog dog" => return false
  bool wordPattern(String pattern, String s) {
    //
    Map<String, String> map = {};
    final words = s.split(" ");
    if (pattern.length != words.length) return false;
    for (int i = 0; i < pattern.length; i++) {
      //
      if (map.containsKey(pattern[i])) {
        if (map[pattern[i]] != words[i]) {
          return false;
        }
      } else if (map.containsValue(words[i])) {
        return false;
      } else {
        map[pattern[i]] = words[i];
      }
    }
    return true;
  }
}