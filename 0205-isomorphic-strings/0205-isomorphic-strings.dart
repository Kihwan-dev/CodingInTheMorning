class Solution {
  /// # 2025.08.18 #205
  /// ## 동형 문자열
  /// 문자열 s, t
  /// 동형인지 확인
  /// 동형 : 하나의 문자열의 문자가 다른 문자열의 문자로 일대일 매핑
  /// 같은 문자는 같은 문자로 매핑
  /// 다른 문자는 다른 문자로 매핑
  /// 문자는 자신에게 매핑될 수 있음
  bool isIsomorphic(String s, String t) {
    /* Map<String, String> map = {};

    for (int i = 0; i < s.length; i++) {
      if (map[s[i]] == null) {
        map[s[i]] = t[i];
      } else {
        if (map[s[i]] != t[i]) {
          return false;
        }
      }
    }
    return map.length == t.split("").toSet().length; */

    Map<String, String> sToT = {};
    Map<String, String> tToS = {};

    for (int i = 0; i < s.length; i++) {
      String sc = s[i];
      String tc = t[i];

      if (sToT.containsKey(sc)) {
        if (sToT[sc] != tc) {
          return false;
        }
      } else {
        sToT[sc] = tc;
      }

      if (tToS.containsKey(tc)) {
        if (tToS[tc] != sc) return false;
      } else {
        tToS[tc] = sc;
      }
    }
    return true;
  }
}