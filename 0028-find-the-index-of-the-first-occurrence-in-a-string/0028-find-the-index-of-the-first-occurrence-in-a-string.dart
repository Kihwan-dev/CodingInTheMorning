class Solution {
  /// 2025.07.17 #28
  /// 문자열 haystack, needle
  /// needle이 haystack 내에서 처음 나타내는 위치 리턴
  /// 존재하지 않으면 -1 리턴 
  int strStr(String haystack, String needle) {
    if(haystack.length < needle.length) return -1;
    if(!haystack.contains(needle)) return -1;
    if(haystack == needle) return 0;

    for(int i=0; i<haystack.length; i++) {
      //if(haystack[i] == needle[0]) {
        for(int j=0; j<needle.length; j++) {
          if(haystack[i+j] != needle[j]) break;
          if(j == needle.length-1) return i;
        }
      //}
    }

    return -1;
  }
}