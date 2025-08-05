class Solution {
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