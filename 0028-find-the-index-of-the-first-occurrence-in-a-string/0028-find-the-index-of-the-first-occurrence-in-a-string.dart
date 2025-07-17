class Solution {
  int strStr(String haystack, String needle) {
    if(haystack.length < needle.length) return -1;
    if(!haystack.contains(needle)) return -1;
    if(haystack == needle) return 0;

    for(int i=0; i<haystack.length; i++) {
      if(haystack[i] == needle[0]) {
        for(int j=0; j<needle.length; j++) {
          if(haystack[i+j] != needle[j]) break;
          if(j == needle.length-1) return i;
        }
      }
    }

    return -1;
  }
}