class Solution {
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
    // if (start < end) {
    String temp = list[start];
    list[start] = list[end];
    list[end] = temp;
    start++;
    end--;
    // }
  }

  return list.join("");
}
}