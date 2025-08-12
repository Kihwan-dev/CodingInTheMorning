class Solution {
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