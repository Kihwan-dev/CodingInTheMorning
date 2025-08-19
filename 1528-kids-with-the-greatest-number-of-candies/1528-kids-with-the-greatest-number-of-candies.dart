class Solution {
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