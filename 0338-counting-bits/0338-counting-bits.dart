class Solution {
 List<int> countBits(int n) {
  List<int> ans = [];

  int getBin(int num) {
    int cnt = 0;

    while (num != 0) {
      if (num % 2 == 1) cnt++;
      num ~/= 2;
    }

    return cnt;
  }

  for (int i = 0; i < n + 1; i++) {
    ans.add(getBin(i));
  }

  return ans;
}
}