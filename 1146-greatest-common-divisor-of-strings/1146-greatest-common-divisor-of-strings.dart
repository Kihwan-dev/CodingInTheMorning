class Solution {
  /// # 2025.07.18 #1071
  /// ## 문자열의 최대 공약수
  /// - 주어진 두 문자열 str1, str2의 최대 공약수 찾기
  /// - "ABCABC"와 "ABC"는 공통적으로 "ABC"로 나뉠 수 있음
  String gcdOfStrings(String str1, String str2) {
    int longLength;
    int shortLength;
    String longStr;
    String shortStr;

    if(str1.length > str2.length) {
      longLength = str1.length;
      longStr = str1;
      shortLength = str2.length;
      shortStr = str2;
    } else {
      longLength = str2.length;
      longStr = str2;
      shortLength = str1.length;
      shortStr = str1;
    }

    if (!longStr.contains(shortStr)) return "";

    while (shortLength != 0) {
      int n = shortLength;
      shortLength = longLength % shortLength;
      longLength = n;
    }

    String expectedGcdLetters = shortStr.substring(0, longLength);

    while(true) {
      if(!longStr.startsWith(expectedGcdLetters)) break;
      if(longStr == longStr.replaceFirst(expectedGcdLetters, "")) break;
      longStr = longStr.replaceFirst(expectedGcdLetters, "");
    }
    // print(str1);
    if(longStr.isNotEmpty) return "";

    return expectedGcdLetters;
  }
}