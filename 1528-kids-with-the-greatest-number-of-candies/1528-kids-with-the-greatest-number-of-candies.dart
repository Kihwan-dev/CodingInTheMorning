class Solution {
  /// # 2025.08.19 #1431
  /// ## 정수 배열(사탕의 개수) candies
  /// 각 아이에게 추가로 줄 수 있는 사탕의 개수 정수 extraCandies
  /// 각 아이가 가진 사탕의 수에 extraCandies를 더했을 때
  /// 그 아이가 가장 많은 사탕을 가진 아이 중 하나가 될 수 있는지 확인
  /// 결과는 bool 배열
  /// 그 아이가 될 수 있다면 true 아니면 false
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    List<bool> answer = [];
    int max = 0;

    for (int i = 0; i < candies.length; i++) {
      max = max > candies[i] ? max : candies[i];
    }

    for (int i = 0; i < candies.length; i++) {
      if (candies[i] >= max - extraCandies) {
        answer.add(true);
      } else {
        answer.add(false);
      }
    }
    return answer;
  }
}