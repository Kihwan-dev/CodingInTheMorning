class Solution {
int romanToInt(String s) {
  int getNum(String str) {
    switch (str) {
      case 'I':
        return 1;
      case 'V':
        return 5;
      case 'X':
        return 10;
      case 'L':
        return 50;
      case 'C':
        return 100;
      case 'D':
        return 500;
      case 'M':
        return 1000;
      default:
        return 0;
    }
  }

  if (s.length == 1) return getNum(s);
  int answer = getNum(s[0]);
  for (int i = 1; i < s.length; i++) {
    int current = getNum(s[i]);
    int prev = getNum(s[i - 1]);

    answer += current;
    if (current > prev) {
      answer -= prev;
      answer -= prev;
    }
  }
  return answer;
}
}