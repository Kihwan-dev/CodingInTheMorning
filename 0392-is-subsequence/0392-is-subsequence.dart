class Solution {
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