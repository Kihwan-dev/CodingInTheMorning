class Solution {
int romanToInt(String s) {
  Map<String, int> map = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };
  if (s.length == 1) return map[s]!;
  int answer = 0;
  for (int i = 0; i < s.length - 1; i++) {
    if (map[s[i + 1]]! > map[s[i]]!) {
      answer -= map[s[i]]!;
    } else {
      answer += map[s[i]]!;
    }
  }
  answer += map[s[s.length - 1]]!;
  return answer;
}
}