class Solution {
  /// 2025.07.08 #1137
  /// n번째 Tribonacci 수 구하기
  /// Tribonacci 수열은 초기 값이 T0 = 0, T1 = 1, T2 = 1로 시작하며,
  /// Tn = T(n-1) + T(n-2) + T(n-3)
  int tribonacci(int n) {
    List<int> list = [0, 1, 1];
    if(n < 3) return list[n];
    for (int i = 3; i < n+1; i++) {
      list.add(list[i-1] + list[i-2] + list[i-3]);
    }
    
    return list.last;
  }
}