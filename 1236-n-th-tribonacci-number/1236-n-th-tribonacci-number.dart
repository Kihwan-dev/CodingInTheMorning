class Solution {
  int tribonacci(int n) {
    List<int> list = [0, 1, 1];
    if(n < 3) return list[n];
    for (int i = 3; i < n+1; i++) {
      list.add(list[i-1] + list[i-2] + list[i-3]);
    }
    
    return list.last;
  }
}