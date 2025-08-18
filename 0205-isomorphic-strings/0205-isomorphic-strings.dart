class Solution {
bool isIsomorphic(String s, String t) {
  if (s.length != t.length) return false;

  Map<String, String> map = {};

  for (int i = 0; i < s.length; i++) {
    if (map[s[i]] == null) {
      map[s[i]] = t[i];
    } else {
      if (map[s[i]] != t[i]) {
        return false;
      }
    }
  }
  return map.length == t.split("").toSet().length;
}
}