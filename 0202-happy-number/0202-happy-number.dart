class Solution {
  /// # 2025.07.21 #202
  /// ## 해피 넘버
  /// 숫자의 각 자리 숫자를 제곱한 값을 모두 더함
  /// 이 결과를 새로운 숫자로 사용하여 위 과정 반복
  /// 최종 숫자가 1이 되면 이 수샂는 행복한 숫자
  /// 만약 1로 끝나지 않고 계속 순환하게 된다면, 이 숫자는 해옵ㄱ하지 않은 숫자
  bool isHappy(int n) {
    List<int> list = [];

    int getEachDigitSquared(int num) {
      int sum = 0;

      for (int i = 0; i < num.toString().length; i++) {
        sum += pow(int.parse(num.toString()[i]), 2).toInt();
      }

      print(sum);

      if (sum == 1) return sum;
      if (list.contains(sum)) return 0;
      list.add(sum);

      return getEachDigitSquared(sum);
    }

    return getEachDigitSquared(n) == 1;
  }
}